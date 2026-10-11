package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class FRETURN extends ReturnInstruction {
    public FRETURN() {
        super((short) 174);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitExceptionThrower(this);
        visitor.visitTypedInstruction(this);
        visitor.visitStackConsumer(this);
        visitor.visitReturnInstruction(this);
        visitor.visitFRETURN(this);
    }
}
