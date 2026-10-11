package org.apache.commons.math3.optim.univariate;

import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.optim.OptimizationData;

/* loaded from: classes12.dex */
public class SearchInterval implements OptimizationData {

    /* renamed from: e */
    public final double f109292e;

    /* renamed from: f */
    public final double f109293f;

    /* renamed from: g */
    public final double f109294g;

    public SearchInterval(double d, double d2, double d3) {
        if (d >= d2) {
            throw new NumberIsTooLargeException(Double.valueOf(d), Double.valueOf(d2), false);
        }
        if (d3 >= d && d3 <= d2) {
            this.f109292e = d;
            this.f109293f = d2;
            this.f109294g = d3;
            return;
        }
        throw new OutOfRangeException(Double.valueOf(d3), Double.valueOf(d), Double.valueOf(d2));
    }

    public double getMax() {
        return this.f109293f;
    }

    public double getMin() {
        return this.f109292e;
    }

    public double getStartValue() {
        return this.f109294g;
    }

    public SearchInterval(double d, double d2) {
        this(d, d2, (d + d2) * 0.5d);
    }
}
