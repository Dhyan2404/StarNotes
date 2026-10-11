package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class CALOAD extends ArrayInstruction implements StackProducer {
    public CALOAD() {
        super((short) 52);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackProducer(this);
        visitor.visitExceptionThrower(this);
        visitor.visitTypedInstruction(this);
        visitor.visitArrayInstruction(this);
        visitor.visitCALOAD(this);
    }
}
