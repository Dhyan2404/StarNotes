package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IFNONNULL extends IfInstruction {
    public IFNONNULL() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIFNONNULL(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IFNULL(this.target);
    }

    public IFNONNULL(InstructionHandle instructionHandle) {
        super((short) 199, instructionHandle);
    }
}
