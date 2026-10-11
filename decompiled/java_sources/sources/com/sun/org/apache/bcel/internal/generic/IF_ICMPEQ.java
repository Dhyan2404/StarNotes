package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IF_ICMPEQ extends IfInstruction {
    public IF_ICMPEQ() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitBranchInstruction(this);
        visitor.visitIfInstruction(this);
        visitor.visitIF_ICMPEQ(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.IfInstruction
    public IfInstruction negate() {
        return new IF_ICMPNE(this.target);
    }

    public IF_ICMPEQ(InstructionHandle instructionHandle) {
        super((short) 159, instructionHandle);
    }
}
