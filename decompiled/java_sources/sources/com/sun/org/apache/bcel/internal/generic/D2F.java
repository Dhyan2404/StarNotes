package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class D2F extends ConversionInstruction {
    public D2F() {
        super((short) 144);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitConversionInstruction(this);
        visitor.visitD2F(this);
    }
}
