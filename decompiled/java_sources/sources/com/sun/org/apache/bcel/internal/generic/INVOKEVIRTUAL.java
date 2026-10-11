package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.ExceptionConstants;

/* loaded from: classes10.dex */
public class INVOKEVIRTUAL extends InvokeInstruction {
    public INVOKEVIRTUAL() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitExceptionThrower(this);
        visitor.visitTypedInstruction(this);
        visitor.visitStackConsumer(this);
        visitor.visitStackProducer(this);
        visitor.visitLoadClass(this);
        visitor.visitCPInstruction(this);
        visitor.visitFieldOrMethod(this);
        visitor.visitInvokeInstruction(this);
        visitor.visitINVOKEVIRTUAL(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.ExceptionThrower
    public Class[] getExceptions() {
        Class[] clsArr = ExceptionConstants.EXCS_FIELD_AND_METHOD_RESOLUTION;
        Class[] clsArr2 = new Class[clsArr.length + 4];
        System.arraycopy(clsArr, 0, clsArr2, 0, clsArr.length);
        clsArr2[clsArr.length + 3] = ExceptionConstants.UNSATISFIED_LINK_ERROR;
        clsArr2[clsArr.length + 2] = ExceptionConstants.ABSTRACT_METHOD_ERROR;
        clsArr2[clsArr.length + 1] = ExceptionConstants.INCOMPATIBLE_CLASS_CHANGE_ERROR;
        clsArr2[clsArr.length] = ExceptionConstants.NULL_POINTER_EXCEPTION;
        return clsArr2;
    }

    public INVOKEVIRTUAL(int i) {
        super((short) 182, i);
    }
}
