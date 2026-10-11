package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IFGE extends IfInstruction {
    public IFGE() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIFGE(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IFLT(this.target);
    }

    public IFGE(InstructionHandle instructionHandle) {
        super((short) 156, instructionHandle);
    }
}
