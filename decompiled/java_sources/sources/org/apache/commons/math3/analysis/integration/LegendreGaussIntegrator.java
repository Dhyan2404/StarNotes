package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

@Deprecated
/* loaded from: classes12.dex */
public class LegendreGaussIntegrator extends BaseAbstractUnivariateIntegrator {

    /* renamed from: k */
    public static final double[] f107825k = {(-1.0d) / FastMath.sqrt(3.0d), 1.0d / FastMath.sqrt(3.0d)};

    /* renamed from: l */
    public static final double[] f107826l = {1.0d, 1.0d};

    /* renamed from: m */
    public static final double[] f107827m = {-FastMath.sqrt(0.6d), 0.0d, FastMath.sqrt(0.6d)};

    /* renamed from: n */
    public static final double[] f107828n = {0.5555555555555556d, 0.8888888888888888d, 0.5555555555555556d};

    /* renamed from: o */
    public static final double[] f107829o = {-FastMath.sqrt(((FastMath.sqrt(30.0d) * 2.0d) + 15.0d) / 35.0d), -FastMath.sqrt((15.0d - (FastMath.sqrt(30.0d) * 2.0d)) / 35.0d), FastMath.sqrt((15.0d - (FastMath.sqrt(30.0d) * 2.0d)) / 35.0d), FastMath.sqrt(((FastMath.sqrt(30.0d) * 2.0d) + 15.0d) / 35.0d)};

    /* renamed from: p */
    public static final double[] f107830p = {(90.0d - (FastMath.sqrt(30.0d) * 5.0d)) / 180.0d, ((FastMath.sqrt(30.0d) * 5.0d) + 90.0d) / 180.0d, ((FastMath.sqrt(30.0d) * 5.0d) + 90.0d) / 180.0d, (90.0d - (FastMath.sqrt(30.0d) * 5.0d)) / 180.0d};

    /* renamed from: q */
    public static final double[] f107831q = {-FastMath.sqrt(((FastMath.sqrt(70.0d) * 2.0d) + 35.0d) / 63.0d), -FastMath.sqrt((35.0d - (FastMath.sqrt(70.0d) * 2.0d)) / 63.0d), 0.0d, FastMath.sqrt((35.0d - (FastMath.sqrt(70.0d) * 2.0d)) / 63.0d), FastMath.sqrt(((FastMath.sqrt(70.0d) * 2.0d) + 35.0d) / 63.0d)};

    /* renamed from: r */
    public static final double[] f107832r = {(322.0d - (FastMath.sqrt(70.0d) * 13.0d)) / 900.0d, ((FastMath.sqrt(70.0d) * 13.0d) + 322.0d) / 900.0d, 0.5688888888888889d, ((FastMath.sqrt(70.0d) * 13.0d) + 322.0d) / 900.0d, (322.0d - (FastMath.sqrt(70.0d) * 13.0d)) / 900.0d};

    /* renamed from: i */
    public final double[] f107833i;

    /* renamed from: j */
    public final double[] f107834j;

    public LegendreGaussIntegrator(int i, double d, double d2, int i2, int i3) throws MathIllegalArgumentException, NotStrictlyPositiveException, NumberIsTooSmallException {
        super(d, d2, i2, i3);
        if (i == 2) {
            this.f107833i = f107825k;
            this.f107834j = f107826l;
            return;
        }
        if (i == 3) {
            this.f107833i = f107827m;
            this.f107834j = f107828n;
        } else if (i == 4) {
            this.f107833i = f107829o;
            this.f107834j = f107830p;
        } else {
            if (i == 5) {
                this.f107833i = f107831q;
                this.f107834j = f107832r;
                return;
            }
            throw new MathIllegalArgumentException(LocalizedFormats.N_POINTS_GAUSS_LEGENDRE_INTEGRATOR_NOT_SUPPORTED, Integer.valueOf(i), 2, 5);
        }
    }

    /* renamed from: a */
    public final double m67486a(int i) throws TooManyEvaluationsException {
        double max = (getMax() - getMin()) / i;
        double d = max / 2.0d;
        double min = getMin() + d;
        double d2 = 0.0d;
        int i2 = 0;
        while (i2 < i) {
            int i3 = 0;
            while (true) {
                double[] dArr = this.f107833i;
                if (i3 < dArr.length) {
                    d2 += this.f107834j[i3] * computeObjectiveValue(min + (dArr[i3] * d));
                    i3++;
                    i2 = i2;
                }
            }
            min += max;
            i2++;
        }
        return d * d2;
    }

    @Override // org.apache.commons.math3.analysis.integration.BaseAbstractUnivariateIntegrator
    public double doIntegrate() throws MathIllegalArgumentException, TooManyEvaluationsException, MaxCountExceededException {
        double m67486a = m67486a(1);
        int i = 2;
        while (true) {
            double m67486a2 = m67486a(i);
            double abs = FastMath.abs(m67486a2 - m67486a);
            double max = FastMath.max(getAbsoluteAccuracy(), getRelativeAccuracy() * (FastMath.abs(m67486a) + FastMath.abs(m67486a2)) * 0.5d);
            if (getIterations() + 1 >= getMinimalIterationCount() && abs <= max) {
                return m67486a2;
            }
            i = FastMath.max((int) (FastMath.min(4.0d, FastMath.pow(abs / max, 0.5d / this.f107833i.length)) * i), i + 1);
            incrementCount();
            m67486a = m67486a2;
        }
    }

    public LegendreGaussIntegrator(int i, double d, double d2) throws MathIllegalArgumentException {
        this(i, d, d2, 3, Integer.MAX_VALUE);
    }

    public LegendreGaussIntegrator(int i, int i2, int i3) throws MathIllegalArgumentException {
        this(i, 1.0E-6d, 1.0E-15d, i2, i3);
    }
}
