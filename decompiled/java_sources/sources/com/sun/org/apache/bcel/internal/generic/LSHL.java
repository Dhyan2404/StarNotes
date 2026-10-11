package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class LSHL extends ArithmeticInstruction {
    public LSHL() {
        super((short) 121);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitArithmeticInstruction(this);
        visitor.visitLSHL(this);
    }
}
