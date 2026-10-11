package org.apache.commons.compress.harmony.pack200;

/* loaded from: classes12.dex */
public class CPLong extends CPConstant<CPLong> {

    /* renamed from: f */
    public final long f106498f;

    public CPLong(long j) {
        this.f106498f = j;
    }

    public long getLong() {
        return this.f106498f;
    }

    public String toString() {
        return "" + this.f106498f;
    }

    @Override // java.lang.Comparable
    public int compareTo(CPLong cPLong) {
        return Long.compare(this.f106498f, cPLong.f106498f);
    }
}
