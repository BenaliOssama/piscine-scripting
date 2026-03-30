find . -iregex '.*\.\(txt\)' | cut -d '/' -f2 | cut -d. -f1
