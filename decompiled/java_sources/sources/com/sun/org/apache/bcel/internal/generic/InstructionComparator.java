package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public interface InstructionComparator {
    public static final InstructionComparator DEFAULT = new InstructionComparator() { // from class: com.sun.org.apache.bcel.internal.generic.InstructionComparator.1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.sun.org.apache.bcel.internal.generic.InstructionComparator
        public boolean equals(Instruction instruction, Instruction instruction2) {
            if (instruction.opcode == instruction2.opcode) {
                if (!(instruction instanceof Select)) {
                    return instruction instanceof BranchInstruction ? ((BranchInstruction) instruction).target == ((BranchInstruction) instruction2).target : instruction instanceof ConstantPushInstruction ? ((ConstantPushInstruction) instruction).getValue().equals(((ConstantPushInstruction) instruction2).getValue()) : instruction instanceof IndexedInstruction ? ((IndexedInstruction) instruction).getIndex() == ((IndexedInstruction) instruction2).getIndex() : !(instruction instanceof NEWARRAY) || ((NEWARRAY) instruction).getTypecode() == ((NEWARRAY) instruction2).getTypecode();
                }
                InstructionHandle[] targets = ((Select) instruction).getTargets();
                InstructionHandle[] targets2 = ((Select) instruction2).getTargets();
                if (targets.length == targets2.length) {
                    for (int i = 0; i < targets.length; i++) {
                        if (targets[i] != targets2[i]) {
                            return false;
                        }
                    }
                    return true;
                }
            }
            return false;
        }
    };

    boolean equals(Instruction instruction, Instruction instruction2);
}
