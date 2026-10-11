package com.sun.org.apache.bcel.internal.classfile;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public abstract class FieldOrMethod extends AccessFlags implements Cloneable, Node {
    protected Attribute[] attributes;
    protected int attributes_count;
    protected ConstantPool constant_pool;
    protected int name_index;
    protected int signature_index;

    public FieldOrMethod() {
    }

    public FieldOrMethod copy_(ConstantPool constantPool) {
        FieldOrMethod fieldOrMethod;
        try {
            fieldOrMethod = (FieldOrMethod) clone();
        } catch (CloneNotSupportedException unused) {
            fieldOrMethod = null;
        }
        fieldOrMethod.constant_pool = constantPool;
        fieldOrMethod.attributes = new Attribute[this.attributes_count];
        for (int i = 0; i < this.attributes_count; i++) {
            fieldOrMethod.attributes[i] = this.attributes[i].copy(constantPool);
        }
        return fieldOrMethod;
    }

    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.access_flags);
        dataOutputStream.writeShort(this.name_index);
        dataOutputStream.writeShort(this.signature_index);
        dataOutputStream.writeShort(this.attributes_count);
        for (int i = 0; i < this.attributes_count; i++) {
            this.attributes[i].dump(dataOutputStream);
        }
    }

    public final Attribute[] getAttributes() {
        return this.attributes;
    }

    public final ConstantPool getConstantPool() {
        return this.constant_pool;
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

    public final void setAttributes(Attribute[] attributeArr) {
        this.attributes = attributeArr;
        this.attributes_count = attributeArr == null ? 0 : attributeArr.length;
    }

    public final void setConstantPool(ConstantPool constantPool) {
        this.constant_pool = constantPool;
    }

    public final void setNameIndex(int i) {
        this.name_index = i;
    }

    public final void setSignatureIndex(int i) {
        this.signature_index = i;
    }

    public FieldOrMethod(FieldOrMethod fieldOrMethod) {
        this(fieldOrMethod.getAccessFlags(), fieldOrMethod.getNameIndex(), fieldOrMethod.getSignatureIndex(), fieldOrMethod.getAttributes(), fieldOrMethod.getConstantPool());
    }

    public FieldOrMethod(DataInputStream dataInputStream, ConstantPool constantPool) throws IOException, ClassFormatException {
        this(dataInputStream.readUnsignedShort(), dataInputStream.readUnsignedShort(), dataInputStream.readUnsignedShort(), null, constantPool);
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        this.attributes_count = readUnsignedShort;
        this.attributes = new Attribute[readUnsignedShort];
        for (int i = 0; i < this.attributes_count; i++) {
            this.attributes[i] = Attribute.readAttribute(dataInputStream, constantPool);
        }
    }

    public FieldOrMethod(int i, int i2, int i3, Attribute[] attributeArr, ConstantPool constantPool) {
        this.access_flags = i;
        this.name_index = i2;
        this.signature_index = i3;
        this.constant_pool = constantPool;
        setAttributes(attributeArr);
    }
}
