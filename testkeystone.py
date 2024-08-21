from keystone import *

ks = Ks(KS_ARCH_X86, KS_MODE_32)
encoding, count = ks.asm("mov eax, 1")
print("Encoded: %s" % encoding)
# ARM64 assembly cod
CODE = """
    mov x0, #1
    mov x1, #2
    add x2, x0, x1
"""

# Initialize Keystone engine for ARM64
ks = Ks(KS_ARCH_ARM64, KS_MODE_LITTLE_ENDIAN)

# Assemble the code
encoding, count = ks.asm(CODE)

# Print the machine code
print("Encoded machine code:")
print(" ".join("{:02x}".format(byte) for byte in encoding))

# Print the number of instructions assembled
print("\nNumber of instructions: %u" % count)
