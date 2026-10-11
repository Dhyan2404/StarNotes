package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IFLT extends IfInstruction {
    public IFLT() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIFLT(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IFGE(this.target);
    }

    public IFLT(InstructionHandle instructionHandle) {
        super((short) 155, instructionHandle);
    }
}
