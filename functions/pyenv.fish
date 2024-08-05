function pyenv -d "create venv"
    python3 -m venv .venv
    source .venv/bin/activate.fish
    if test -e "requirements.txt"
        pip install -r requirements.txt
    end
end

function pyrun -d "run python script in venv"
    if test -n "$VIRTUAL_ENV"
        deactivate
    end
    set pydir (dirname $argv[1])
    if test -e "$pydir/.venv/"
        source $pydir/.venv/bin/activate.fish
        python3 $argv
        deactivate
    else
        echo "no virtual_env found"
    end
end

function auto_activate_venv --on-variable PWD -d "auto-activate venv if exists on change-directory"
    set REPO_ROOT (git rev-parse --show-toplevel 2>/dev/null)
    if test -z "$REPO_ROOT"; and test -n "$VIRTUAL_ENV"
        deactivate
    end
    if [ "$VIRTUAL_ENV" = "$REPO_ROOT/.venv" ]
        return
    end
    if [ -d "$REPO_ROOT/.venv" ]
        source "$REPO_ROOT/.venv/bin/activate.fish" &>/dev/null
    end
end
