package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IF_ICMPLE extends IfInstruction {
    public IF_ICMPLE() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIF_ICMPLE(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IF_ICMPGT(this.target);
    }

    public IF_ICMPLE(InstructionHandle instructionHandle) {
        super((short) 164, instructionHandle);
    }
}
