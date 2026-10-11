package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IF_ACMPEQ extends IfInstruction {
    public IF_ACMPEQ() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIF_ACMPEQ(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IF_ACMPNE(this.target);
    }

    public IF_ACMPEQ(InstructionHandle instructionHandle) {
        super((short) 165, instructionHandle);
    }
}
