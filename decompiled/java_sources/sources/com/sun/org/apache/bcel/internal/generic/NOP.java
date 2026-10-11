package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class NOP extends Instruction {
    public NOP() {
        super((short) 0, (short) 1);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitNOP(this);
    }
}
