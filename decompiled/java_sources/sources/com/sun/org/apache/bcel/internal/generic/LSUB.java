package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class LSUB extends ArithmeticInstruction {
    public LSUB() {
        super((short) 101);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitArithmeticInstruction(this);
        visitor.visitLSUB(this);
    }
}
