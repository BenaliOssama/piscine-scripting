ls -l | awk 'NR % 2 == 0'

# NR in awk is the current line number. 
# NR % 2 == 0 keeps only even-numbered lines
# which skips the first line (line 1 is odd),
# then keeps line 2, skips 3, keeps 4, etc.
