package org.apache.commons.math3.ode.sampling;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class StepNormalizer implements StepHandler {

    /* renamed from: e */
    public double f109033e;

    /* renamed from: f */
    public final FixedStepHandler f109034f;

    /* renamed from: g */
    public double f109035g;

    /* renamed from: h */
    public double f109036h;

    /* renamed from: i */
    public double[] f109037i;

    /* renamed from: j */
    public double[] f109038j;

    /* renamed from: k */
    public boolean f109039k;

    /* renamed from: l */
    public final StepNormalizerBounds f109040l;

    /* renamed from: m */
    public final StepNormalizerMode f109041m;

    public StepNormalizer(double d, FixedStepHandler fixedStepHandler) {
        this(d, fixedStepHandler, StepNormalizerMode.INCREMENT, StepNormalizerBounds.FIRST);
    }

    /* renamed from: a */
    public final void m67900a(boolean z) {
        if (this.f109040l.firstIncluded() || this.f109035g != this.f109036h) {
            this.f109034f.handleStep(this.f109036h, this.f109037i, this.f109038j, z);
        }
    }

    /* renamed from: b */
    public final boolean m67901b(double d, StepInterpolator stepInterpolator) {
        boolean z = this.f109039k;
        double currentTime = stepInterpolator.getCurrentTime();
        if (z) {
            if (d <= currentTime) {
                return true;
            }
        } else if (d >= currentTime) {
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public final void m67902c(StepInterpolator stepInterpolator, double d) throws MaxCountExceededException {
        this.f109036h = d;
        stepInterpolator.setInterpolatedTime(d);
        double[] interpolatedState = stepInterpolator.getInterpolatedState();
        double[] dArr = this.f109037i;
        System.arraycopy(interpolatedState, 0, dArr, 0, dArr.length);
        double[] interpolatedDerivatives = stepInterpolator.getInterpolatedDerivatives();
        double[] dArr2 = this.f109038j;
        System.arraycopy(interpolatedDerivatives, 0, dArr2, 0, dArr2.length);
    }

    @Override // org.apache.commons.math3.ode.sampling.StepHandler
    public void handleStep(StepInterpolator stepInterpolator, boolean z) throws MaxCountExceededException {
        boolean z2 = false;
        if (this.f109037i == null) {
            this.f109035g = stepInterpolator.getPreviousTime();
            double previousTime = stepInterpolator.getPreviousTime();
            this.f109036h = previousTime;
            stepInterpolator.setInterpolatedTime(previousTime);
            this.f109037i = (double[]) stepInterpolator.getInterpolatedState().clone();
            this.f109038j = (double[]) stepInterpolator.getInterpolatedDerivatives().clone();
            boolean z3 = stepInterpolator.getCurrentTime() >= this.f109036h;
            this.f109039k = z3;
            if (!z3) {
                this.f109033e = -this.f109033e;
            }
        }
        double floor = this.f109041m == StepNormalizerMode.INCREMENT ? this.f109036h + this.f109033e : (FastMath.floor(this.f109036h / this.f109033e) + 1.0d) * this.f109033e;
        if (this.f109041m == StepNormalizerMode.MULTIPLES && Precision.equals(floor, this.f109036h, 1)) {
            floor += this.f109033e;
        }
        boolean m67901b = m67901b(floor, stepInterpolator);
        while (m67901b) {
            m67900a(false);
            m67902c(stepInterpolator, floor);
            floor += this.f109033e;
            m67901b = m67901b(floor, stepInterpolator);
        }
        if (z) {
            if (this.f109040l.lastIncluded() && this.f109036h != stepInterpolator.getCurrentTime()) {
                z2 = true;
            }
            m67900a(!z2);
            if (z2) {
                m67902c(stepInterpolator, stepInterpolator.getCurrentTime());
                m67900a(true);
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.StepHandler
    public void init(double d, double[] dArr, double d2) {
        this.f109035g = Double.NaN;
        this.f109036h = Double.NaN;
        this.f109037i = null;
        this.f109038j = null;
        this.f109039k = true;
        this.f109034f.init(d, dArr, d2);
    }

    public StepNormalizer(double d, FixedStepHandler fixedStepHandler, StepNormalizerMode stepNormalizerMode) {
        this(d, fixedStepHandler, stepNormalizerMode, StepNormalizerBounds.FIRST);
    }

    public StepNormalizer(double d, FixedStepHandler fixedStepHandler, StepNormalizerBounds stepNormalizerBounds) {
        this(d, fixedStepHandler, StepNormalizerMode.INCREMENT, stepNormalizerBounds);
    }

    public StepNormalizer(double d, FixedStepHandler fixedStepHandler, StepNormalizerMode stepNormalizerMode, StepNormalizerBounds stepNormalizerBounds) {
        this.f109033e = FastMath.abs(d);
        this.f109034f = fixedStepHandler;
        this.f109041m = stepNormalizerMode;
        this.f109040l = stepNormalizerBounds;
        this.f109035g = Double.NaN;
        this.f109036h = Double.NaN;
        this.f109037i = null;
        this.f109038j = null;
        this.f109039k = true;
    }
}
