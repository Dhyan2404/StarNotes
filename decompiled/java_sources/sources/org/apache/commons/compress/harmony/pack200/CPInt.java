package org.apache.commons.compress.harmony.pack200;

/* loaded from: classes12.dex */
public class CPInt extends CPConstant<CPInt> {

    /* renamed from: f */
    public final int f106497f;

    public CPInt(int i) {
        this.f106497f = i;
    }

    public int getInt() {
        return this.f106497f;
    }

    @Override // java.lang.Comparable
    public int compareTo(CPInt cPInt) {
        return Integer.compare(this.f106497f, cPInt.f106497f);
    }
}
