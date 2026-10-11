package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.ExceptionConstants;
import com.sun.org.apache.bcel.internal.classfile.ConstantPool;
import com.sun.org.apache.bcel.internal.util.ByteSequence;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class INVOKEINTERFACE extends InvokeInstruction {
    private int nargs;

    public INVOKEINTERFACE() {
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
        visitor.visitINVOKEINTERFACE(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.InvokeInstruction, com.sun.org.apache.bcel.internal.generic.Instruction, com.sun.org.apache.bcel.internal.generic.StackConsumer
    public int consumeStack(ConstantPoolGen constantPoolGen) {
        return this.nargs;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.CPInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.opcode);
        dataOutputStream.writeShort(this.index);
        dataOutputStream.writeByte(this.nargs);
        dataOutputStream.writeByte(0);
    }

    public int getCount() {
        return this.nargs;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.ExceptionThrower
    public Class[] getExceptions() {
        Class[] clsArr = ExceptionConstants.EXCS_INTERFACE_METHOD_RESOLUTION;
        Class[] clsArr2 = new Class[clsArr.length + 4];
        System.arraycopy(clsArr, 0, clsArr2, 0, clsArr.length);
        clsArr2[clsArr.length + 3] = ExceptionConstants.INCOMPATIBLE_CLASS_CHANGE_ERROR;
        clsArr2[clsArr.length + 2] = ExceptionConstants.ILLEGAL_ACCESS_ERROR;
        clsArr2[clsArr.length + 1] = ExceptionConstants.ABSTRACT_METHOD_ERROR;
        clsArr2[clsArr.length] = ExceptionConstants.UNSATISFIED_LINK_ERROR;
        return clsArr2;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.CPInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void initFromFile(ByteSequence byteSequence, boolean z) throws IOException {
        super.initFromFile(byteSequence, z);
        this.length = (short) 5;
        this.nargs = byteSequence.readUnsignedByte();
        byteSequence.readByte();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.InvokeInstruction, com.sun.org.apache.bcel.internal.generic.CPInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public String toString(ConstantPool constantPool) {
        return super.toString(constantPool) + " " + this.nargs;
    }

    public INVOKEINTERFACE(int i, int i2) {
        super((short) 185, i);
        this.length = (short) 5;
        if (i2 >= 1) {
            this.nargs = i2;
            return;
        }
        throw new ClassGenException("Number of arguments must be > 0 " + i2);
    }
}
