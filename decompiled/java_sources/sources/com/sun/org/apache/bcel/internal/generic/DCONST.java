package com.sun.org.apache.bcel.internal.generic;

/* loaded from: classes10.dex */
public class DCONST extends Instruction implements ConstantPushInstruction, TypedInstruction {
    private double value;

    public DCONST() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitPushInstruction(this);
        visitor.visitStackProducer(this);
        visitor.visitTypedInstruction(this);
        visitor.visitConstantPushInstruction(this);
        visitor.visitDCONST(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.TypedInstruction
    public Type getType(ConstantPoolGen constantPoolGen) {
        return Type.DOUBLE;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.ConstantPushInstruction
    public Number getValue() {
        return new Double(this.value);
    }

    public DCONST(double d) {
        super((short) 14, (short) 1);
        if (d == 0.0d) {
            this.opcode = (short) 14;
        } else if (d == 1.0d) {
            this.opcode = (short) 15;
        } else {
            throw new ClassGenException("DCONST can be used only for 0.0 and 1.0: " + d);
        }
        this.value = d;
    }
}
