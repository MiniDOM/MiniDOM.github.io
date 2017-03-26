#!/usr/bin/env bash

set -euo pipefail

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
repo_root="$( cd "$script_dir" && cd .. && pwd )"
project_root="$( cd "$script_dir" && cd ../../MiniDOM && pwd )"
output_dir="$repo_root/Documentation"

cd "$project_root"
jazzy \
    --clean \
    --author "MiniDOM" \
    --author_url "https://minidom.github.io" \
    --github_url "https://github.com/MiniDOM/MiniDOM" \
    --root-url "https://minidom.github.io" \
    --module "MiniDOM" \
    --output "$output_dir"

