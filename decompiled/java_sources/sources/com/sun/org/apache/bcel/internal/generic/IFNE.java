package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IFNE extends IfInstruction {
    public IFNE() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIFNE(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IFEQ(this.target);
    }

    public IFNE(InstructionHandle instructionHandle) {
        super((short) 154, instructionHandle);
    }
}
