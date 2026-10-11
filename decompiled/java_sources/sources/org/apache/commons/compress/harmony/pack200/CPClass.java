package org.apache.commons.compress.harmony.pack200;

/* loaded from: classes12.dex */
public class CPClass extends CPConstant<CPClass> {

    /* renamed from: f */
    public final String f106492f;

    /* renamed from: g */
    public final CPUTF8 f106493g;

    /* renamed from: h */
    public final boolean f106494h;

    public CPClass(CPUTF8 cputf8) {
        this.f106493g = cputf8;
        String underlyingString = cputf8.getUnderlyingString();
        this.f106492f = underlyingString;
        for (char c : underlyingString.toCharArray()) {
            if (c <= '-') {
                this.f106494h = true;
                return;
            }
        }
        this.f106494h = false;
    }

    public int getIndexInCpUtf8() {
        return this.f106493g.getIndex();
    }

    public boolean isInnerClass() {
        return this.f106494h;
    }

    public String toString() {
        return this.f106492f;
    }

    @Override // java.lang.Comparable
    public int compareTo(CPClass cPClass) {
        return this.f106492f.compareTo(cPClass.f106492f);
    }
}
