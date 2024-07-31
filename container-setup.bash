#   `source` this file, e.g., `. /mnt/container-setup.bash`

#   Container has pip 22.0.2, so no --root-user-action=ignore option.
pip -q install -r /opt/proof-generation/requirements.txt
export PYTHONPATH=/opt/proof-generation
psym() { python3 -m scripts.prove_symbolic "$@"; }


#   Personal preferences here, e.g.
alias lf='ls -CF'
set -o vi
