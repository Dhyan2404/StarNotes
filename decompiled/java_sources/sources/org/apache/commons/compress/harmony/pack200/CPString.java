package org.apache.commons.compress.harmony.pack200;

/* loaded from: classes12.dex */
public class CPString extends CPConstant<CPString> {

    /* renamed from: f */
    public final String f106509f;

    /* renamed from: g */
    public final CPUTF8 f106510g;

    public CPString(CPUTF8 cputf8) {
        this.f106510g = cputf8;
        this.f106509f = cputf8.getUnderlyingString();
    }

    public int getIndexInCpUtf8() {
        return this.f106510g.getIndex();
    }

    public String toString() {
        return this.f106509f;
    }

    @Override // java.lang.Comparable
    public int compareTo(CPString cPString) {
        return this.f106509f.compareTo(cPString.f106509f);
    }
}
