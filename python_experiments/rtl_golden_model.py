from modulate_if import *
from ModulationParams import *

class MSKGoldenModel:

    def __init__(self, params):
        self.params = params
        self.phase = 0

        # Input synchronizers
        self.in_meta = 0
        self.in_sync = 0
        self.enable_meta = 0
        self.enable_sync = 0

        # Output register (models T_r/B_r, i.e. the registered cos_out)
        self.out_reg = 0

        self.P = params.k + params.j
        self.phase_mask = (1 << self.P) - 1

        self.lut = cosine_lut(params)

    def reset(self):
        self.phase = 0

        self.in_meta = 0
        self.in_sync = 0
        self.enable_meta = 0
        self.enable_sync = 0

        # T_r and B_r reset to all zeros in the RTL
        self.out_reg = 0

    def lut_output(self):
        """Combinational LUT output for the current phase (cos_out in RTL)."""
        # Same as phase[k+j-1:j] in Verilog
        address = self.phase >> self.params.j
        address &= (1 << self.params.k) - 1

        return int(self.lut[address])

    def get_output(self):
        """Registered output, i.e. what {T, B} represents at the DAC."""
        return self.out_reg

    def tick(self, enable, sample, rst_n):
        if not rst_n:
            self.reset()
            return

        # Save old register values (nonblocking assignment behavior)
        old_in_meta = self.in_meta
        old_enable_meta = self.enable_meta
        old_enable_sync = self.enable_sync

        # Output register captures the LUT output of the OLD phase
        # (must be computed before the phase update below)
        new_out_reg = self.lut_output()

        # Update phase using synchronized inputs
        if old_enable_sync:
            increment = sample_to_phase(self.in_sync, self.params)

            # P-bit phase accumulator wraps around
            self.phase = (self.phase + increment) & self.phase_mask

        # Update input synchronizers
        self.in_meta = int(sample)
        self.in_sync = old_in_meta

        self.enable_meta = int(enable)
        self.enable_sync = old_enable_meta

        # Commit output register
        self.out_reg = new_out_reg