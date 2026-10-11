package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.ExceptionConstants;

/* loaded from: classes10.dex */
public class PUTFIELD extends FieldInstruction implements PopInstruction, ExceptionThrower {
    public PUTFIELD() {
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
        visitor.visitPUTFIELD(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction, com.sun.org.apache.bcel.internal.generic.StackConsumer
    public int consumeStack(ConstantPoolGen constantPoolGen) {
        return getFieldSize(constantPoolGen) + 1;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.ExceptionThrower
    public Class[] getExceptions() {
        Class[] clsArr = ExceptionConstants.EXCS_FIELD_AND_METHOD_RESOLUTION;
        Class[] clsArr2 = new Class[clsArr.length + 2];
        System.arraycopy(clsArr, 0, clsArr2, 0, clsArr.length);
        clsArr2[clsArr.length + 1] = ExceptionConstants.INCOMPATIBLE_CLASS_CHANGE_ERROR;
        clsArr2[clsArr.length] = ExceptionConstants.NULL_POINTER_EXCEPTION;
        return clsArr2;
    }

    public PUTFIELD(int i) {
        super((short) 181, i);
    }
}
