package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IFEQ extends IfInstruction {
    public IFEQ() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIFEQ(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IFNE(this.target);
    }

    public IFEQ(InstructionHandle instructionHandle) {
        super((short) 153, instructionHandle);
    }
}
