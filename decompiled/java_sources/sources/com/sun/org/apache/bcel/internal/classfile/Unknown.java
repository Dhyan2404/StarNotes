package com.sun.org.apache.bcel.internal.classfile;

import com.google.android.material.motion.MotionUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes10.dex */
public final class Unknown extends Attribute {
    private static HashMap unknown_attributes = new HashMap();
    private byte[] bytes;
    private String name;

    public Unknown(Unknown unknown) {
        this(unknown.getNameIndex(), unknown.getLength(), unknown.getBytes(), unknown.getConstantPool());
    }

    public static Unknown[] getUnknownAttributes() {
        Unknown[] unknownArr = new Unknown[unknown_attributes.size()];
        Iterator it2 = unknown_attributes.values().iterator();
        int i = 0;
        while (it2.hasNext()) {
            unknownArr[i] = (Unknown) it2.next();
            i++;
        }
        unknown_attributes.clear();
        return unknownArr;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitUnknown(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public Attribute copy(ConstantPool constantPool) {
        Unknown unknown = (Unknown) clone();
        byte[] bArr = this.bytes;
        if (bArr != null) {
            unknown.bytes = (byte[]) bArr.clone();
        }
        unknown.constant_pool = constantPool;
        return unknown;
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

    public final String getName() {
        return this.name;
    }

    public final void setBytes(byte[] bArr) {
        this.bytes = bArr;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final String toString() {
        byte[] bArr;
        String hexString;
        int i = this.length;
        if (i == 0 || (bArr = this.bytes) == null) {
            return "(Unknown attribute " + this.name + MotionUtils.f31762d;
        }
        if (i > 10) {
            byte[] bArr2 = new byte[10];
            System.arraycopy(bArr, 0, bArr2, 0, 10);
            hexString = Utility.toHexString(bArr2) + "... (truncated)";
        } else {
            hexString = Utility.toHexString(bArr);
        }
        return "(Unknown attribute " + this.name + ": " + hexString + MotionUtils.f31762d;
    }

    public Unknown(int i, int i2, byte[] bArr, ConstantPool constantPool) {
        super((byte) -1, i, i2, constantPool);
        this.bytes = bArr;
        String bytes = ((ConstantUtf8) constantPool.getConstant(i, (byte) 1)).getBytes();
        this.name = bytes;
        unknown_attributes.put(bytes, this);
    }

    public Unknown(int i, int i2, DataInputStream dataInputStream, ConstantPool constantPool) throws IOException {
        this(i, i2, (byte[]) null, constantPool);
        if (i2 > 0) {
            byte[] bArr = new byte[i2];
            this.bytes = bArr;
            dataInputStream.readFully(bArr);
        }
    }
}
