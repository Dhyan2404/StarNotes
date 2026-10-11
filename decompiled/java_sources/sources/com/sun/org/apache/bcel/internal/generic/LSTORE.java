package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class LSTORE extends StoreInstruction {
    public LSTORE() {
        super((short) 55, (short) 63);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.StoreInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        super.accept(visitor);
        visitor.visitLSTORE(this);
    }

    public LSTORE(int i) {
        super((short) 55, (short) 63, i);
    }
}
