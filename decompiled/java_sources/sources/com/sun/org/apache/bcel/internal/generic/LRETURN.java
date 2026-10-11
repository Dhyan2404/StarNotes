package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class LRETURN extends ReturnInstruction {
    public LRETURN() {
        super((short) 173);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitExceptionThrower(this);
        visitor.visitTypedInstruction(this);
        visitor.visitStackConsumer(this);
        visitor.visitReturnInstruction(this);
        visitor.visitLRETURN(this);
    }
}
