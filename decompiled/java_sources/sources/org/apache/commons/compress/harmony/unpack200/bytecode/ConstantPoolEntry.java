package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes12.dex */
public abstract class ConstantPoolEntry extends ClassFileEntry {
    public static final byte CP_Class = 7;
    public static final byte CP_Double = 6;
    public static final byte CP_Fieldref = 9;
    public static final byte CP_Float = 4;
    public static final byte CP_Integer = 3;
    public static final byte CP_InterfaceMethodref = 11;
    public static final byte CP_Long = 5;
    public static final byte CP_Methodref = 10;
    public static final byte CP_NameAndType = 12;
    public static final byte CP_String = 8;
    public static final byte CP_UTF8 = 1;

    /* renamed from: b */
    public byte f107166b;
    protected int globalIndex;

    public ConstantPoolEntry(byte b, int i) {
        this.f107166b = b;
        this.globalIndex = i;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void doWrite(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.f107166b);
        writeBody(dataOutputStream);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public abstract boolean equals(Object obj);

    public int getGlobalIndex() {
        return this.globalIndex;
    }

    public byte getTag() {
        return this.f107166b;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public abstract int hashCode();

    public abstract void writeBody(DataOutputStream dataOutputStream) throws IOException;
}
