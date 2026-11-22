
SHELL := /bin/bash

.PHONY: all setup harden warnings copy clean gl-test

all: setup generate_def harden warnings copy gl-test

harden-and-gl-test: setup generate_def harden warnings gl-test

# Activate the virtual environment and check PDK variables
setup:
	@source venv/bin/activate && \
	echo "PDK_ROOT=$$PDK_ROOT" && \
	echo "PDK=$$PDK" && \
	if [[ -z "$$PDK_ROOT" || -z "$$PDK" ]]; then \
		echo "ERROR: PDK_ROOT and PDK must both be set."; \
		exit 1; \
	fi && \
	export LIBRELANE_TAG=3.0.14 && \
	pip install -r requirements.txt && \
	pip install librelane==$$LIBRELANE_TAG

generate_def:
	@source venv/bin/activate && \
	cd tech/$$PDK/def && \
	python3 generate_def.py

SUB_BLOCK ?= tt_um_modulator
TT_ARGS    = --pdk "$$PDK" --sub-block $(SUB_BLOCK)

harden-config:
	@source venv/bin/activate && cd .. && ./tt/tt_tool.py $(TT_ARGS) --create-user-config

harden: setup harden-config
	@source venv/bin/activate && cd .. && ./tt/tt_tool.py $(TT_ARGS) --harden

print-warnings:
	@source venv/bin/activate && cd .. && ./tt/tt_tool.py $(TT_ARGS) --print-warnings

# Copy final layout outputs
copy:
	@mkdir -p ../mag ../gds ../lef ../verilog/gl
	@cp -av ../runs/wokwi/final/mag/* ../mag/
	@cp -av ../runs/wokwi/final/gds/* ../gds/
	@cp -av ../runs/wokwi/final/klayout_gds/* ../gds/
	@cp -av ../runs/wokwi/final/mag_gds/* ../gds/
	@cp -av ../runs/wokwi/final/lef/* ../lef/
	@cp -av ../runs/wokwi/final/pnl/tt_um_modulator.pnl.v ../verilog/gl/tt_um_modulator.pnl.v

gl-test:
	@source venv/bin/activate && \
	test -f ../runs/wokwi/final/pnl/tt_um_modulator.pnl.v || { echo "hardened netlist missing"; exit 1; } && \
	cp -av ../runs/wokwi/final/pnl/tt_um_modulator.pnl.v ../verilog/test/gate_level_netlist.v && \
	cd ../verilog/test && \
	source venv/bin/activate && \
	$(MAKE) -B GATES=yes
clean:
	rm -rf ../mag/* ../gds/* ../lef/*
