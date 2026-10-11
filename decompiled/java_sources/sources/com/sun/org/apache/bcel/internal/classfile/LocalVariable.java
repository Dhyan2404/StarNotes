package com.sun.org.apache.bcel.internal.classfile;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;

/* loaded from: classes10.dex */
public final class LocalVariable implements Constants, Cloneable, Node, Serializable {
    private ConstantPool constant_pool;
    private int index;
    private int length;
    private int name_index;
    private int signature_index;
    private int start_pc;

    public LocalVariable(LocalVariable localVariable) {
        this(localVariable.getStartPC(), localVariable.getLength(), localVariable.getNameIndex(), localVariable.getSignatureIndex(), localVariable.getIndex(), localVariable.getConstantPool());
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitLocalVariable(this);
    }

    public LocalVariable copy() {
        try {
            return (LocalVariable) clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.start_pc);
        dataOutputStream.writeShort(this.length);
        dataOutputStream.writeShort(this.name_index);
        dataOutputStream.writeShort(this.signature_index);
        dataOutputStream.writeShort(this.index);
    }

    public final ConstantPool getConstantPool() {
        return this.constant_pool;
    }

    public final int getIndex() {
        return this.index;
    }

    public final int getLength() {
        return this.length;
    }

    public final String getName() {
        return ((ConstantUtf8) this.constant_pool.getConstant(this.name_index, (byte) 1)).getBytes();
    }

    public final int getNameIndex() {
        return this.name_index;
    }

    public final String getSignature() {
        return ((ConstantUtf8) this.constant_pool.getConstant(this.signature_index, (byte) 1)).getBytes();
    }

    public final int getSignatureIndex() {
        return this.signature_index;
    }

    public final int getStartPC() {
        return this.start_pc;
    }

    public final void setConstantPool(ConstantPool constantPool) {
        this.constant_pool = constantPool;
    }

    public final void setIndex(int i) {
        this.index = i;
    }

    public final void setLength(int i) {
        this.length = i;
    }

    public final void setNameIndex(int i) {
        this.name_index = i;
    }

    public final void setSignatureIndex(int i) {
        this.signature_index = i;
    }

    public final void setStartPC(int i) {
        this.start_pc = i;
    }

    public final String toString() {
        String name = getName();
        return "LocalVariable(start_pc = " + this.start_pc + ", length = " + this.length + ", index = " + this.index + ":" + Utility.signatureToString(getSignature()) + " " + name + MotionUtils.f31762d;
    }

    public LocalVariable(DataInputStream dataInputStream, ConstantPool constantPool) throws IOException {
        this(dataInputStream.readUnsignedShort(), dataInputStream.readUnsignedShort(), dataInputStream.readUnsignedShort(), dataInputStream.readUnsignedShort(), dataInputStream.readUnsignedShort(), constantPool);
    }

    public LocalVariable(int i, int i2, int i3, int i4, int i5, ConstantPool constantPool) {
        this.start_pc = i;
        this.length = i2;
        this.name_index = i3;
        this.signature_index = i4;
        this.index = i5;
        this.constant_pool = constantPool;
    }
}
