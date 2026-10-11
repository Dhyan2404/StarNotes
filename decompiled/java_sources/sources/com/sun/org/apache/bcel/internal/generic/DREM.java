package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class DREM extends ArithmeticInstruction {
    public DREM() {
        super((short) 115);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitArithmeticInstruction(this);
        visitor.visitDREM(this);
    }
}
