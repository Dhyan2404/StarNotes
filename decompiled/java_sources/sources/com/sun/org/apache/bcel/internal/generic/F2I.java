package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class F2I extends ConversionInstruction {
    public F2I() {
        super((short) 139);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitConversionInstruction(this);
        visitor.visitF2I(this);
    }
}
