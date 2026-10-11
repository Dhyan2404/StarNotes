package org.apache.commons.math3.exception;

import org.apache.commons.math3.exception.util.Localizable;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public class OutOfRangeException extends MathIllegalNumberException {
    private static final long serialVersionUID = 111601815794403609L;

    /* renamed from: hi */
    private final Number f108088hi;

    /* renamed from: lo */
    private final Number f108089lo;

    public OutOfRangeException(Number number, Number number2, Number number3) {
        this(LocalizedFormats.OUT_OF_RANGE_SIMPLE, number, number2, number3);
    }

    public Number getHi() {
        return this.f108088hi;
    }

    public Number getLo() {
        return this.f108089lo;
    }

    public OutOfRangeException(Localizable localizable, Number number, Number number2, Number number3) {
        super(localizable, number, number2, number3);
        this.f108089lo = number2;
        this.f108088hi = number3;
    }
}
