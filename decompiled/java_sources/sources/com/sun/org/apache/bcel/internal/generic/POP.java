package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class POP extends StackInstruction implements PopInstruction {
    public POP() {
        super((short) 87);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitPopInstruction(this);
        visitor.visitStackInstruction(this);
        visitor.visitPOP(this);
    }
}
