package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ode.sampling.FieldStepHandler;
import org.apache.commons.math3.ode.sampling.FieldStepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class ContinuousOutputFieldModel<T extends RealFieldElement<T>> implements FieldStepHandler<T> {

    /* renamed from: e */
    public List<FieldStepInterpolator<T>> f108743e = new ArrayList();

    /* renamed from: a */
    public T f108739a = null;

    /* renamed from: b */
    public T f108740b = null;

    /* renamed from: c */
    public boolean f108741c = true;

    /* renamed from: d */
    public int f108742d = 0;

    /* renamed from: a */
    public final void m67864a(int i, int i2) throws DimensionMismatchException {
        if (i != i2) {
            throw new DimensionMismatchException(i2, i);
        }
    }

    public void append(ContinuousOutputFieldModel<T> continuousOutputFieldModel) throws MathIllegalArgumentException, MaxCountExceededException {
        if (continuousOutputFieldModel.f108743e.size() == 0) {
            return;
        }
        if (this.f108743e.size() == 0) {
            this.f108739a = continuousOutputFieldModel.f108739a;
            this.f108741c = continuousOutputFieldModel.f108741c;
        } else {
            FieldODEStateAndDerivative<T> previousState = this.f108743e.get(0).getPreviousState();
            FieldODEStateAndDerivative<T> previousState2 = continuousOutputFieldModel.f108743e.get(0).getPreviousState();
            m67864a(previousState.getStateDimension(), previousState2.getStateDimension());
            m67864a(previousState.getNumberOfSecondaryStates(), previousState2.getNumberOfSecondaryStates());
            for (int i = 0; i < previousState.getNumberOfSecondaryStates(); i++) {
                m67864a(previousState.getSecondaryStateDimension(i), previousState2.getSecondaryStateDimension(i));
            }
            if (this.f108741c ^ continuousOutputFieldModel.f108741c) {
                throw new MathIllegalArgumentException(LocalizedFormats.PROPAGATION_DIRECTION_MISMATCH, new Object[0]);
            }
            FieldStepInterpolator<T> fieldStepInterpolator = this.f108743e.get(this.f108742d);
            T time = fieldStepInterpolator.getCurrentState().getTime();
            RealFieldElement realFieldElement = (RealFieldElement) time.subtract(fieldStepInterpolator.getPreviousState().getTime());
            RealFieldElement realFieldElement2 = (RealFieldElement) continuousOutputFieldModel.getInitialTime().subtract(time);
            if (((RealFieldElement) ((RealFieldElement) realFieldElement2.abs()).subtract((RealFieldElement) ((RealFieldElement) realFieldElement.abs()).multiply(0.001d))).getReal() > 0.0d) {
                throw new MathIllegalArgumentException(LocalizedFormats.HOLE_BETWEEN_MODELS_TIME_RANGES, Double.valueOf(((RealFieldElement) realFieldElement2.abs()).getReal()));
            }
        }
        Iterator<FieldStepInterpolator<T>> it2 = continuousOutputFieldModel.f108743e.iterator();
        while (it2.hasNext()) {
            this.f108743e.add(it2.next());
        }
        int size = this.f108743e.size() - 1;
        this.f108742d = size;
        this.f108740b = this.f108743e.get(size).getCurrentState().getTime();
    }

    /* renamed from: b */
    public final int m67865b(T t, FieldStepInterpolator<T> fieldStepInterpolator) {
        if (this.f108741c) {
            if (((RealFieldElement) t.subtract(fieldStepInterpolator.getPreviousState().getTime())).getReal() < 0.0d) {
                return -1;
            }
            return ((RealFieldElement) t.subtract(fieldStepInterpolator.getCurrentState().getTime())).getReal() > 0.0d ? 1 : 0;
        }
        if (((RealFieldElement) t.subtract(fieldStepInterpolator.getPreviousState().getTime())).getReal() > 0.0d) {
            return -1;
        }
        return ((RealFieldElement) t.subtract(fieldStepInterpolator.getCurrentState().getTime())).getReal() < 0.0d ? 1 : 0;
    }

    public T getFinalTime() {
        return this.f108740b;
    }

    public T getInitialTime() {
        return this.f108739a;
    }

    public FieldODEStateAndDerivative<T> getInterpolatedState(T t) {
        int i = 0;
        FieldStepInterpolator<T> fieldStepInterpolator = this.f108743e.get(0);
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) fieldStepInterpolator.getPreviousState().getTime().add(fieldStepInterpolator.getCurrentState().getTime())).multiply(0.5d);
        int size = this.f108743e.size() - 1;
        FieldStepInterpolator<T> fieldStepInterpolator2 = this.f108743e.get(size);
        RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) fieldStepInterpolator2.getPreviousState().getTime().add(fieldStepInterpolator2.getCurrentState().getTime())).multiply(0.5d);
        if (m67865b(t, fieldStepInterpolator) <= 0) {
            this.f108742d = 0;
            return fieldStepInterpolator.getInterpolatedState(t);
        }
        if (m67865b(t, fieldStepInterpolator2) >= 0) {
            this.f108742d = size;
            return fieldStepInterpolator2.getInterpolatedState(t);
        }
        while (size - i > 5) {
            FieldStepInterpolator<T> fieldStepInterpolator3 = this.f108743e.get(this.f108742d);
            int m67865b = m67865b(t, fieldStepInterpolator3);
            if (m67865b < 0) {
                size = this.f108742d;
                realFieldElement2 = (RealFieldElement) ((RealFieldElement) fieldStepInterpolator3.getPreviousState().getTime().add(fieldStepInterpolator3.getCurrentState().getTime())).multiply(0.5d);
            } else {
                if (m67865b <= 0) {
                    return fieldStepInterpolator3.getInterpolatedState(t);
                }
                i = this.f108742d;
                realFieldElement = (RealFieldElement) ((RealFieldElement) fieldStepInterpolator3.getPreviousState().getTime().add(fieldStepInterpolator3.getCurrentState().getTime())).multiply(0.5d);
            }
            int i2 = (i + size) / 2;
            FieldStepInterpolator<T> fieldStepInterpolator4 = this.f108743e.get(i2);
            RealFieldElement realFieldElement3 = (RealFieldElement) ((RealFieldElement) fieldStepInterpolator4.getPreviousState().getTime().add(fieldStepInterpolator4.getCurrentState().getTime())).multiply(0.5d);
            if (((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement3.subtract(realFieldElement)).abs()).subtract(1.0E-6d)).getReal() < 0.0d || ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.subtract(realFieldElement3)).abs()).subtract(1.0E-6d)).getReal() < 0.0d) {
                this.f108742d = i2;
            } else {
                RealFieldElement realFieldElement4 = (RealFieldElement) realFieldElement2.subtract(realFieldElement3);
                RealFieldElement realFieldElement5 = (RealFieldElement) realFieldElement3.subtract(realFieldElement);
                RealFieldElement realFieldElement6 = (RealFieldElement) realFieldElement2.subtract(realFieldElement);
                RealFieldElement realFieldElement7 = (RealFieldElement) t.subtract(realFieldElement2);
                RealFieldElement realFieldElement8 = (RealFieldElement) t.subtract(realFieldElement3);
                RealFieldElement realFieldElement9 = (RealFieldElement) t.subtract(realFieldElement);
                this.f108742d = (int) FastMath.rint(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement8.multiply(realFieldElement9)).multiply(realFieldElement5)).multiply(size)).subtract((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply(realFieldElement9)).multiply(realFieldElement6)).multiply(i2))).add((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply(realFieldElement8)).multiply(realFieldElement4)).multiply(i))).divide((RealFieldElement) ((RealFieldElement) realFieldElement4.multiply(realFieldElement5)).multiply(realFieldElement6))).getReal());
            }
            int max = FastMath.max(i + 1, ((i * 9) + size) / 10);
            int min = FastMath.min(size - 1, ((size * 9) + i) / 10);
            int i3 = this.f108742d;
            if (i3 < max) {
                this.f108742d = max;
            } else if (i3 > min) {
                this.f108742d = min;
            }
        }
        this.f108742d = i;
        while (true) {
            int i4 = this.f108742d;
            if (i4 > size || m67865b(t, this.f108743e.get(i4)) <= 0) {
                break;
            }
            this.f108742d++;
        }
        return this.f108743e.get(this.f108742d).getInterpolatedState(t);
    }

    @Override // org.apache.commons.math3.ode.sampling.FieldStepHandler
    public void handleStep(FieldStepInterpolator<T> fieldStepInterpolator, boolean z) throws MaxCountExceededException {
        if (this.f108743e.size() == 0) {
            this.f108739a = fieldStepInterpolator.getPreviousState().getTime();
            this.f108741c = fieldStepInterpolator.isForward();
        }
        this.f108743e.add(fieldStepInterpolator);
        if (z) {
            this.f108740b = fieldStepInterpolator.getCurrentState().getTime();
            this.f108742d = this.f108743e.size() - 1;
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.FieldStepHandler
    public void init(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, T t) {
        this.f108739a = fieldODEStateAndDerivative.getTime();
        this.f108740b = t;
        this.f108741c = true;
        this.f108742d = 0;
        this.f108743e.clear();
    }
}
