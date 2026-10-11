package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class DUP_X2 extends StackInstruction {
    public DUP_X2() {
        super((short) 91);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackInstruction(this);
        visitor.visitDUP_X2(this);
    }
}
