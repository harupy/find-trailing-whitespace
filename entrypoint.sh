#!/usr/bin/env bash

tw_lines=""  # Lines containing trailing whitespaces.

git remote -v

# Iterate through changed files.
for file in $(git diff --name-only origin/master | sed -e 's/^/.\//')
do
  lines=$(egrep -rnIH " +$" $file | cut -f-2 -d ":")
  if [ ! -z "$lines" ]; then
    tw_lines+=$([[ -z "$tw_lines" ]] && echo "$lines" || echo $'\n'"$lines")
  fi
done

exit_code=0

# If tw_lines is not empty, change the exit code to 1 to fail the CI.
if [ ! -z "$tw_lines" ]; then
  echo -e "\n***** Lines containing trailing whitespace *****\n"
  echo -e "${tw_lines[@]}"
  exit_code=1
fi

exit $exit_code
