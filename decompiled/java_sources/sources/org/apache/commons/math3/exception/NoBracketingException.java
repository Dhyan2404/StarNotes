package org.apache.commons.math3.exception;

import org.apache.commons.math3.exception.util.Localizable;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public class NoBracketingException extends MathIllegalArgumentException {
    private static final long serialVersionUID = -3629324471511904459L;
    private final double fHi;
    private final double fLo;

    /* renamed from: hi */
    private final double f108086hi;

    /* renamed from: lo */
    private final double f108087lo;

    public NoBracketingException(double d, double d2, double d3, double d4) {
        this(LocalizedFormats.SAME_SIGN_AT_ENDPOINTS, d, d2, d3, d4, new Object[0]);
    }

    public double getFHi() {
        return this.fHi;
    }

    public double getFLo() {
        return this.fLo;
    }

    public double getHi() {
        return this.f108086hi;
    }

    public double getLo() {
        return this.f108087lo;
    }

    public NoBracketingException(Localizable localizable, double d, double d2, double d3, double d4, Object... objArr) {
        super(localizable, Double.valueOf(d), Double.valueOf(d2), Double.valueOf(d3), Double.valueOf(d4), objArr);
        this.f108087lo = d;
        this.f108086hi = d2;
        this.fLo = d3;
        this.fHi = d4;
    }
}
