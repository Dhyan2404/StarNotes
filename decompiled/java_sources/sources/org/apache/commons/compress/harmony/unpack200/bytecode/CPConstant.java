package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.util.Objects;

/* loaded from: classes12.dex */
public abstract class CPConstant extends ConstantPoolEntry {

    /* renamed from: c */
    public final Object f107125c;

    public CPConstant(byte b, Object obj, int i) {
        super(b, i);
        Objects.requireNonNull(obj, "value");
        this.f107125c = obj;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CPConstant cPConstant = (CPConstant) obj;
        Object obj2 = this.f107125c;
        if (obj2 == null) {
            if (cPConstant.f107125c != null) {
                return false;
            }
        } else if (!obj2.equals(cPConstant.f107125c)) {
            return false;
        }
        return true;
    }

    public Object getValue() {
        return this.f107125c;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        Object obj = this.f107125c;
        return 31 + (obj == null ? 0 : obj.hashCode());
    }
}
