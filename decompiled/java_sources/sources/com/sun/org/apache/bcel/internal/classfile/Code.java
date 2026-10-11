package com.sun.org.apache.bcel.internal.classfile;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class Code extends Attribute {
    private Attribute[] attributes;
    private int attributes_count;
    private byte[] code;
    private int code_length;
    private CodeException[] exception_table;
    private int exception_table_length;
    private int max_locals;
    private int max_stack;

    public Code(Code code) {
        this(code.getNameIndex(), code.getLength(), code.getMaxStack(), code.getMaxLocals(), code.getCode(), code.getExceptionTable(), code.getAttributes(), code.getConstantPool());
    }

    private final int calculateLength() {
        int i = 0;
        for (int i2 = 0; i2 < this.attributes_count; i2++) {
            i += this.attributes[i2].length + 6;
        }
        return i + getInternalLength();
    }

    private final int getInternalLength() {
        return this.code_length + 8 + 2 + (this.exception_table_length * 8) + 2;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitCode(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public Attribute copy(ConstantPool constantPool) {
        Code code = (Code) clone();
        code.code = (byte[]) this.code.clone();
        code.constant_pool = constantPool;
        code.exception_table = new CodeException[this.exception_table_length];
        for (int i = 0; i < this.exception_table_length; i++) {
            code.exception_table[i] = this.exception_table[i].copy();
        }
        code.attributes = new Attribute[this.attributes_count];
        for (int i2 = 0; i2 < this.attributes_count; i2++) {
            code.attributes[i2] = this.attributes[i2].copy(constantPool);
        }
        return code;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        super.dump(dataOutputStream);
        dataOutputStream.writeShort(this.max_stack);
        dataOutputStream.writeShort(this.max_locals);
        dataOutputStream.writeInt(this.code_length);
        dataOutputStream.write(this.code, 0, this.code_length);
        dataOutputStream.writeShort(this.exception_table_length);
        for (int i = 0; i < this.exception_table_length; i++) {
            this.exception_table[i].dump(dataOutputStream);
        }
        dataOutputStream.writeShort(this.attributes_count);
        for (int i2 = 0; i2 < this.attributes_count; i2++) {
            this.attributes[i2].dump(dataOutputStream);
        }
    }

    public final Attribute[] getAttributes() {
        return this.attributes;
    }

    public final byte[] getCode() {
        return this.code;
    }

    public final CodeException[] getExceptionTable() {
        return this.exception_table;
    }

    public LineNumberTable getLineNumberTable() {
        for (int i = 0; i < this.attributes_count; i++) {
            Attribute attribute = this.attributes[i];
            if (attribute instanceof LineNumberTable) {
                return (LineNumberTable) attribute;
            }
        }
        return null;
    }

    public LocalVariableTable getLocalVariableTable() {
        for (int i = 0; i < this.attributes_count; i++) {
            Attribute attribute = this.attributes[i];
            if (attribute instanceof LocalVariableTable) {
                return (LocalVariableTable) attribute;
            }
        }
        return null;
    }

    public final int getMaxLocals() {
        return this.max_locals;
    }

    public final int getMaxStack() {
        return this.max_stack;
    }

    public final void setAttributes(Attribute[] attributeArr) {
        this.attributes = attributeArr;
        this.attributes_count = attributeArr == null ? 0 : attributeArr.length;
        this.length = calculateLength();
    }

    public final void setCode(byte[] bArr) {
        this.code = bArr;
        this.code_length = bArr == null ? 0 : bArr.length;
    }

    public final void setExceptionTable(CodeException[] codeExceptionArr) {
        this.exception_table = codeExceptionArr;
        this.exception_table_length = codeExceptionArr == null ? 0 : codeExceptionArr.length;
    }

    public final void setMaxLocals(int i) {
        this.max_locals = i;
    }

    public final void setMaxStack(int i) {
        this.max_stack = i;
    }

    public final String toString(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("Code(max_stack = ");
        sb.append(this.max_stack);
        sb.append(", max_locals = ");
        sb.append(this.max_locals);
        sb.append(", code_length = ");
        sb.append(this.code_length);
        sb.append(")\n");
        sb.append(Utility.codeToString(this.code, this.constant_pool, 0, -1, z));
        StringBuffer stringBuffer = new StringBuffer(sb.toString());
        if (this.exception_table_length > 0) {
            stringBuffer.append("\nException handler(s) = \nFrom\tTo\tHandler\tType\n");
            for (int i = 0; i < this.exception_table_length; i++) {
                stringBuffer.append(this.exception_table[i].toString(this.constant_pool, z) + "\n");
            }
        }
        if (this.attributes_count > 0) {
            stringBuffer.append("\nAttribute(s) = \n");
            for (int i2 = 0; i2 < this.attributes_count; i2++) {
                stringBuffer.append(this.attributes[i2].toString() + "\n");
            }
        }
        return stringBuffer.toString();
    }

    public Code(int i, int i2, DataInputStream dataInputStream, ConstantPool constantPool) throws IOException {
        this(i, i2, dataInputStream.readUnsignedShort(), dataInputStream.readUnsignedShort(), null, null, null, constantPool);
        int readInt = dataInputStream.readInt();
        this.code_length = readInt;
        byte[] bArr = new byte[readInt];
        this.code = bArr;
        dataInputStream.readFully(bArr);
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        this.exception_table_length = readUnsignedShort;
        this.exception_table = new CodeException[readUnsignedShort];
        for (int i3 = 0; i3 < this.exception_table_length; i3++) {
            this.exception_table[i3] = new CodeException(dataInputStream);
        }
        int readUnsignedShort2 = dataInputStream.readUnsignedShort();
        this.attributes_count = readUnsignedShort2;
        this.attributes = new Attribute[readUnsignedShort2];
        for (int i4 = 0; i4 < this.attributes_count; i4++) {
            this.attributes[i4] = Attribute.readAttribute(dataInputStream, constantPool);
        }
        this.length = i2;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final String toString() {
        return toString(true);
    }

    public Code(int i, int i2, int i3, int i4, byte[] bArr, CodeException[] codeExceptionArr, Attribute[] attributeArr, ConstantPool constantPool) {
        super((byte) 2, i, i2, constantPool);
        this.max_stack = i3;
        this.max_locals = i4;
        setCode(bArr);
        setExceptionTable(codeExceptionArr);
        setAttributes(attributeArr);
    }
}
