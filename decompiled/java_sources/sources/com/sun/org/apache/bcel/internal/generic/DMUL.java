package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class DMUL extends ArithmeticInstruction {
    public DMUL() {
        super((short) 107);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitArithmeticInstruction(this);
        visitor.visitDMUL(this);
    }
}
