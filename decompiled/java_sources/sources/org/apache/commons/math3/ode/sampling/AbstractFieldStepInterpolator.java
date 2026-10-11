package org.apache.commons.math3.ode.sampling;

import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;

/* loaded from: classes12.dex */
public abstract class AbstractFieldStepInterpolator<T extends RealFieldElement<T>> implements FieldStepInterpolator<T> {

    /* renamed from: a */
    public final FieldODEStateAndDerivative<T> f109018a;

    /* renamed from: b */
    public final FieldODEStateAndDerivative<T> f109019b;

    /* renamed from: c */
    public final FieldODEStateAndDerivative<T> f109020c;

    /* renamed from: d */
    public final FieldODEStateAndDerivative<T> f109021d;

    /* renamed from: e */
    public final boolean f109022e;

    /* renamed from: f */
    public FieldEquationsMapper<T> f109023f;

    public AbstractFieldStepInterpolator(boolean z, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        this.f109022e = z;
        this.f109018a = fieldODEStateAndDerivative;
        this.f109019b = fieldODEStateAndDerivative2;
        this.f109020c = fieldODEStateAndDerivative3;
        this.f109021d = fieldODEStateAndDerivative4;
        this.f109023f = fieldEquationsMapper;
    }

    public abstract FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t, T t2, T t3, T t4) throws MaxCountExceededException;

    public abstract AbstractFieldStepInterpolator<T> create(boolean z, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper);

    @Override // org.apache.commons.math3.ode.sampling.FieldStepInterpolator
    public FieldODEStateAndDerivative<T> getCurrentState() {
        return this.f109021d;
    }

    public FieldODEStateAndDerivative<T> getGlobalCurrentState() {
        return this.f109019b;
    }

    public FieldODEStateAndDerivative<T> getGlobalPreviousState() {
        return this.f109018a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.ode.sampling.FieldStepInterpolator
    public FieldODEStateAndDerivative<T> getInterpolatedState(T t) {
        RealFieldElement realFieldElement = (RealFieldElement) t.subtract(this.f109018a.getTime());
        RealFieldElement realFieldElement2 = (RealFieldElement) this.f109019b.getTime().subtract(t);
        return computeInterpolatedStateAndDerivatives(this.f109023f, t, (RealFieldElement) realFieldElement.divide((RealFieldElement) this.f109019b.getTime().subtract(this.f109018a.getTime())), realFieldElement, realFieldElement2);
    }

    @Override // org.apache.commons.math3.ode.sampling.FieldStepInterpolator
    public FieldODEStateAndDerivative<T> getPreviousState() {
        return this.f109020c;
    }

    @Override // org.apache.commons.math3.ode.sampling.FieldStepInterpolator
    public boolean isForward() {
        return this.f109022e;
    }

    public AbstractFieldStepInterpolator<T> restrictStep(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2) {
        return create(this.f109022e, this.f109018a, this.f109019b, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, this.f109023f);
    }
}
