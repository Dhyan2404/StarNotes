package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IFGT extends IfInstruction {
    public IFGT() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIFGT(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IFLE(this.target);
    }

    public IFGT(InstructionHandle instructionHandle) {
        super((short) 157, instructionHandle);
    }
}
