package com.sun.org.apache.bcel.internal.classfile;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class StackMapType implements Cloneable {
    private ConstantPool constant_pool;
    private int index;
    private byte type;

    public StackMapType(DataInputStream dataInputStream, ConstantPool constantPool) throws IOException {
        this(dataInputStream.readByte(), -1, constantPool);
        if (hasIndex()) {
            setIndex(dataInputStream.readShort());
        }
        setConstantPool(constantPool);
    }

    private String printIndex() {
        byte b = this.type;
        if (b == 7) {
            return ", class=" + this.constant_pool.constantToString(this.index, (byte) 7);
        }
        if (b != 8) {
            return "";
        }
        return ", offset=" + this.index;
    }

    public StackMapType copy() {
        try {
            return (StackMapType) clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.type);
        if (hasIndex()) {
            dataOutputStream.writeShort(getIndex());
        }
    }

    public final ConstantPool getConstantPool() {
        return this.constant_pool;
    }

    public int getIndex() {
        return this.index;
    }

    public byte getType() {
        return this.type;
    }

    public final boolean hasIndex() {
        byte b = this.type;
        return b == 7 || b == 8;
    }

    public final void setConstantPool(ConstantPool constantPool) {
        this.constant_pool = constantPool;
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public void setType(byte b) {
        if (b >= 0 && b <= 8) {
            this.type = b;
            return;
        }
        throw new RuntimeException("Illegal type for StackMapType: " + ((int) b));
    }

    public final String toString() {
        return "(type=" + Constants.ITEM_NAMES[this.type] + printIndex() + MotionUtils.f31762d;
    }

    public StackMapType(byte b, int i, ConstantPool constantPool) {
        this.index = -1;
        setType(b);
        setIndex(i);
        setConstantPool(constantPool);
    }
}
