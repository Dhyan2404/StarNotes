package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public abstract class LoadInstruction extends LocalVariableInstruction implements PushInstruction {
    public LoadInstruction(short s, short s2) {
        super(s, s2);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackProducer(this);
        visitor.visitPushInstruction(this);
        visitor.visitTypedInstruction(this);
        visitor.visitLocalVariableInstruction(this);
        visitor.visitLoadInstruction(this);
    }

    public LoadInstruction(short s, short s2, int i) {
        super(s, s2, i);
    }
}
