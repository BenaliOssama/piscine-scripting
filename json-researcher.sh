curl -s  https://learn.zone01oujda.ma/assets/superhero/all.json  | jq '.[0]' | grep -E "name|power\"" 
