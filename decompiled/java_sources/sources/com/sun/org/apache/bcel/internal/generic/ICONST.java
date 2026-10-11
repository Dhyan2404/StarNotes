package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class ICONST extends Instruction implements ConstantPushInstruction, TypedInstruction {
    private int value;

    public ICONST() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitPushInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitTypedInstruction(this);
        visitor.visitConstantPushInstruction(this);
        visitor.visitICONST(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.TypedInstruction
    public Type getType(ConstantPoolGen constantPoolGen) {
        return Type.INT;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.ConstantPushInstruction
    public Number getValue() {
        return new Integer(this.value);
    }

    public ICONST(int i) {
        super((short) 3, (short) 1);
        if (i >= -1 && i <= 5) {
            this.opcode = (short) (i + 3);
            this.value = i;
        } else {
            throw new ClassGenException("ICONST can be used only for value between -1 and 5: " + i);
        }
    }
}
