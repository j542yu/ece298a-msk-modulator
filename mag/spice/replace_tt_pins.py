
import argparse
import re
from pathlib import Path

# TinyTapeout pin mappings
PIN_MAP = {
    "ui_in[0]": "in",
    "ui_in[1]": "enable",
    "uo_out[4:0]": "B[4:0]",
    "uo_out[7:5]": "T[2:0]",
    "uio_out[3:0]": "T[6:3]",
}


def expand_mapping(pin_map):
    """Expand bus mappings into individual bit mappings."""

    expanded = {}

    for old, new in pin_map.items():

        old_bus = re.fullmatch(r"(\w+)\[(\d+):(\d+)\]", old)
        new_bus = re.fullmatch(r"(\w+)\[(\d+):(\d+)\]", new)

        if old_bus and new_bus:
            old_name, old_msb, old_lsb = old_bus.groups()
            new_name, new_msb, new_lsb = new_bus.groups()

            old_msb, old_lsb = int(old_msb), int(old_lsb)
            new_msb, new_lsb = int(new_msb), int(new_lsb)

            old_bits = list(range(old_msb, old_lsb - 1, -1))
            new_bits = list(range(new_msb, new_lsb - 1, -1))

            if len(old_bits) != len(new_bits):
                raise ValueError(
                    f"Bus width mismatch: {old} -> {new}"
                )

            for old_bit, new_bit in zip(old_bits, new_bits):
                expanded[f"{old_name}[{old_bit}]"] = (
                    f"{new_name}[{new_bit}]"
                )

        elif old_bus or new_bus:
            raise ValueError(
                f"Invalid bus mapping: {old} -> {new}"
            )

        else:
            expanded[old] = new

    return expanded


def replace_pins(input_file, output_file):
    text = Path(input_file).read_text()

    pin_map = expand_mapping(PIN_MAP)

    print("Pin replacements:")

    for old, new in pin_map.items():
        # Match complete pin names, avoiding partial replacements.
        pattern = (
            r"(?<![A-Za-z0-9_])"
            + re.escape(old)
            + r"(?![A-Za-z0-9_])"
        )

        text, count = re.subn(pattern, lambda _: new, text)

        print(f"  {old} -> {new} ({count} occurrence(s))")

    Path(output_file).write_text(text)

    print(f"\nOutput written to: {output_file}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Replace TinyTapeout pin names in a SPICE file."
    )

    parser.add_argument("input", help="Input SPICE file")
    parser.add_argument(
        "-o", "--output",
        help="Output file (default: overwrite input)"
    )

    args = parser.parse_args()

    input_path = Path(args.input)
    output_path = Path(args.output) if args.output else input_path

    replace_pins(input_path, output_path)

