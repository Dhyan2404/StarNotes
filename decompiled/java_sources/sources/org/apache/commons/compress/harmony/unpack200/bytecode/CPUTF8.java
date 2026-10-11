package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes12.dex */
public class CPUTF8 extends ConstantPoolEntry {

    /* renamed from: c */
    public final String f107156c;

    /* renamed from: d */
    public boolean f107157d;

    /* renamed from: e */
    public int f107158e;

    public CPUTF8(String str, int i) {
        super((byte) 1, i);
        Objects.requireNonNull(str, "utf8");
        this.f107156c = str;
    }

    /* renamed from: a */
    public final void m67117a() {
        this.f107157d = true;
        this.f107158e = this.f107156c.hashCode() + 31;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.f107156c.equals(((CPUTF8) obj).f107156c);
        }
        return false;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        if (!this.f107157d) {
            m67117a();
        }
        return this.f107158e;
    }

    public void setGlobalIndex(int i) {
        this.globalIndex = i;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "UTF8: " + this.f107156c;
    }

    public String underlyingString() {
        return this.f107156c;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.ConstantPoolEntry
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeUTF(this.f107156c);
    }

    public CPUTF8(String str) {
        this(str, -1);
    }
}
