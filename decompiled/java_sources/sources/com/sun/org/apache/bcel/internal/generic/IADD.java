package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IADD extends ArithmeticInstruction {
    public IADD() {
        super((short) 96);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitArithmeticInstruction(this);
        visitor.visitIADD(this);
    }
}
