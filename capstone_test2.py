from capstone import *

# Initialize Capstone disassembler for ARM64
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)

# Example code to disassemble
code = b'\x00\x00\x80\xd2'

for i in md.disasm(code, 0x1000):
    print("0x%x:\t%s\t%s" % (i.address, i.mnemonic, i.op_str))

