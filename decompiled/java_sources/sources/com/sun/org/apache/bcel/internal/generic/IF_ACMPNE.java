package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IF_ACMPNE extends IfInstruction {
    public IF_ACMPNE() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIF_ACMPNE(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IF_ACMPEQ(this.target);
    }

    public IF_ACMPNE(InstructionHandle instructionHandle) {
        super((short) 166, instructionHandle);
    }
}
