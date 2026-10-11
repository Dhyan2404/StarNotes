package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes12.dex */
public class LineNumberTableAttribute extends BCIRenumberedAttribute {

    /* renamed from: f */
    public static CPUTF8 f107197f;

    /* renamed from: c */
    public final int f107198c;

    /* renamed from: d */
    public final int[] f107199d;

    /* renamed from: e */
    public final int[] f107200e;

    public LineNumberTableAttribute(int i, int[] iArr, int[] iArr2) {
        super(f107197f);
        this.f107198c = i;
        this.f107199d = iArr;
        this.f107200e = iArr2;
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        f107197f = cputf8;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        return this == obj;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public int getLength() {
        return (this.f107198c * 4) + 2;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        return new ClassFileEntry[]{getAttributeName()};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute
    public int[] getStartPCs() {
        return this.f107199d;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "LineNumberTable: " + this.f107198c + " lines";
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107198c);
        for (int i = 0; i < this.f107198c; i++) {
            dataOutputStream.writeShort(this.f107199d[i]);
            dataOutputStream.writeShort(this.f107200e[i]);
        }
    }
}
