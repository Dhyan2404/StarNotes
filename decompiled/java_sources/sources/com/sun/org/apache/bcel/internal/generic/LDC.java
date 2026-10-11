package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.ExceptionConstants;
import com.sun.org.apache.bcel.internal.classfile.Constant;
import com.sun.org.apache.bcel.internal.classfile.ConstantFloat;
import com.sun.org.apache.bcel.internal.classfile.ConstantInteger;
import com.sun.org.apache.bcel.internal.classfile.ConstantString;
import com.sun.org.apache.bcel.internal.classfile.ConstantUtf8;
import com.sun.org.apache.bcel.internal.util.ByteSequence;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public class LDC extends CPInstruction implements PushInstruction, ExceptionThrower, TypedInstruction {
    public LDC() {
    }

    @Override // com.sun.org.apache.bcel.internal.generic.Instruction
    public void accept(Visitor visitor) {
        visitor.visitStackProducer(this);
        visitor.visitPushInstruction(this);
        visitor.visitExceptionThrower(this);
        visitor.visitTypedInstruction(this);
        visitor.visitCPInstruction(this);
        visitor.visitLDC(this);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.CPInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.opcode);
        if (this.length == 2) {
            dataOutputStream.writeByte(this.index);
        } else {
            dataOutputStream.writeShort(this.index);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.generic.ExceptionThrower
    public Class[] getExceptions() {
        return ExceptionConstants.EXCS_STRING_RESOLUTION;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.CPInstruction, com.sun.org.apache.bcel.internal.generic.TypedInstruction
    public Type getType(ConstantPoolGen constantPoolGen) {
        byte tag = constantPoolGen.getConstantPool().getConstant(this.index).getTag();
        if (tag == 3) {
            return Type.INT;
        }
        if (tag == 4) {
            return Type.FLOAT;
        }
        if (tag == 8) {
            return Type.STRING;
        }
        throw new RuntimeException("Unknown or invalid constant type at " + this.index);
    }

    public Object getValue(ConstantPoolGen constantPoolGen) {
        Constant constant = constantPoolGen.getConstantPool().getConstant(this.index);
        byte tag = constant.getTag();
        if (tag == 3) {
            return new Integer(((ConstantInteger) constant).getBytes());
        }
        if (tag == 4) {
            return new Float(((ConstantFloat) constant).getBytes());
        }
        if (tag == 8) {
            return ((ConstantUtf8) constantPoolGen.getConstantPool().getConstant(((ConstantString) constant).getStringIndex())).getBytes();
        }
        throw new RuntimeException("Unknown or invalid constant type at " + this.index);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.CPInstruction, com.sun.org.apache.bcel.internal.generic.Instruction
    public void initFromFile(ByteSequence byteSequence, boolean z) throws IOException {
        this.length = (short) 2;
        this.index = byteSequence.readUnsignedByte();
    }

    @Override // com.sun.org.apache.bcel.internal.generic.CPInstruction, com.sun.org.apache.bcel.internal.generic.IndexedInstruction
    public final void setIndex(int i) {
        super.setIndex(i);
        setSize();
    }

    public final void setSize() {
        if (this.index <= 255) {
            this.opcode = (short) 18;
            this.length = (short) 2;
        } else {
            this.opcode = (short) 19;
            this.length = (short) 3;
        }
    }

    public LDC(int i) {
        super((short) 19, i);
        setSize();
    }
}
