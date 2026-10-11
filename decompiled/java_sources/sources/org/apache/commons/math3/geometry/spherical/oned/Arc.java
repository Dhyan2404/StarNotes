package org.apache.commons.math3.geometry.spherical.oned;

import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class Arc {

    /* renamed from: a */
    public final double f108413a;

    /* renamed from: b */
    public final double f108414b;

    /* renamed from: c */
    public final double f108415c;

    /* renamed from: d */
    public final double f108416d;

    public Arc(double d, double d2, double d3) throws NumberIsTooLargeException {
        this.f108416d = d3;
        if (!Precision.equals(d, d2, 0)) {
            double d4 = d2 - d;
            if (d4 < 6.283185307179586d) {
                if (d > d2) {
                    throw new NumberIsTooLargeException(LocalizedFormats.ENDPOINTS_NOT_AN_INTERVAL, Double.valueOf(d), Double.valueOf(d2), true);
                }
                double normalizeAngle = MathUtils.normalizeAngle(d, 3.141592653589793d);
                this.f108413a = normalizeAngle;
                double d5 = d4 + normalizeAngle;
                this.f108414b = d5;
                this.f108415c = (normalizeAngle + d5) * 0.5d;
                return;
            }
        }
        this.f108413a = 0.0d;
        this.f108414b = 6.283185307179586d;
        this.f108415c = 3.141592653589793d;
    }

    public Region.Location checkPoint(double d) {
        double normalizeAngle = MathUtils.normalizeAngle(d, this.f108415c);
        double d2 = this.f108413a;
        double d3 = this.f108416d;
        if (normalizeAngle >= d2 - d3) {
            double d4 = this.f108414b;
            if (normalizeAngle <= d4 + d3) {
                if ((normalizeAngle <= d2 + d3 || normalizeAngle >= d4 - d3) && getSize() < 6.283185307179586d - this.f108416d) {
                    return Region.Location.BOUNDARY;
                }
                return Region.Location.INSIDE;
            }
        }
        return Region.Location.OUTSIDE;
    }

    public double getBarycenter() {
        return this.f108415c;
    }

    public double getInf() {
        return this.f108413a;
    }

    public double getSize() {
        return this.f108414b - this.f108413a;
    }

    public double getSup() {
        return this.f108414b;
    }

    public double getTolerance() {
        return this.f108416d;
    }
}
