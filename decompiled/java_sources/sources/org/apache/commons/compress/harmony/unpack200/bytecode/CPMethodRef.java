package org.apache.commons.compress.harmony.unpack200.bytecode;

/* loaded from: classes12.dex */
public class CPMethodRef extends CPRef {

    /* renamed from: f */
    public boolean f107141f;

    /* renamed from: g */
    public int f107142g;

    public CPMethodRef(CPClass cPClass, CPNameAndType cPNameAndType, int i) {
        super((byte) 10, cPClass, cPNameAndType, i);
    }

    /* renamed from: a */
    public final void m67114a() {
        this.f107141f = true;
        this.f107142g = ((this.f107149c.hashCode() + 31) * 31) + this.nameAndType.hashCode();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.CPRef, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        return new ClassFileEntry[]{this.f107149c, this.nameAndType};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        if (!this.f107141f) {
            m67114a();
        }
        return this.f107142g;
    }
}
