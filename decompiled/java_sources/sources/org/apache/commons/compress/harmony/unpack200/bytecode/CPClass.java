package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes12.dex */
public class CPClass extends ConstantPoolEntry {

    /* renamed from: c */
    public int f107121c;

    /* renamed from: d */
    public final CPUTF8 f107122d;

    /* renamed from: e */
    public boolean f107123e;

    /* renamed from: f */
    public int f107124f;
    public String name;

    public CPClass(CPUTF8 cputf8, int i) {
        super((byte) 7, i);
        Objects.requireNonNull(cputf8, "name");
        this.name = cputf8.underlyingString();
        this.f107122d = cputf8;
    }

    /* renamed from: a */
    public final void m67108a() {
        this.f107123e = true;
        this.f107124f = this.f107122d.hashCode();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.f107122d.equals(((CPClass) obj).f107122d);
        }
        return false;
    }

    public String getName() {
        return this.name;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        return new ClassFileEntry[]{this.f107122d};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        if (!this.f107123e) {
            m67108a();
        }
        return this.f107124f;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.f107121c = classConstantPool.indexOf(this.f107122d);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "Class: " + getName();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107121c);
    }
}
