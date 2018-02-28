#!/bin/sh

set -e

if [ ! -f "build/env.sh" ]; then
    echo "$0 must be run from the root of the repository."
    exit 2
fi

# Create fake Go workspace if it doesn't exist yet.
workspace="$PWD/build/_workspace"
root="$PWD"
ethdir="$workspace/src/github.com/conponone"
if [ ! -L "$ethdir/go-conponone" ]; then
    mkdir -p "$ethdir"
    cd "$ethdir"
    ln -s ../../../../../. go-conponone
    cd "$root"
fi

# Set up the environment to use the workspace.
GOPATH="$workspace"
export GOPATH

# Run the command inside the workspace.
cd "$ethdir/go-conponone"
PWD="$ethdir/go-conponone"

# Launch the arguments with the configured environment.
exec "$@"
