package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes12.dex */
public class CPString extends CPConstant {

    /* renamed from: d */
    public transient int f107152d;

    /* renamed from: e */
    public final CPUTF8 f107153e;

    /* renamed from: f */
    public boolean f107154f;

    /* renamed from: g */
    public int f107155g;

    public CPString(CPUTF8 cputf8, int i) {
        super((byte) 8, cputf8, i);
        this.f107153e = cputf8;
    }

    /* renamed from: a */
    public final void m67116a() {
        this.f107154f = true;
        this.f107155g = 31 + this.f107153e.hashCode();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        return new ClassFileEntry[]{this.f107153e};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.CPConstant, org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        if (!this.f107154f) {
            m67116a();
        }
        return this.f107155g;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.f107152d = classConstantPool.indexOf(this.f107153e);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "String: " + getValue();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107152d);
    }
}
