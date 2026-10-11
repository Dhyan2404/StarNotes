package com.sun.org.apache.bcel.internal.classfile;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class Synthetic extends Attribute {
    private byte[] bytes;

    public Synthetic(Synthetic synthetic) {
        this(synthetic.getNameIndex(), synthetic.getLength(), synthetic.getBytes(), synthetic.getConstantPool());
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitSynthetic(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public Attribute copy(ConstantPool constantPool) {
        Synthetic synthetic = (Synthetic) clone();
        byte[] bArr = this.bytes;
        if (bArr != null) {
            synthetic.bytes = (byte[]) bArr.clone();
        }
        synthetic.constant_pool = constantPool;
        return synthetic;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        super.dump(dataOutputStream);
        int i = this.length;
        if (i > 0) {
            dataOutputStream.write(this.bytes, 0, i);
        }
    }

    public final byte[] getBytes() {
        return this.bytes;
    }

    public final void setBytes(byte[] bArr) {
        this.bytes = bArr;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer("Synthetic");
        if (this.length > 0) {
            stringBuffer.append(" " + Utility.toHexString(this.bytes));
        }
        return stringBuffer.toString();
    }

    public Synthetic(int i, int i2, byte[] bArr, ConstantPool constantPool) {
        super((byte) 7, i, i2, constantPool);
        this.bytes = bArr;
    }

    public Synthetic(int i, int i2, DataInputStream dataInputStream, ConstantPool constantPool) throws IOException {
        this(i, i2, (byte[]) null, constantPool);
        if (i2 > 0) {
            byte[] bArr = new byte[i2];
            this.bytes = bArr;
            dataInputStream.readFully(bArr);
            System.err.println("Synthetic attribute with length > 0");
        }
    }
}
