package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class I2B extends ConversionInstruction {
    public I2B() {
        super((short) 145);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitConversionInstruction(this);
        visitor.visitI2B(this);
    }
}
