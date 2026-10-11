package org.apache.commons.compress.harmony.pack200;

/* loaded from: classes12.dex */
public class CPFloat extends CPConstant<CPFloat> {

    /* renamed from: f */
    public final float f106496f;

    public CPFloat(float f) {
        this.f106496f = f;
    }

    public float getFloat() {
        return this.f106496f;
    }

    @Override // java.lang.Comparable
    public int compareTo(CPFloat cPFloat) {
        return Float.compare(this.f106496f, cPFloat.f106496f);
    }
}
