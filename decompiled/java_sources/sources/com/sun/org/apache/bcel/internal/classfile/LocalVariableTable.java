package com.sun.org.apache.bcel.internal.classfile;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public class LocalVariableTable extends Attribute {
    private LocalVariable[] local_variable_table;
    private int local_variable_table_length;

    public LocalVariableTable(LocalVariableTable localVariableTable) {
        this(localVariableTable.getNameIndex(), localVariableTable.getLength(), localVariableTable.getLocalVariableTable(), localVariableTable.getConstantPool());
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitLocalVariableTable(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public Attribute copy(ConstantPool constantPool) {
        LocalVariableTable localVariableTable = (LocalVariableTable) clone();
        localVariableTable.local_variable_table = new LocalVariable[this.local_variable_table_length];
        for (int i = 0; i < this.local_variable_table_length; i++) {
            localVariableTable.local_variable_table[i] = this.local_variable_table[i].copy();
        }
        localVariableTable.constant_pool = constantPool;
        return localVariableTable;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        super.dump(dataOutputStream);
        dataOutputStream.writeShort(this.local_variable_table_length);
        for (int i = 0; i < this.local_variable_table_length; i++) {
            this.local_variable_table[i].dump(dataOutputStream);
        }
    }

    public final LocalVariable getLocalVariable(int i) {
        for (int i2 = 0; i2 < this.local_variable_table_length; i2++) {
            if (this.local_variable_table[i2].getIndex() == i) {
                return this.local_variable_table[i2];
            }
        }
        return null;
    }

    public final LocalVariable[] getLocalVariableTable() {
        return this.local_variable_table;
    }

    public final int getTableLength() {
        return this.local_variable_table_length;
    }

    public final void setLocalVariableTable(LocalVariable[] localVariableArr) {
        this.local_variable_table = localVariableArr;
        this.local_variable_table_length = localVariableArr == null ? 0 : localVariableArr.length;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer("");
        for (int i = 0; i < this.local_variable_table_length; i++) {
            stringBuffer.append(this.local_variable_table[i].toString());
            if (i < this.local_variable_table_length - 1) {
                stringBuffer.append('\n');
            }
        }
        return stringBuffer.toString();
    }

    public LocalVariableTable(int i, int i2, LocalVariable[] localVariableArr, ConstantPool constantPool) {
        super((byte) 5, i, i2, constantPool);
        setLocalVariableTable(localVariableArr);
    }

    public LocalVariableTable(int i, int i2, DataInputStream dataInputStream, ConstantPool constantPool) throws IOException {
        this(i, i2, (LocalVariable[]) null, constantPool);
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        this.local_variable_table_length = readUnsignedShort;
        this.local_variable_table = new LocalVariable[readUnsignedShort];
        for (int i3 = 0; i3 < this.local_variable_table_length; i3++) {
            this.local_variable_table[i3] = new LocalVariable(dataInputStream, constantPool);
        }
    }
}
