package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class BREAKPOINT extends Instruction {
    public BREAKPOINT() {
        super((short) 202, (short) 1);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitBREAKPOINT(this);
    }
}
