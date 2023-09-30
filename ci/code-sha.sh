#!/usr/bin/env bash
set -e

# find the dir two levels up from here, home of all the repositories
COMPUTED_ROOT="$(readlink -e "$(dirname "$0")/../../")"
# NTECH_ROOT should be the same, but if available use it so user can do their own thing.
NTECH_ROOT=${NTECH_ROOT:-$COMPUTED_ROOT}

MASTERFILES_SHA=$(git -C "${NTECH_ROOT}/masterfiles" log --pretty='format:%h' -1 -- .)
echo "$MASTERFILES_SHA"
