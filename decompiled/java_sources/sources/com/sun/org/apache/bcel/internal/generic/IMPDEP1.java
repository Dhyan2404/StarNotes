package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.Constants;

/* loaded from: classes10.dex */
public class IMPDEP1 extends Instruction {
    public IMPDEP1() {
        super(Constants.IMPDEP1, (short) 1);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitIMPDEP1(this);
    }
}
