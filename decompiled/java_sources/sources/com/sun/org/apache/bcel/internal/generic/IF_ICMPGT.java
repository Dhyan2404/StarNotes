package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IF_ICMPGT extends IfInstruction {
    public IF_ICMPGT() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIF_ICMPGT(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IF_ICMPLE(this.target);
    }

    public IF_ICMPGT(InstructionHandle instructionHandle) {
        super((short) 163, instructionHandle);
    }
}
