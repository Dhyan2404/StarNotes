package com.sun.org.apache.bcel.internal.classfile;

import com.google.android.material.motion.MotionUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class StackMapEntry implements Cloneable {
    private int byte_code_offset;
    private ConstantPool constant_pool;
    private int number_of_locals;
    private int number_of_stack_items;
    private StackMapType[] types_of_locals;
    private StackMapType[] types_of_stack_items;

    public StackMapEntry(DataInputStream dataInputStream, ConstantPool constantPool) throws IOException {
        this(dataInputStream.readShort(), dataInputStream.readShort(), null, -1, null, constantPool);
        this.types_of_locals = new StackMapType[this.number_of_locals];
        for (int i = 0; i < this.number_of_locals; i++) {
            this.types_of_locals[i] = new StackMapType(dataInputStream, constantPool);
        }
        int readShort = dataInputStream.readShort();
        this.number_of_stack_items = readShort;
        this.types_of_stack_items = new StackMapType[readShort];
        for (int i2 = 0; i2 < this.number_of_stack_items; i2++) {
            this.types_of_stack_items[i2] = new StackMapType(dataInputStream, constantPool);
        }
    }

    public void accept(Visitor visitor) {
        visitor.visitStackMapEntry(this);
    }

    public StackMapEntry copy() {
        try {
            return (StackMapEntry) clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.byte_code_offset);
        dataOutputStream.writeShort(this.number_of_locals);
        for (int i = 0; i < this.number_of_locals; i++) {
            this.types_of_locals[i].dump(dataOutputStream);
        }
        dataOutputStream.writeShort(this.number_of_stack_items);
        for (int i2 = 0; i2 < this.number_of_stack_items; i2++) {
            this.types_of_stack_items[i2].dump(dataOutputStream);
        }
    }

    public int getByteCodeOffset() {
        return this.byte_code_offset;
    }

    public final ConstantPool getConstantPool() {
        return this.constant_pool;
    }

    public int getNumberOfLocals() {
        return this.number_of_locals;
    }

    public int getNumberOfStackItems() {
        return this.number_of_stack_items;
    }

    public StackMapType[] getTypesOfLocals() {
        return this.types_of_locals;
    }

    public StackMapType[] getTypesOfStackItems() {
        return this.types_of_stack_items;
    }

    public void setByteCodeOffset(int i) {
        this.byte_code_offset = i;
    }

    public final void setConstantPool(ConstantPool constantPool) {
        this.constant_pool = constantPool;
    }

    public void setNumberOfLocals(int i) {
        this.number_of_locals = i;
    }

    public void setNumberOfStackItems(int i) {
        this.number_of_stack_items = i;
    }

    public void setTypesOfLocals(StackMapType[] stackMapTypeArr) {
        this.types_of_locals = stackMapTypeArr;
    }

    public void setTypesOfStackItems(StackMapType[] stackMapTypeArr) {
        this.types_of_stack_items = stackMapTypeArr;
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer("(offset=" + this.byte_code_offset);
        if (this.number_of_locals > 0) {
            stringBuffer.append(", locals={");
            for (int i = 0; i < this.number_of_locals; i++) {
                stringBuffer.append(this.types_of_locals[i]);
                if (i < this.number_of_locals - 1) {
                    stringBuffer.append(", ");
                }
            }
            stringBuffer.append("}");
        }
        if (this.number_of_stack_items > 0) {
            stringBuffer.append(", stack items={");
            for (int i2 = 0; i2 < this.number_of_stack_items; i2++) {
                stringBuffer.append(this.types_of_stack_items[i2]);
                if (i2 < this.number_of_stack_items - 1) {
                    stringBuffer.append(", ");
                }
            }
            stringBuffer.append("}");
        }
        stringBuffer.append(MotionUtils.f31762d);
        return stringBuffer.toString();
    }

    public StackMapEntry(int i, int i2, StackMapType[] stackMapTypeArr, int i3, StackMapType[] stackMapTypeArr2, ConstantPool constantPool) {
        this.byte_code_offset = i;
        this.number_of_locals = i2;
        this.types_of_locals = stackMapTypeArr;
        this.number_of_stack_items = i3;
        this.types_of_stack_items = stackMapTypeArr2;
        this.constant_pool = constantPool;
    }
}
