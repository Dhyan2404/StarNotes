package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class LCONST extends Instruction implements ConstantPushInstruction, TypedInstruction {
    private long value;

    public LCONST() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitPushInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitTypedInstruction(this);
        visitor.visitConstantPushInstruction(this);
        visitor.visitLCONST(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.TypedInstruction
    public Type getType(ConstantPoolGen constantPoolGen) {
        return Type.LONG;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.ConstantPushInstruction
    public Number getValue() {
        return new Long(this.value);
    }

    public LCONST(long j) {
        super((short) 9, (short) 1);
        if (j == 0) {
            this.opcode = (short) 9;
        } else if (j == 1) {
            this.opcode = (short) 10;
        } else {
            throw new ClassGenException("LCONST can be used only for 0 and 1: " + j);
        }
        this.value = j;
    }
}
