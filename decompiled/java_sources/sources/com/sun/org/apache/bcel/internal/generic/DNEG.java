package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class DNEG extends ArithmeticInstruction {
    public DNEG() {
        super((short) 119);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitArithmeticInstruction(this);
        visitor.visitDNEG(this);
    }
}
