package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IFNULL extends IfInstruction {
    public IFNULL() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIFNULL(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IFNONNULL(this.target);
    }

    public IFNULL(InstructionHandle instructionHandle) {
        super((short) 198, instructionHandle);
    }
}
