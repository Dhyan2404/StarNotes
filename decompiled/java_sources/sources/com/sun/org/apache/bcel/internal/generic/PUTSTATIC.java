package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.ExceptionConstants;

/* loaded from: classes10.dex */
public class PUTSTATIC extends FieldInstruction implements ExceptionThrower, PopInstruction {
    public PUTSTATIC() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitExceptionThrower(this);
        visitor.visitStackConsumer(this);
        visitor.visitPopInstruction(this);
        visitor.visitTypedInstruction(this);
        visitor.visitLoadClass(this);
        visitor.visitCPInstruction(this);
        visitor.visitFieldOrMethod(this);
        visitor.visitFieldInstruction(this);
        visitor.visitPUTSTATIC(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction, com.sun.org.apache.bcel.internal.generic.StackConsumer
    public int consumeStack(ConstantPoolGen constantPoolGen) {
        return getFieldSize(constantPoolGen);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.ExceptionThrower
    public Class[] getExceptions() {
        Class[] clsArr = ExceptionConstants.EXCS_FIELD_AND_METHOD_RESOLUTION;
        Class[] clsArr2 = new Class[clsArr.length + 1];
        System.arraycopy(clsArr, 0, clsArr2, 0, clsArr.length);
        clsArr2[clsArr.length] = ExceptionConstants.INCOMPATIBLE_CLASS_CHANGE_ERROR;
        return clsArr2;
    }

    public PUTSTATIC(int i) {
        super((short) 179, i);
    }
}
