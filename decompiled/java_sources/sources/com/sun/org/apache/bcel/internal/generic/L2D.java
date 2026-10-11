package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class L2D extends ConversionInstruction {
    public L2D() {
        super((short) 138);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitConversionInstruction(this);
        visitor.visitL2D(this);
    }
}
