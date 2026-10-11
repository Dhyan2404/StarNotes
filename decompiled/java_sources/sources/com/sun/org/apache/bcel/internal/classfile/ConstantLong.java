package com.sun.org.apache.bcel.internal.classfile;

import com.google.android.material.motion.MotionUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class ConstantLong extends Constant implements ConstantObject {
    private long bytes;

    public ConstantLong(long j) {
        super((byte) 5);
        this.bytes = j;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitConstantLong(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant
    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.tag);
        dataOutputStream.writeLong(this.bytes);
    }

    public final long getBytes() {
        return this.bytes;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.ConstantObject
    public Object getConstantValue(ConstantPool constantPool) {
        return new Long(this.bytes);
    }

    public final void setBytes(long j) {
        this.bytes = j;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant
    public final String toString() {
        return super.toString() + "(bytes = " + this.bytes + MotionUtils.f31762d;
    }

    public ConstantLong(ConstantLong constantLong) {
        this(constantLong.getBytes());
    }

    public ConstantLong(DataInputStream dataInputStream) throws IOException {
        this(dataInputStream.readLong());
    }
}
