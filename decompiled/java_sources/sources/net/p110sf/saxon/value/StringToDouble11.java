package net.p110sf.saxon.value;

import net.p110sf.saxon.type.StringToDouble;

/* loaded from: classes11.dex */
public class StringToDouble11 extends StringToDouble {

    /* renamed from: d */
    public static final StringToDouble11 f102921d = new StringToDouble11();

    public static StringToDouble11 getInstance() {
        return f102921d;
    }

    @Override // net.p110sf.saxon.type.StringToDouble
    public double signedPositiveInfinity() {
        return Double.POSITIVE_INFINITY;
    }
}
