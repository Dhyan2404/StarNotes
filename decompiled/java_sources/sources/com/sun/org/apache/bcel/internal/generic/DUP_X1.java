package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class DUP_X1 extends StackInstruction {
    public DUP_X1() {
        super((short) 90);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackInstruction(this);
        visitor.visitDUP_X1(this);
    }
}
