package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.classfile.ConstantPool;

/* loaded from: classes10.dex */
public abstract class FieldInstruction extends FieldOrMethod implements TypedInstruction {
    public FieldInstruction() {
    }

    public String getFieldName(ConstantPoolGen constantPoolGen) {
        return getName(constantPoolGen);
    }

    public int getFieldSize(ConstantPoolGen constantPoolGen) {
        return getType(constantPoolGen).getSize();
    }

    public Type getFieldType(ConstantPoolGen constantPoolGen) {
        return Type.getType(getSignature(constantPoolGen));
    }

    @Override // com.sun.org.apache.bcel.internal.generic.CPInstruction, com.sun.org.apache.bcel.internal.generic.TypedInstruction
    public Type getType(ConstantPoolGen constantPoolGen) {
        return getFieldType(constantPoolGen);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.CPInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public String toString(ConstantPool constantPool) {
        return Constants.OPCODE_NAMES[this.opcode] + " " + constantPool.constantToString(this.index, (byte) 9);
    }

    public FieldInstruction(short s, int i) {
        super(s, i);
    }
}
