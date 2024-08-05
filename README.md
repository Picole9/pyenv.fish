# pyenv.fish
helper-functions for python virtual environments

## features

### pyenv
creates a new virtual environment (named to `.venv`) in the current directory and installs requirements if a `requirements.txt` exists

### pyrun
runs a script in the virtual environment of the script-path (.venv and script in the same directory)

### auto_activate_venv
auto activates a virtual environment on pwd-change, if pwd is in a git-repository and .venv exists
