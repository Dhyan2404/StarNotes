package com.sun.org.apache.bcel.internal.classfile;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class StackMap extends Attribute implements Node {
    private StackMapEntry[] map;
    private int map_length;

    public StackMap(int i, int i2, StackMapEntry[] stackMapEntryArr, ConstantPool constantPool) {
        super((byte) 11, i, i2, constantPool);
        setStackMap(stackMapEntryArr);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitStackMap(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public Attribute copy(ConstantPool constantPool) {
        StackMap stackMap = (StackMap) clone();
        stackMap.map = new StackMapEntry[this.map_length];
        for (int i = 0; i < this.map_length; i++) {
            stackMap.map[i] = this.map[i].copy();
        }
        stackMap.constant_pool = constantPool;
        return stackMap;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        super.dump(dataOutputStream);
        dataOutputStream.writeShort(this.map_length);
        for (int i = 0; i < this.map_length; i++) {
            this.map[i].dump(dataOutputStream);
        }
    }

    public final int getMapLength() {
        return this.map_length;
    }

    public final StackMapEntry[] getStackMap() {
        return this.map;
    }

    public final void setStackMap(StackMapEntry[] stackMapEntryArr) {
        this.map = stackMapEntryArr;
        this.map_length = stackMapEntryArr == null ? 0 : stackMapEntryArr.length;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer("StackMap(");
        for (int i = 0; i < this.map_length; i++) {
            stringBuffer.append(this.map[i].toString());
            if (i < this.map_length - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    public StackMap(int i, int i2, DataInputStream dataInputStream, ConstantPool constantPool) throws IOException {
        this(i, i2, (StackMapEntry[]) null, constantPool);
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        this.map_length = readUnsignedShort;
        this.map = new StackMapEntry[readUnsignedShort];
        for (int i3 = 0; i3 < this.map_length; i3++) {
            this.map[i3] = new StackMapEntry(dataInputStream, constantPool);
        }
    }
}
