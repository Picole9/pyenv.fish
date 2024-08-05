# pyenv.fish
helper-functions for python virtual environments

## requirements
* fish
* git
* python
* python-virtualenv (arch) or python3-venv (debian)
* optional: fisher

## installation
`fisher install Picole9/pyenv.fish`

## features

### pyenv
creates a new virtual environment (named to `.venv`) in the current directory and installs requirements if a `requirements.txt` exists

### pyrun
runs a script in the virtual environment of the script-path (.venv and script in the same directory)

### auto_activate_venv
auto activates a virtual environment on pwd-change, if pwd is in a git-repository and .venv exists
