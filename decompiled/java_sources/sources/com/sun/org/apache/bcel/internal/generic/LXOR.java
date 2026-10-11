package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class LXOR extends ArithmeticInstruction {
    public LXOR() {
        super((short) 131);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitArithmeticInstruction(this);
        visitor.visitLXOR(this);
    }
}
