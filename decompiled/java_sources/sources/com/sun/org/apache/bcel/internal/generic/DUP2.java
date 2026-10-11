package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class DUP2 extends StackInstruction implements PushInstruction {
    public DUP2() {
        super((short) 92);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackProducer(this);
        visitor.visitPushInstruction(this);
        visitor.visitStackInstruction(this);
        visitor.visitDUP2(this);
    }
}
