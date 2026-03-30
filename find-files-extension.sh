find . -iregex '.*\.\(txt\)' -printf "%f\n" | cut -d. -f1
