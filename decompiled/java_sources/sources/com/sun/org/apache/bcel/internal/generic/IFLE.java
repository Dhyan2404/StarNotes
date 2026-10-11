package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IFLE extends IfInstruction {
    public IFLE() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIFLE(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IFGT(this.target);
    }

    public IFLE(InstructionHandle instructionHandle) {
        super((short) 158, instructionHandle);
    }
}
