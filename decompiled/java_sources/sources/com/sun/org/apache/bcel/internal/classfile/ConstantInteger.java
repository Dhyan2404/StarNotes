package com.sun.org.apache.bcel.internal.classfile;

import com.google.android.material.motion.MotionUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class ConstantInteger extends Constant implements ConstantObject {
    private int bytes;

    public ConstantInteger(int i) {
        super((byte) 3);
        this.bytes = i;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitConstantInteger(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant
    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.tag);
        dataOutputStream.writeInt(this.bytes);
    }

    public final int getBytes() {
        return this.bytes;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.ConstantObject
    public Object getConstantValue(ConstantPool constantPool) {
        return new Integer(this.bytes);
    }

    public final void setBytes(int i) {
        this.bytes = i;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant
    public final String toString() {
        return super.toString() + "(bytes = " + this.bytes + MotionUtils.f31762d;
    }

    public ConstantInteger(ConstantInteger constantInteger) {
        this(constantInteger.getBytes());
    }

    public ConstantInteger(DataInputStream dataInputStream) throws IOException {
        this(dataInputStream.readInt());
    }
}
