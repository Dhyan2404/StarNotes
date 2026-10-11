package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class SASTORE extends ArrayInstruction implements StackConsumer {
    public SASTORE() {
        super((short) 86);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackConsumer(this);
        visitor.visitExceptionThrower(this);
        visitor.visitTypedInstruction(this);
        visitor.visitArrayInstruction(this);
        visitor.visitSASTORE(this);
    }
}
