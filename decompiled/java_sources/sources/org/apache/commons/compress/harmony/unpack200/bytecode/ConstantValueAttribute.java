package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes12.dex */
public class ConstantValueAttribute extends Attribute {

    /* renamed from: e */
    public static CPUTF8 f107167e;

    /* renamed from: c */
    public int f107168c;

    /* renamed from: d */
    public final ClassFileEntry f107169d;

    public ConstantValueAttribute(ClassFileEntry classFileEntry) {
        super(f107167e);
        Objects.requireNonNull(classFileEntry, "entry");
        this.f107169d = classFileEntry;
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        f107167e = cputf8;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        ConstantValueAttribute constantValueAttribute = (ConstantValueAttribute) obj;
        ClassFileEntry classFileEntry = this.f107169d;
        if (classFileEntry == null) {
            if (constantValueAttribute.f107169d != null) {
                return false;
            }
        } else if (!classFileEntry.equals(constantValueAttribute.f107169d)) {
            return false;
        }
        return true;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public int getLength() {
        return 2;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        return new ClassFileEntry[]{getAttributeName(), this.f107169d};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        ClassFileEntry classFileEntry = this.f107169d;
        return hashCode + (classFileEntry == null ? 0 : classFileEntry.hashCode());
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.f107169d.resolve(classConstantPool);
        this.f107168c = classConstantPool.indexOf(this.f107169d);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "Constant:" + this.f107169d;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107168c);
    }
}
