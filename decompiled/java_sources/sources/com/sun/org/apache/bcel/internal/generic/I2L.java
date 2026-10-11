package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class I2L extends ConversionInstruction {
    public I2L() {
        super((short) 133);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitConversionInstruction(this);
        visitor.visitI2L(this);
    }
}
