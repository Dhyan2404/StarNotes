package org.apache.commons.math3.stat.interval;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public class ConfidenceInterval {

    /* renamed from: a */
    public double f109767a;

    /* renamed from: b */
    public double f109768b;

    /* renamed from: c */
    public double f109769c;

    public ConfidenceInterval(double d, double d2, double d3) {
        m68169a(d, d2, d3);
        this.f109767a = d;
        this.f109768b = d2;
        this.f109769c = d3;
    }

    /* renamed from: a */
    public final void m68169a(double d, double d2, double d3) {
        if (d >= d2) {
            throw new MathIllegalArgumentException(LocalizedFormats.LOWER_BOUND_NOT_BELOW_UPPER_BOUND, Double.valueOf(d), Double.valueOf(d2));
        }
        if (d3 <= 0.0d || d3 >= 1.0d) {
            throw new MathIllegalArgumentException(LocalizedFormats.OUT_OF_BOUNDS_CONFIDENCE_LEVEL, Double.valueOf(d3), 0, 1);
        }
    }

    public double getConfidenceLevel() {
        return this.f109769c;
    }

    public double getLowerBound() {
        return this.f109767a;
    }

    public double getUpperBound() {
        return this.f109768b;
    }

    public String toString() {
        return IteratorUtils.f104923a + this.f109767a + AndroidTreeView.f47214k + this.f109768b + "] (confidence level:" + this.f109769c + MotionUtils.f31762d;
    }
}
