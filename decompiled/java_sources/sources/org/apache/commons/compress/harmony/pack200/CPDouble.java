package org.apache.commons.compress.harmony.pack200;

/* loaded from: classes12.dex */
public class CPDouble extends CPConstant<CPDouble> {

    /* renamed from: f */
    public final double f106495f;

    public CPDouble(double d) {
        this.f106495f = d;
    }

    public double getDouble() {
        return this.f106495f;
    }

    @Override // java.lang.Comparable
    public int compareTo(CPDouble cPDouble) {
        return Double.compare(this.f106495f, cPDouble.f106495f);
    }
}
