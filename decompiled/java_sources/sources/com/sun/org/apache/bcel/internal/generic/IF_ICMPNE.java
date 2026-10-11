package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IF_ICMPNE extends IfInstruction {
    public IF_ICMPNE() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIF_ICMPNE(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IF_ICMPEQ(this.target);
    }

    public IF_ICMPNE(InstructionHandle instructionHandle) {
        super((short) 160, instructionHandle);
    }
}
