import capstone
from capstone import *

# Initialize Capstone disassembler for ARM64
md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)

# Example code to disassemble
code = b'\x00\x00\x80\xd2'

for i in md.disasm(code, 0x1000):
    print("0x%x:\t%s\t%s" % (i.address, i.mnemonic, i.op_str))


# ARM64 machine code (in bytes)
#  CODE2 = b"\x00\x80\x00\xd4"

# Create a Capstone disassembler for ARM64
#  md2 = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)

# Disassemble the code and print the results
#  for instruction in md2.disasm(CODE2, 0x1000):
#      print("0x%x:\t%s\t%s" % (instruction.address, instruction.mnemonic, instruction.op_str))

