curl  -s https://learn.zone01oujda.ma/assets/superhero/all.json | jq '.[] | select(.id == 1)' | grep -E '^\s+"name"|^\s+"power"'
