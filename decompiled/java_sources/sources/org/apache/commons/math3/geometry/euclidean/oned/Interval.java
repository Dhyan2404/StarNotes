package org.apache.commons.math3.geometry.euclidean.oned;

import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.partitioning.Region;

/* loaded from: classes12.dex */
public class Interval {

    /* renamed from: a */
    public final double f108233a;

    /* renamed from: b */
    public final double f108234b;

    public Interval(double d, double d2) {
        if (d2 < d) {
            throw new NumberIsTooSmallException(LocalizedFormats.ENDPOINTS_NOT_AN_INTERVAL, Double.valueOf(d2), Double.valueOf(d), true);
        }
        this.f108233a = d;
        this.f108234b = d2;
    }

    public Region.Location checkPoint(double d, double d2) {
        double d3 = this.f108233a;
        if (d >= d3 - d2) {
            double d4 = this.f108234b;
            if (d <= d4 + d2) {
                return (d <= d3 + d2 || d >= d4 - d2) ? Region.Location.BOUNDARY : Region.Location.INSIDE;
            }
        }
        return Region.Location.OUTSIDE;
    }

    public double getBarycenter() {
        return (this.f108233a + this.f108234b) * 0.5d;
    }

    public double getInf() {
        return this.f108233a;
    }

    @Deprecated
    public double getLength() {
        return getSize();
    }

    @Deprecated
    public double getLower() {
        return getInf();
    }

    @Deprecated
    public double getMidPoint() {
        return getBarycenter();
    }

    public double getSize() {
        return this.f108234b - this.f108233a;
    }

    public double getSup() {
        return this.f108234b;
    }

    @Deprecated
    public double getUpper() {
        return getSup();
    }
}
