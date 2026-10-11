package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class LSHR extends ArithmeticInstruction {
    public LSHR() {
        super((short) 123);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitArithmeticInstruction(this);
        visitor.visitLSHR(this);
    }
}
