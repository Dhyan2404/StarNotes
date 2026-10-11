package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes12.dex */
public class SourceFileAttribute extends Attribute {

    /* renamed from: e */
    public static CPUTF8 f107285e;

    /* renamed from: c */
    public final CPUTF8 f107286c;

    /* renamed from: d */
    public int f107287d;

    public SourceFileAttribute(CPUTF8 cputf8) {
        super(f107285e);
        this.f107286c = cputf8;
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        f107285e = cputf8;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || getClass() != obj.getClass()) {
            return false;
        }
        SourceFileAttribute sourceFileAttribute = (SourceFileAttribute) obj;
        CPUTF8 cputf8 = this.f107286c;
        if (cputf8 == null) {
            if (sourceFileAttribute.f107286c != null) {
                return false;
            }
        } else if (!cputf8.equals(sourceFileAttribute.f107286c)) {
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
        return new ClassFileEntry[]{getAttributeName(), this.f107286c};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        CPUTF8 cputf8 = this.f107286c;
        return hashCode + (cputf8 == null ? 0 : cputf8.hashCode());
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public boolean isSourceFileAttribute() {
        return true;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.f107287d = classConstantPool.indexOf(this.f107286c);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "SourceFile: " + this.f107286c;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107287d);
    }
}
