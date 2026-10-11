package org.apache.commons.math3.ode.nonstiff;

import java.util.Arrays;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.RealMatrixPreservingVisitor;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.sampling.NordsieckStepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class AdamsMoultonIntegrator extends AdamsIntegrator {

    /* renamed from: p */
    public static final String f108860p = "Adams-Moulton";

    /* renamed from: org.apache.commons.math3.ode.nonstiff.AdamsMoultonIntegrator$a */
    /* loaded from: classes12.dex */
    public class C19209a implements RealMatrixPreservingVisitor {

        /* renamed from: a */
        public final double[] f108861a;

        /* renamed from: b */
        public final double[] f108862b;

        /* renamed from: c */
        public final double[] f108863c;

        /* renamed from: d */
        public final double[] f108864d;

        public C19209a(double[] dArr, double[] dArr2, double[] dArr3) {
            this.f108861a = dArr;
            this.f108862b = dArr2;
            this.f108864d = dArr3;
            this.f108863c = (double[]) dArr3.clone();
        }

        @Override // org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public double end() {
            double d;
            double d2;
            double d3 = 0.0d;
            int i = 0;
            while (true) {
                double[] dArr = this.f108864d;
                if (i >= dArr.length) {
                    return FastMath.sqrt(d3 / AdamsMoultonIntegrator.this.mainSetDimension);
                }
                double d4 = dArr[i];
                double[] dArr2 = this.f108861a;
                dArr[i] = d4 + dArr2[i] + this.f108862b[i];
                if (i < AdamsMoultonIntegrator.this.mainSetDimension) {
                    double max = FastMath.max(FastMath.abs(dArr2[i]), FastMath.abs(this.f108864d[i]));
                    AdamsMoultonIntegrator adamsMoultonIntegrator = AdamsMoultonIntegrator.this;
                    double[] dArr3 = adamsMoultonIntegrator.vecAbsoluteTolerance;
                    if (dArr3 == null) {
                        d = adamsMoultonIntegrator.scalAbsoluteTolerance;
                        d2 = adamsMoultonIntegrator.scalRelativeTolerance;
                    } else {
                        d = dArr3[i];
                        d2 = adamsMoultonIntegrator.vecRelativeTolerance[i];
                    }
                    double d5 = (this.f108864d[i] - this.f108863c[i]) / (d + (d2 * max));
                    d3 += d5 * d5;
                }
                i++;
            }
        }

        @Override // org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public void start(int i, int i2, int i3, int i4, int i5, int i6) {
            Arrays.fill(this.f108864d, 0.0d);
        }

        @Override // org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public void visit(int i, int i2, double d) {
            if ((i & 1) == 0) {
                double[] dArr = this.f108864d;
                dArr[i2] = dArr[i2] - d;
            } else {
                double[] dArr2 = this.f108864d;
                dArr2[i2] = dArr2[i2] + d;
            }
        }
    }

    public AdamsMoultonIntegrator(int i, double d, double d2, double d3, double d4) throws NumberIsTooSmallException {
        super("Adams-Moulton", i, i + 1, d, d2, d3, d4);
    }

    @Override // org.apache.commons.math3.ode.nonstiff.AdamsIntegrator, org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeIntegrator, org.apache.commons.math3.ode.AbstractIntegrator
    public void integrate(ExpandableStatefulODE expandableStatefulODE, double d) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        boolean z;
        boolean z2;
        sanityChecks(expandableStatefulODE, d);
        setEquations(expandableStatefulODE);
        boolean z3 = d > expandableStatefulODE.getTime();
        double[] completeState = expandableStatefulODE.getCompleteState();
        double[] dArr = (double[]) completeState.clone();
        double[] dArr2 = new double[dArr.length];
        double[] dArr3 = new double[dArr.length];
        double[] dArr4 = new double[dArr.length];
        NordsieckStepInterpolator nordsieckStepInterpolator = new NordsieckStepInterpolator();
        nordsieckStepInterpolator.reinitialize(dArr, z3, expandableStatefulODE.getPrimaryMapper(), expandableStatefulODE.getSecondaryMappers());
        initIntegration(expandableStatefulODE.getTime(), completeState, d);
        start(expandableStatefulODE.getTime(), dArr, d);
        nordsieckStepInterpolator.reinitialize(this.stepStart, this.stepSize, this.scaled, this.nordsieck);
        NordsieckStepInterpolator nordsieckStepInterpolator2 = nordsieckStepInterpolator;
        nordsieckStepInterpolator2.storeTime(this.stepStart);
        double d2 = this.stepSize;
        nordsieckStepInterpolator2.rescale(d2);
        this.isLastStep = false;
        Array2DRowRealMatrix array2DRowRealMatrix = null;
        while (true) {
            Array2DRowRealMatrix array2DRowRealMatrix2 = array2DRowRealMatrix;
            double d3 = d2;
            double d4 = 10.0d;
            while (d4 >= 1.0d) {
                this.stepSize = d3;
                double d5 = this.stepStart + d3;
                nordsieckStepInterpolator2.setInterpolatedTime(d5);
                ExpandableStatefulODE expandable = getExpandable();
                expandable.getPrimaryMapper().insertEquationData(nordsieckStepInterpolator2.getInterpolatedState(), dArr3);
                EquationsMapper[] secondaryMappers = expandable.getSecondaryMappers();
                int length = secondaryMappers.length;
                double d6 = d3;
                int i = 0;
                int i2 = 0;
                while (i2 < length) {
                    secondaryMappers[i2].insertEquationData(nordsieckStepInterpolator2.getInterpolatedSecondaryState(i), dArr3);
                    i++;
                    i2++;
                    secondaryMappers = secondaryMappers;
                }
                computeDerivatives(d5, dArr3, dArr2);
                for (int i3 = 0; i3 < completeState.length; i3++) {
                    dArr4[i3] = this.stepSize * dArr2[i3];
                }
                array2DRowRealMatrix2 = updateHighOrderDerivativesPhase1(this.nordsieck);
                updateHighOrderDerivativesPhase2(this.scaled, dArr4, array2DRowRealMatrix2);
                d4 = array2DRowRealMatrix2.walkInOptimizedOrder(new C19209a(dArr, dArr4, dArr3));
                if (d4 >= 1.0d) {
                    double filterStep = filterStep(this.stepSize * computeStepGrowShrinkFactor(d4), z3, false);
                    nordsieckStepInterpolator2.rescale(filterStep);
                    d3 = filterStep;
                } else {
                    d3 = d6;
                }
            }
            double d7 = d3;
            double d8 = this.stepStart + this.stepSize;
            computeDerivatives(d8, dArr3, dArr2);
            double[] dArr5 = new double[completeState.length];
            double d9 = d4;
            for (int i4 = 0; i4 < completeState.length; i4++) {
                dArr5[i4] = this.stepSize * dArr2[i4];
            }
            updateHighOrderDerivativesPhase2(dArr4, dArr5, array2DRowRealMatrix2);
            System.arraycopy(dArr3, 0, dArr, 0, dArr.length);
            nordsieckStepInterpolator2.reinitialize(d8, this.stepSize, dArr5, array2DRowRealMatrix2);
            nordsieckStepInterpolator2.storeTime(this.stepStart);
            nordsieckStepInterpolator2.shift();
            nordsieckStepInterpolator2.storeTime(d8);
            boolean z4 = z3;
            double[] dArr6 = dArr2;
            double[] dArr7 = completeState;
            double[] dArr8 = dArr2;
            NordsieckStepInterpolator nordsieckStepInterpolator3 = nordsieckStepInterpolator2;
            Array2DRowRealMatrix array2DRowRealMatrix3 = array2DRowRealMatrix2;
            double acceptStep = acceptStep(nordsieckStepInterpolator2, dArr, dArr6, d);
            this.stepStart = acceptStep;
            this.scaled = dArr5;
            this.nordsieck = array2DRowRealMatrix3;
            if (this.isLastStep) {
                z = z4;
                d2 = d7;
            } else {
                nordsieckStepInterpolator3.storeTime(acceptStep);
                if (this.resetOccurred) {
                    start(this.stepStart, dArr, d);
                    nordsieckStepInterpolator3.reinitialize(this.stepStart, this.stepSize, this.scaled, this.nordsieck);
                }
                double computeStepGrowShrinkFactor = this.stepSize * computeStepGrowShrinkFactor(d9);
                double d10 = this.stepStart + computeStepGrowShrinkFactor;
                if (!z4 ? d10 > d : d10 < d) {
                    z = z4;
                    z2 = false;
                } else {
                    z = z4;
                    z2 = true;
                }
                d2 = filterStep(computeStepGrowShrinkFactor, z, z2);
                double d11 = this.stepStart;
                double d12 = d11 + d2;
                if (!z ? d12 > d : d12 < d) {
                    d2 = d - d11;
                }
                nordsieckStepInterpolator3.rescale(d2);
            }
            if (this.isLastStep) {
                expandableStatefulODE.setTime(this.stepStart);
                expandableStatefulODE.setCompleteState(dArr);
                resetInternalState();
                return;
            } else {
                z3 = z;
                nordsieckStepInterpolator2 = nordsieckStepInterpolator3;
                array2DRowRealMatrix = array2DRowRealMatrix3;
                completeState = dArr7;
                dArr2 = dArr8;
            }
        }
    }

    public AdamsMoultonIntegrator(int i, double d, double d2, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super("Adams-Moulton", i, i + 1, d, d2, dArr, dArr2);
    }
}
