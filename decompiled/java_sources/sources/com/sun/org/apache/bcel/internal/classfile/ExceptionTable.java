package com.sun.org.apache.bcel.internal.classfile;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class ExceptionTable extends Attribute {
    private int[] exception_index_table;
    private int number_of_exceptions;

    public ExceptionTable(ExceptionTable exceptionTable) {
        this(exceptionTable.getNameIndex(), exceptionTable.getLength(), exceptionTable.getExceptionIndexTable(), exceptionTable.getConstantPool());
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitExceptionTable(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public Attribute copy(ConstantPool constantPool) {
        ExceptionTable exceptionTable = (ExceptionTable) clone();
        exceptionTable.exception_index_table = (int[]) this.exception_index_table.clone();
        exceptionTable.constant_pool = constantPool;
        return exceptionTable;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        super.dump(dataOutputStream);
        dataOutputStream.writeShort(this.number_of_exceptions);
        for (int i = 0; i < this.number_of_exceptions; i++) {
            dataOutputStream.writeShort(this.exception_index_table[i]);
        }
    }

    public final int[] getExceptionIndexTable() {
        return this.exception_index_table;
    }

    public final String[] getExceptionNames() {
        String[] strArr = new String[this.number_of_exceptions];
        for (int i = 0; i < this.number_of_exceptions; i++) {
            strArr[i] = this.constant_pool.getConstantString(this.exception_index_table[i], (byte) 7).replace('/', '.');
        }
        return strArr;
    }

    public final int getNumberOfExceptions() {
        return this.number_of_exceptions;
    }

    public final void setExceptionIndexTable(int[] iArr) {
        this.exception_index_table = iArr;
        this.number_of_exceptions = iArr == null ? 0 : iArr.length;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer("");
        for (int i = 0; i < this.number_of_exceptions; i++) {
            stringBuffer.append(Utility.compactClassName(this.constant_pool.getConstantString(this.exception_index_table[i], (byte) 7), false));
            if (i < this.number_of_exceptions - 1) {
                stringBuffer.append(", ");
            }
        }
        return stringBuffer.toString();
    }

    public ExceptionTable(int i, int i2, int[] iArr, ConstantPool constantPool) {
        super((byte) 3, i, i2, constantPool);
        setExceptionIndexTable(iArr);
    }

    public ExceptionTable(int i, int i2, DataInputStream dataInputStream, ConstantPool constantPool) throws IOException {
        this(i, i2, (int[]) null, constantPool);
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        this.number_of_exceptions = readUnsignedShort;
        this.exception_index_table = new int[readUnsignedShort];
        for (int i3 = 0; i3 < this.number_of_exceptions; i3++) {
            this.exception_index_table[i3] = dataInputStream.readUnsignedShort();
        }
    }
}
