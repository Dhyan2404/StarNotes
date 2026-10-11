package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class IRETURN extends ReturnInstruction {
    public IRETURN() {
        super((short) 172);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitExceptionThrower(this);
        visitor.visitTypedInstruction(this);
        visitor.visitStackConsumer(this);
        visitor.visitReturnInstruction(this);
        visitor.visitIRETURN(this);
    }
}
