package org.apache.commons.math3.ode.sampling;

import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class FieldStepNormalizer<T extends RealFieldElement<T>> implements FieldStepHandler<T> {

    /* renamed from: a */
    public double f109026a;

    /* renamed from: b */
    public final FieldFixedStepHandler<T> f109027b;

    /* renamed from: c */
    public FieldODEStateAndDerivative<T> f109028c;

    /* renamed from: d */
    public FieldODEStateAndDerivative<T> f109029d;

    /* renamed from: e */
    public boolean f109030e;

    /* renamed from: f */
    public final StepNormalizerBounds f109031f;

    /* renamed from: g */
    public final StepNormalizerMode f109032g;

    public FieldStepNormalizer(double d, FieldFixedStepHandler<T> fieldFixedStepHandler) {
        this(d, fieldFixedStepHandler, StepNormalizerMode.INCREMENT, StepNormalizerBounds.FIRST);
    }

    /* renamed from: a */
    public final void m67898a(boolean z) {
        if (this.f109031f.firstIncluded() || this.f109028c.getTime().getReal() != this.f109029d.getTime().getReal()) {
            this.f109027b.handleStep(this.f109029d, z);
        }
    }

    /* renamed from: b */
    public final boolean m67899b(T t, FieldStepInterpolator<T> fieldStepInterpolator) {
        if (this.f109030e) {
            if (t.getReal() <= fieldStepInterpolator.getCurrentState().getTime().getReal()) {
                return true;
            }
        } else if (t.getReal() >= fieldStepInterpolator.getCurrentState().getTime().getReal()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v7, types: [org.apache.commons.math3.RealFieldElement] */
    @Override // org.apache.commons.math3.ode.sampling.FieldStepHandler
    public void handleStep(FieldStepInterpolator<T> fieldStepInterpolator, boolean z) throws MaxCountExceededException {
        T t;
        double floor;
        boolean z2;
        if (this.f109029d == null) {
            FieldODEStateAndDerivative<T> previousState = fieldStepInterpolator.getPreviousState();
            this.f109028c = previousState;
            this.f109029d = previousState;
            boolean isForward = fieldStepInterpolator.isForward();
            this.f109030e = isForward;
            if (!isForward) {
                this.f109026a = -this.f109026a;
            }
        }
        if (this.f109032g == StepNormalizerMode.INCREMENT) {
            t = this.f109029d.getTime();
            floor = this.f109026a;
        } else {
            t = (T) this.f109029d.getTime().getField().getZero();
            floor = (FastMath.floor(this.f109029d.getTime().getReal() / this.f109026a) + 1.0d) * this.f109026a;
        }
        RealFieldElement realFieldElement = (RealFieldElement) t.add(floor);
        if (this.f109032g == StepNormalizerMode.MULTIPLES && Precision.equals(realFieldElement.getReal(), this.f109029d.getTime().getReal(), 1)) {
            realFieldElement = (RealFieldElement) realFieldElement.add(this.f109026a);
        }
        boolean m67899b = m67899b(realFieldElement, fieldStepInterpolator);
        while (true) {
            z2 = false;
            if (!m67899b) {
                break;
            }
            m67898a(false);
            this.f109029d = fieldStepInterpolator.getInterpolatedState(realFieldElement);
            realFieldElement = (RealFieldElement) realFieldElement.add(this.f109026a);
            m67899b = m67899b(realFieldElement, fieldStepInterpolator);
        }
        if (z) {
            if (this.f109031f.lastIncluded() && this.f109029d.getTime().getReal() != fieldStepInterpolator.getCurrentState().getTime().getReal()) {
                z2 = true;
            }
            m67898a(!z2);
            if (z2) {
                this.f109029d = fieldStepInterpolator.getCurrentState();
                m67898a(true);
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.FieldStepHandler
    public void init(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, T t) {
        this.f109028c = null;
        this.f109029d = null;
        this.f109030e = true;
        this.f109027b.init(fieldODEStateAndDerivative, t);
    }

    public FieldStepNormalizer(double d, FieldFixedStepHandler<T> fieldFixedStepHandler, StepNormalizerMode stepNormalizerMode) {
        this(d, fieldFixedStepHandler, stepNormalizerMode, StepNormalizerBounds.FIRST);
    }

    public FieldStepNormalizer(double d, FieldFixedStepHandler<T> fieldFixedStepHandler, StepNormalizerBounds stepNormalizerBounds) {
        this(d, fieldFixedStepHandler, StepNormalizerMode.INCREMENT, stepNormalizerBounds);
    }

    public FieldStepNormalizer(double d, FieldFixedStepHandler<T> fieldFixedStepHandler, StepNormalizerMode stepNormalizerMode, StepNormalizerBounds stepNormalizerBounds) {
        this.f109026a = FastMath.abs(d);
        this.f109027b = fieldFixedStepHandler;
        this.f109032g = stepNormalizerMode;
        this.f109031f = stepNormalizerBounds;
        this.f109028c = null;
        this.f109029d = null;
        this.f109030e = true;
    }
}
