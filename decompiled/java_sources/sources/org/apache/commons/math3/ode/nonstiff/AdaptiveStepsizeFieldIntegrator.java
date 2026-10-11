package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.ode.AbstractFieldIntegrator;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public abstract class AdaptiveStepsizeFieldIntegrator<T extends RealFieldElement<T>> extends AbstractFieldIntegrator<T> {
    protected int mainSetDimension;

    /* renamed from: n */
    public T f108873n;

    /* renamed from: o */
    public T f108874o;

    /* renamed from: p */
    public T f108875p;
    protected double scalAbsoluteTolerance;
    protected double scalRelativeTolerance;
    protected double[] vecAbsoluteTolerance;
    protected double[] vecRelativeTolerance;

    public AdaptiveStepsizeFieldIntegrator(Field<T> field, String str, double d, double d2, double d3, double d4) {
        super(field, str);
        setStepSizeControl(d, d2, d3, d4);
        resetInternalState();
    }

    public T filterStep(T t, boolean z, boolean z2) throws NumberIsTooSmallException {
        if (((RealFieldElement) ((RealFieldElement) t.abs()).subtract(this.f108874o)).getReal() < 0.0d) {
            if (!z2) {
                throw new NumberIsTooSmallException(LocalizedFormats.MINIMAL_STEPSIZE_REACHED_DURING_INTEGRATION, Double.valueOf(((RealFieldElement) t.abs()).getReal()), Double.valueOf(this.f108874o.getReal()), true);
            }
            t = this.f108874o;
            if (!z) {
                t = (T) t.negate();
            }
        }
        return ((RealFieldElement) t.subtract(this.f108875p)).getReal() > 0.0d ? this.f108875p : ((RealFieldElement) t.add(this.f108875p)).getReal() < 0.0d ? (T) this.f108875p.negate() : t;
    }

    public T getMaxStep() {
        return this.f108875p;
    }

    public T getMinStep() {
        return this.f108874o;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T initializeStep(boolean z, int i, T[] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldEquationsMapper<T> fieldEquationsMapper) throws MaxCountExceededException, DimensionMismatchException {
        if (this.f108873n.getReal() > 0.0d) {
            T t = this.f108873n;
            return z ? t : (T) t.negate();
        }
        T[] mapState = fieldEquationsMapper.mapState(fieldODEStateAndDerivative);
        T[] mapDerivative = fieldEquationsMapper.mapDerivative(fieldODEStateAndDerivative);
        RealFieldElement realFieldElement = (RealFieldElement) getField().getZero();
        RealFieldElement realFieldElement2 = (RealFieldElement) getField().getZero();
        for (int i2 = 0; i2 < tArr.length; i2++) {
            RealFieldElement realFieldElement3 = (RealFieldElement) mapState[i2].divide(tArr[i2]);
            realFieldElement = (RealFieldElement) realFieldElement.add((RealFieldElement) realFieldElement3.multiply(realFieldElement3));
            RealFieldElement realFieldElement4 = (RealFieldElement) mapDerivative[i2].divide(tArr[i2]);
            realFieldElement2 = (RealFieldElement) realFieldElement2.add((RealFieldElement) realFieldElement4.multiply(realFieldElement4));
        }
        RealFieldElement realFieldElement5 = (RealFieldElement) ((realFieldElement.getReal() < 1.0E-10d || realFieldElement2.getReal() < 1.0E-10d) ? ((RealFieldElement) getField().getZero()).add(1.0E-6d) : ((RealFieldElement) ((RealFieldElement) realFieldElement.divide(realFieldElement2)).sqrt()).multiply(0.01d));
        if (!z) {
            realFieldElement5 = (RealFieldElement) realFieldElement5.negate();
        }
        RealFieldElement[] realFieldElementArr = (RealFieldElement[]) MathArrays.buildArray(getField(), mapState.length);
        for (int i3 = 0; i3 < mapState.length; i3++) {
            realFieldElementArr[i3] = (RealFieldElement) mapState[i3].add(mapDerivative[i3].multiply(realFieldElement5));
        }
        RealFieldElement[] computeDerivatives = computeDerivatives((RealFieldElement) fieldODEStateAndDerivative.getTime().add(realFieldElement5), realFieldElementArr);
        RealFieldElement realFieldElement6 = (RealFieldElement) getField().getZero();
        for (int i4 = 0; i4 < tArr.length; i4++) {
            RealFieldElement realFieldElement7 = (RealFieldElement) ((RealFieldElement) computeDerivatives[i4].subtract(mapDerivative[i4])).divide(tArr[i4]);
            realFieldElement6 = (RealFieldElement) realFieldElement6.add((RealFieldElement) realFieldElement7.multiply(realFieldElement7));
        }
        RealFieldElement max = MathUtils.max((RealFieldElement) realFieldElement2.sqrt(), (RealFieldElement) ((RealFieldElement) realFieldElement6.sqrt()).divide(realFieldElement5));
        T t2 = (T) MathUtils.max(this.f108874o, MathUtils.min(this.f108875p, MathUtils.max(MathUtils.min((RealFieldElement) ((RealFieldElement) realFieldElement5.abs()).multiply(100), max.getReal() < 1.0E-15d ? MathUtils.max((RealFieldElement) ((RealFieldElement) getField().getZero()).add(1.0E-6d), (RealFieldElement) ((RealFieldElement) realFieldElement5.abs()).multiply(0.001d)) : (RealFieldElement) ((RealFieldElement) ((RealFieldElement) max.multiply(100)).reciprocal()).pow(1.0d / i)), (RealFieldElement) ((RealFieldElement) fieldODEStateAndDerivative.getTime().abs()).multiply(1.0E-12d))));
        return !z ? (T) t2.negate() : t2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void resetInternalState() {
        setStepStart(null);
        setStepSize((RealFieldElement) ((RealFieldElement) this.f108874o.multiply(this.f108875p)).sqrt());
    }

    @Override // org.apache.commons.math3.ode.AbstractFieldIntegrator
    public void sanityChecks(FieldODEState<T> fieldODEState, T t) throws DimensionMismatchException, NumberIsTooSmallException {
        super.sanityChecks(fieldODEState, t);
        int stateDimension = fieldODEState.getStateDimension();
        this.mainSetDimension = stateDimension;
        double[] dArr = this.vecAbsoluteTolerance;
        if (dArr != null && dArr.length != stateDimension) {
            throw new DimensionMismatchException(this.mainSetDimension, this.vecAbsoluteTolerance.length);
        }
        double[] dArr2 = this.vecRelativeTolerance;
        if (dArr2 != null && dArr2.length != stateDimension) {
            throw new DimensionMismatchException(this.mainSetDimension, this.vecRelativeTolerance.length);
        }
    }

    public void setInitialStepSize(T t) {
        if (((RealFieldElement) t.subtract(this.f108874o)).getReal() < 0.0d || ((RealFieldElement) t.subtract(this.f108875p)).getReal() > 0.0d) {
            this.f108873n = (T) getField().getOne().negate();
        } else {
            this.f108873n = t;
        }
    }

    public void setStepSizeControl(double d, double d2, double d3, double d4) {
        this.f108874o = (T) getField().getZero().add(FastMath.abs(d));
        this.f108875p = (T) getField().getZero().add(FastMath.abs(d2));
        this.f108873n = (T) getField().getOne().negate();
        this.scalAbsoluteTolerance = d3;
        this.scalRelativeTolerance = d4;
        this.vecAbsoluteTolerance = null;
        this.vecRelativeTolerance = null;
    }

    public AdaptiveStepsizeFieldIntegrator(Field<T> field, String str, double d, double d2, double[] dArr, double[] dArr2) {
        super(field, str);
        setStepSizeControl(d, d2, dArr, dArr2);
        resetInternalState();
    }

    public void setStepSizeControl(double d, double d2, double[] dArr, double[] dArr2) {
        this.f108874o = (T) getField().getZero().add(FastMath.abs(d));
        this.f108875p = (T) getField().getZero().add(FastMath.abs(d2));
        this.f108873n = (T) getField().getOne().negate();
        this.scalAbsoluteTolerance = 0.0d;
        this.scalRelativeTolerance = 0.0d;
        this.vecAbsoluteTolerance = (double[]) dArr.clone();
        this.vecRelativeTolerance = (double[]) dArr2.clone();
    }
}
