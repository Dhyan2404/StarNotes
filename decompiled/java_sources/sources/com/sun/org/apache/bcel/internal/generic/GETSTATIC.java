package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.ExceptionConstants;

/* loaded from: classes10.dex */
public class GETSTATIC extends FieldInstruction implements PushInstruction, ExceptionThrower {
    public GETSTATIC() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackProducer(this);
        visitor.visitPushInstruction(this);
        visitor.visitExceptionThrower(this);
        visitor.visitTypedInstruction(this);
        visitor.visitLoadClass(this);
        visitor.visitCPInstruction(this);
        visitor.visitFieldOrMethod(this);
        visitor.visitFieldInstruction(this);
        visitor.visitGETSTATIC(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.ExceptionThrower
    public Class[] getExceptions() {
        Class[] clsArr = ExceptionConstants.EXCS_FIELD_AND_METHOD_RESOLUTION;
        Class[] clsArr2 = new Class[clsArr.length + 1];
        System.arraycopy(clsArr, 0, clsArr2, 0, clsArr.length);
        clsArr2[clsArr.length] = ExceptionConstants.INCOMPATIBLE_CLASS_CHANGE_ERROR;
        return clsArr2;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction, com.sun.org.apache.bcel.internal.generic.StackProducer
    public int produceStack(ConstantPoolGen constantPoolGen) {
        return getFieldSize(constantPoolGen);
    }

    public GETSTATIC(int i) {
        super((short) 178, i);
    }
}
