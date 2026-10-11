package com.sun.org.apache.bcel.internal.classfile;

import com.google.android.material.motion.MotionUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class ConstantDouble extends Constant implements ConstantObject {
    private double bytes;

    public ConstantDouble(double d) {
        super((byte) 6);
        this.bytes = d;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitConstantDouble(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant
    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.tag);
        dataOutputStream.writeDouble(this.bytes);
    }

    public final double getBytes() {
        return this.bytes;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.ConstantObject
    public Object getConstantValue(ConstantPool constantPool) {
        return new Double(this.bytes);
    }

    public final void setBytes(double d) {
        this.bytes = d;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant
    public final String toString() {
        return super.toString() + "(bytes = " + this.bytes + MotionUtils.f31762d;
    }

    public ConstantDouble(ConstantDouble constantDouble) {
        this(constantDouble.getBytes());
    }

    public ConstantDouble(DataInputStream dataInputStream) throws IOException {
        this(dataInputStream.readDouble());
    }
}
