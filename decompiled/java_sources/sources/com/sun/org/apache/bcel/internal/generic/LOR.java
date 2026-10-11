package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class LOR extends ArithmeticInstruction {
    public LOR() {
        super((short) 129);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitArithmeticInstruction(this);
        visitor.visitLOR(this);
    }
}
