#!/usr/bin/env bash
# For some reason .bashrc is skipped.
eval "$(conda shell.bash hook)"
# TODO: use an actual environment
conda activate base
export AWETARGET=metiswise
# TODO: Move to src directory?
export PYTHONPATH="${HOME}/metiswise:${PYTHONPATH}"
pip install jupyter  # TODO: Remove because Containerfile has it.
jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
