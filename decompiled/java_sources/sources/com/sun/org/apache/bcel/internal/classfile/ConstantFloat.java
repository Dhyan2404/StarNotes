package com.sun.org.apache.bcel.internal.classfile;

import com.google.android.material.motion.MotionUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class ConstantFloat extends Constant implements ConstantObject {
    private float bytes;

    public ConstantFloat(float f) {
        super((byte) 4);
        this.bytes = f;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitConstantFloat(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant
    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.tag);
        dataOutputStream.writeFloat(this.bytes);
    }

    public final float getBytes() {
        return this.bytes;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.ConstantObject
    public Object getConstantValue(ConstantPool constantPool) {
        return new Float(this.bytes);
    }

    public final void setBytes(float f) {
        this.bytes = f;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Constant
    public final String toString() {
        return super.toString() + "(bytes = " + this.bytes + MotionUtils.f31762d;
    }

    public ConstantFloat(ConstantFloat constantFloat) {
        this(constantFloat.getBytes());
    }

    public ConstantFloat(DataInputStream dataInputStream) throws IOException {
        this(dataInputStream.readFloat());
    }
}
