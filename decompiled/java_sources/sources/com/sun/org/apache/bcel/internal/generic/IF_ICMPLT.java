package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IF_ICMPLT extends IfInstruction {
    public IF_ICMPLT() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIF_ICMPLT(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IF_ICMPGE(this.target);
    }

    public IF_ICMPLT(InstructionHandle instructionHandle) {
        super((short) 161, instructionHandle);
    }
}
