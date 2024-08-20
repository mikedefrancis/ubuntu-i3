from keystone import *

ks = Ks(KS_ARCH_X86, KS_MODE_32)
encoding, count = ks.asm("mov eax, 1")
print("Encoded: %s" % encoding)
