package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class ISTORE extends StoreInstruction {
    public ISTORE() {
        super((short) 54, (short) 59);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.StoreInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        super.accept(visitor);
        visitor.visitISTORE(this);
    }

    public ISTORE(int i) {
        super((short) 54, (short) 59, i);
    }
}
