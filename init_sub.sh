git submodule update --init --remote --merge
repoPath=$(git rev-parse --show-toplevel)
git submodule foreach --recursive 'branchName=$(git config -f $repoPath/.gitmodules submodule.$name.branch);git checkout $branchName'