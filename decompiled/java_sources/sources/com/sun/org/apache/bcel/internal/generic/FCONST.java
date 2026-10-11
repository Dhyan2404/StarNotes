package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class FCONST extends Instruction implements ConstantPushInstruction, TypedInstruction {
    private float value;

    public FCONST() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitPushInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitTypedInstruction(this);
        visitor.visitConstantPushInstruction(this);
        visitor.visitFCONST(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.TypedInstruction
    public Type getType(ConstantPoolGen constantPoolGen) {
        return Type.FLOAT;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.ConstantPushInstruction
    public Number getValue() {
        return new Float(this.value);
    }

    public FCONST(float f) {
        super((short) 11, (short) 1);
        double d = f;
        if (d == 0.0d) {
            this.opcode = (short) 11;
        } else if (d == 1.0d) {
            this.opcode = (short) 12;
        } else if (d == 2.0d) {
            this.opcode = (short) 13;
        } else {
            throw new ClassGenException("FCONST can be used only for 0.0, 1.0 and 2.0: " + f);
        }
        this.value = f;
    }
}
