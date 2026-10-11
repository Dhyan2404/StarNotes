package org.apache.commons.compress.harmony.pack200;

/* loaded from: classes12.dex */
public class CPUTF8 extends ConstantPoolEntry implements Comparable {

    /* renamed from: f */
    public final String f106511f;

    public CPUTF8(String str) {
        this.f106511f = str;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.f106511f.compareTo(((CPUTF8) obj).f106511f);
    }

    public String getUnderlyingString() {
        return this.f106511f;
    }

    public String toString() {
        return this.f106511f;
    }
}
