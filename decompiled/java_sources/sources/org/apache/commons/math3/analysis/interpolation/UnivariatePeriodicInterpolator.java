package org.apache.commons.math3.analysis.interpolation;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class UnivariatePeriodicInterpolator implements UnivariateInterpolator {
    public static final int DEFAULT_EXTEND = 5;

    /* renamed from: e */
    public final UnivariateInterpolator f107922e;

    /* renamed from: f */
    public final double f107923f;

    /* renamed from: g */
    public final int f107924g;

    /* renamed from: org.apache.commons.math3.analysis.interpolation.UnivariatePeriodicInterpolator$a */
    /* loaded from: classes12.dex */
    public class C19059a implements UnivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ UnivariateFunction f107925e;

        /* renamed from: f */
        public final /* synthetic */ double f107926f;

        public C19059a(UnivariateFunction univariateFunction, double d) {
            this.f107925e = univariateFunction;
            this.f107926f = d;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) throws MathIllegalArgumentException {
            return this.f107925e.value(MathUtils.reduce(d, UnivariatePeriodicInterpolator.this.f107923f, this.f107926f));
        }
    }

    public UnivariatePeriodicInterpolator(UnivariateInterpolator univariateInterpolator, double d, int i) {
        this.f107922e = univariateInterpolator;
        this.f107923f = d;
        this.f107924g = i;
    }

    @Override // org.apache.commons.math3.analysis.interpolation.UnivariateInterpolator
    public UnivariateFunction interpolate(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NonMonotonicSequenceException {
        if (dArr.length < this.f107924g) {
            throw new NumberIsTooSmallException(Integer.valueOf(dArr.length), Integer.valueOf(this.f107924g), true);
        }
        MathArrays.checkOrder(dArr);
        double d = dArr[0];
        int length = dArr.length + (this.f107924g * 2);
        double[] dArr3 = new double[length];
        double[] dArr4 = new double[length];
        for (int i = 0; i < dArr.length; i++) {
            int i2 = i + this.f107924g;
            dArr3[i2] = MathUtils.reduce(dArr[i], this.f107923f, d);
            dArr4[i2] = dArr2[i];
        }
        int i3 = 0;
        while (true) {
            int i4 = this.f107924g;
            if (i3 >= i4) {
                MathArrays.sortInPlace(dArr3, dArr4);
                return new C19059a(this.f107922e.interpolate(dArr3, dArr4), d);
            }
            int length2 = (dArr.length - i4) + i3;
            double reduce = MathUtils.reduce(dArr[length2], this.f107923f, d);
            double d2 = this.f107923f;
            dArr3[i3] = reduce - d2;
            dArr4[i3] = dArr2[length2];
            int i5 = (length - this.f107924g) + i3;
            dArr3[i5] = MathUtils.reduce(dArr[i3], d2, d) + this.f107923f;
            dArr4[i5] = dArr2[i3];
            i3++;
        }
    }

    public UnivariatePeriodicInterpolator(UnivariateInterpolator univariateInterpolator, double d) {
        this(univariateInterpolator, d, 5);
    }
}
