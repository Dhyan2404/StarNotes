package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class F2D extends ConversionInstruction {
    public F2D() {
        super((short) 141);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitConversionInstruction(this);
        visitor.visitF2D(this);
    }
}
