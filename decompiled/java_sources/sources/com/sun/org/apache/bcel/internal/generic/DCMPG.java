package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class DCMPG extends Instruction implements TypedInstruction, StackProducer, StackConsumer {
    public DCMPG() {
        super((short) 152, (short) 1);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitTypedInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitStackConsumer(this);
        visitor.visitDCMPG(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.TypedInstruction
    public Type getType(ConstantPoolGen constantPoolGen) {
        return Type.DOUBLE;
    }
}
