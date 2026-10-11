package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class DUP2_X2 extends StackInstruction {
    public DUP2_X2() {
        super((short) 94);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackInstruction(this);
        visitor.visitDUP2_X2(this);
    }
}
