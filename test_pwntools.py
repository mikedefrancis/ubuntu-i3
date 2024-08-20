from pwn import *

# Example: Generate a cyclic pattern to find the offset in a buffer overflow
pattern = cyclic(100)
print(pattern)
