package org.apache.commons.compress.harmony.unpack200.bytecode;

/* loaded from: classes12.dex */
public class CPInterfaceMethodRef extends CPRef {

    /* renamed from: f */
    public boolean f107132f;

    /* renamed from: g */
    public int f107133g;

    public CPInterfaceMethodRef(CPClass cPClass, CPNameAndType cPNameAndType, int i) {
        super((byte) 11, cPClass, cPNameAndType, i);
    }

    /* renamed from: a */
    public final void m67110a() {
        this.f107132f = true;
        this.f107133g = ((this.f107149c.hashCode() + 31) * 31) + this.nameAndType.hashCode();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        if (!this.f107132f) {
            m67110a();
        }
        return this.f107133g;
    }

    public int invokeInterfaceCount() {
        return this.nameAndType.invokeInterfaceCount();
    }
}
