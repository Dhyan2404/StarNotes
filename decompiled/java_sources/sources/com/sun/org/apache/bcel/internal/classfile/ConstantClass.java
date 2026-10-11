package com.sun.org.apache.bcel.internal.classfile;

import com.google.android.material.motion.MotionUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class ConstantClass extends Constant implements ConstantObject {
    private int name_index;

    public ConstantClass(ConstantClass constantClass) {
        this(constantClass.getNameIndex());
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitConstantClass(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant
    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.tag);
        dataOutputStream.writeShort(this.name_index);
    }

    public String getBytes(ConstantPool constantPool) {
        return (String) getConstantValue(constantPool);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.ConstantObject
    public Object getConstantValue(ConstantPool constantPool) {
        return ((ConstantUtf8) constantPool.getConstant(this.name_index, (byte) 1)).getBytes();
    }

    public final int getNameIndex() {
        return this.name_index;
    }

    public final void setNameIndex(int i) {
        this.name_index = i;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant
    public final String toString() {
        return super.toString() + "(name_index = " + this.name_index + MotionUtils.f31762d;
    }

    public ConstantClass(DataInputStream dataInputStream) throws IOException {
        this(dataInputStream.readUnsignedShort());
    }

    public ConstantClass(int i) {
        super((byte) 7);
        this.name_index = i;
    }
}
