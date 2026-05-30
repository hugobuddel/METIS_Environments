#!/usr/bin/env bash
export AWETARGET=metiswise

# TODO: Move to src directory?
#export PYTHONPATH="${HOME}/metiswise:${PYTHONPATH}"

"${HOME}/scripts/print_jupyter_url.sh" &

source "${HOME}/repos/MetisWISE/toolbox/become_normal_user.sh"

jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
