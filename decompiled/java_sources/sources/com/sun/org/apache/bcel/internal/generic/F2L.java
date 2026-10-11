package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class F2L extends ConversionInstruction {
    public F2L() {
        super((short) 140);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitConversionInstruction(this);
        visitor.visitF2L(this);
    }
}
