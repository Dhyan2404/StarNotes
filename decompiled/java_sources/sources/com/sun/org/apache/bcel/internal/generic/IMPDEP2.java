package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IMPDEP2 extends Instruction {
    public IMPDEP2() {
        super((short) 255, (short) 1);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitIMPDEP2(this);
    }
}
