package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class ISHL extends ArithmeticInstruction {
    public ISHL() {
        super((short) 120);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitArithmeticInstruction(this);
        visitor.visitISHL(this);
    }
}
