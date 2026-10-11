package com.sun.org.apache.bcel.internal.classfile;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class InnerClasses extends Attribute {
    private InnerClass[] inner_classes;
    private int number_of_classes;

    public InnerClasses(InnerClasses innerClasses) {
        this(innerClasses.getNameIndex(), innerClasses.getLength(), innerClasses.getInnerClasses(), innerClasses.getConstantPool());
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitInnerClasses(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public Attribute copy(ConstantPool constantPool) {
        InnerClasses innerClasses = (InnerClasses) clone();
        innerClasses.inner_classes = new InnerClass[this.number_of_classes];
        for (int i = 0; i < this.number_of_classes; i++) {
            innerClasses.inner_classes[i] = this.inner_classes[i].copy();
        }
        innerClasses.constant_pool = constantPool;
        return innerClasses;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        super.dump(dataOutputStream);
        dataOutputStream.writeShort(this.number_of_classes);
        for (int i = 0; i < this.number_of_classes; i++) {
            this.inner_classes[i].dump(dataOutputStream);
        }
    }

    public final InnerClass[] getInnerClasses() {
        return this.inner_classes;
    }

    public final void setInnerClasses(InnerClass[] innerClassArr) {
        this.inner_classes = innerClassArr;
        this.number_of_classes = innerClassArr == null ? 0 : innerClassArr.length;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < this.number_of_classes; i++) {
            stringBuffer.append(this.inner_classes[i].toString(this.constant_pool) + "\n");
        }
        return stringBuffer.toString();
    }

    public InnerClasses(int i, int i2, InnerClass[] innerClassArr, ConstantPool constantPool) {
        super((byte) 6, i, i2, constantPool);
        setInnerClasses(innerClassArr);
    }

    public InnerClasses(int i, int i2, DataInputStream dataInputStream, ConstantPool constantPool) throws IOException {
        this(i, i2, (InnerClass[]) null, constantPool);
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        this.number_of_classes = readUnsignedShort;
        this.inner_classes = new InnerClass[readUnsignedShort];
        for (int i3 = 0; i3 < this.number_of_classes; i3++) {
            this.inner_classes[i3] = new InnerClass(dataInputStream);
        }
    }
}
