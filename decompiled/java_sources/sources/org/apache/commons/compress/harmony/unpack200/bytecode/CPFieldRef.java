package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes12.dex */
public class CPFieldRef extends ConstantPoolEntry {

    /* renamed from: c */
    public CPClass f107126c;

    /* renamed from: d */
    public transient int f107127d;

    /* renamed from: e */
    public final CPNameAndType f107128e;

    /* renamed from: f */
    public transient int f107129f;

    /* renamed from: g */
    public boolean f107130g;

    /* renamed from: h */
    public int f107131h;

    public CPFieldRef(CPClass cPClass, CPNameAndType cPNameAndType, int i) {
        super((byte) 9, i);
        this.f107126c = cPClass;
        this.f107128e = cPNameAndType;
    }

    /* renamed from: a */
    public final void m67109a() {
        this.f107130g = true;
        CPClass cPClass = this.f107126c;
        int hashCode = ((cPClass == null ? 0 : cPClass.hashCode()) + 31) * 31;
        CPNameAndType cPNameAndType = this.f107128e;
        this.f107131h = hashCode + (cPNameAndType != null ? cPNameAndType.hashCode() : 0);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CPFieldRef cPFieldRef = (CPFieldRef) obj;
        CPClass cPClass = this.f107126c;
        if (cPClass == null) {
            if (cPFieldRef.f107126c != null) {
                return false;
            }
        } else if (!cPClass.equals(cPFieldRef.f107126c)) {
            return false;
        }
        CPNameAndType cPNameAndType = this.f107128e;
        if (cPNameAndType == null) {
            if (cPFieldRef.f107128e != null) {
                return false;
            }
        } else if (!cPNameAndType.equals(cPFieldRef.f107128e)) {
            return false;
        }
        return true;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        return new ClassFileEntry[]{this.f107126c, this.f107128e};
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        if (!this.f107130g) {
            m67109a();
        }
        return this.f107131h;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.f107129f = classConstantPool.indexOf(this.f107128e);
        this.f107127d = classConstantPool.indexOf(this.f107126c);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "FieldRef: " + this.f107126c + "#" + this.f107128e;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.f107127d);
        dataOutputStream.writeShort(this.f107129f);
    }
}
