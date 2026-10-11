package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class ILOAD extends LoadInstruction {
    public ILOAD() {
        super((short) 21, (short) 26);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.LoadInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        super.accept(visitor);
        visitor.visitILOAD(this);
    }

    public ILOAD(int i) {
        super((short) 21, (short) 26, i);
    }
}
