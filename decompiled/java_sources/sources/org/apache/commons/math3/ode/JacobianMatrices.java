package org.apache.commons.math3.ode;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public class JacobianMatrices {

    /* renamed from: a */
    public ExpandableStatefulODE f108767a;

    /* renamed from: b */
    public int f108768b;

    /* renamed from: c */
    public MainStateJacobianProvider f108769c;

    /* renamed from: d */
    public ParameterizedODE f108770d;

    /* renamed from: e */
    public int f108771e;

    /* renamed from: f */
    public ParameterConfiguration[] f108772f;

    /* renamed from: g */
    public List<ParameterJacobianProvider> f108773g;

    /* renamed from: h */
    public int f108774h;

    /* renamed from: i */
    public boolean f108775i;

    /* renamed from: j */
    public double[] f108776j;

    /* loaded from: classes12.dex */
    public static class MismatchedEquations extends MathIllegalArgumentException {
        private static final long serialVersionUID = 20120902;

        public MismatchedEquations() {
            super(LocalizedFormats.UNMATCHED_ODE_IN_EXPANDED_SET, new Object[0]);
        }
    }

    /* renamed from: org.apache.commons.math3.ode.JacobianMatrices$b */
    /* loaded from: classes12.dex */
    public class C19192b implements SecondaryEquations {
        public C19192b() {
        }

        @Override // org.apache.commons.math3.ode.SecondaryEquations
        public void computeDerivatives(double d, double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4) throws MaxCountExceededException, DimensionMismatchException {
            int i;
            int i2;
            int i3;
            int i4 = 0;
            if (JacobianMatrices.this.f108775i && JacobianMatrices.this.f108774h != 0) {
                JacobianMatrices.this.f108773g.add(new C19197a(JacobianMatrices.this.f108769c, JacobianMatrices.this.f108770d, JacobianMatrices.this.f108772f));
                JacobianMatrices.this.f108775i = false;
            }
            double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, JacobianMatrices.this.f108771e, JacobianMatrices.this.f108771e);
            JacobianMatrices.this.f108769c.computeMainStateJacobian(d, dArr, dArr2, dArr5);
            for (int i5 = 0; i5 < JacobianMatrices.this.f108771e; i5++) {
                double[] dArr6 = dArr5[i5];
                for (int i6 = 0; i6 < JacobianMatrices.this.f108771e; i6++) {
                    double d2 = 0.0d;
                    int i7 = i6;
                    for (int i8 = 0; i8 < JacobianMatrices.this.f108771e; i8++) {
                        d2 += dArr6[i8] * dArr3[i7];
                        i7 += JacobianMatrices.this.f108771e;
                    }
                    dArr4[(JacobianMatrices.this.f108771e * i5) + i6] = d2;
                }
            }
            if (JacobianMatrices.this.f108774h != 0) {
                double[] dArr7 = new double[JacobianMatrices.this.f108771e];
                int i9 = JacobianMatrices.this.f108771e * JacobianMatrices.this.f108771e;
                ParameterConfiguration[] parameterConfigurationArr = JacobianMatrices.this.f108772f;
                int length = parameterConfigurationArr.length;
                int i10 = 0;
                while (i10 < length) {
                    ParameterConfiguration parameterConfiguration = parameterConfigurationArr[i10];
                    int i11 = i4;
                    int i12 = i11;
                    while (i11 == 0 && i12 < JacobianMatrices.this.f108773g.size()) {
                        ParameterJacobianProvider parameterJacobianProvider = (ParameterJacobianProvider) JacobianMatrices.this.f108773g.get(i12);
                        if (parameterJacobianProvider.isSupported(parameterConfiguration.getParameterName())) {
                            i = i12;
                            i2 = i10;
                            i3 = length;
                            parameterJacobianProvider.computeParameterJacobian(d, dArr, dArr2, parameterConfiguration.getParameterName(), dArr7);
                            int i13 = i4;
                            while (i13 < JacobianMatrices.this.f108771e) {
                                double[] dArr8 = dArr5[i13];
                                double d3 = dArr7[i13];
                                int i14 = i9;
                                for (int i15 = i4; i15 < JacobianMatrices.this.f108771e; i15++) {
                                    d3 += dArr8[i15] * dArr3[i14];
                                    i14++;
                                }
                                dArr4[i9 + i13] = d3;
                                i13++;
                                i4 = 0;
                            }
                            i11 = 1;
                        } else {
                            i = i12;
                            i2 = i10;
                            i3 = length;
                        }
                        i12 = i + 1;
                        length = i3;
                        i10 = i2;
                        i4 = 0;
                    }
                    int i16 = i10;
                    int i17 = length;
                    if (i11 == 0) {
                        Arrays.fill(dArr4, i9, JacobianMatrices.this.f108771e + i9, 0.0d);
                    }
                    i9 += JacobianMatrices.this.f108771e;
                    i10 = i16 + 1;
                    length = i17;
                    i4 = 0;
                }
            }
        }

        @Override // org.apache.commons.math3.ode.SecondaryEquations
        public int getDimension() {
            return JacobianMatrices.this.f108771e * (JacobianMatrices.this.f108771e + JacobianMatrices.this.f108774h);
        }
    }

    /* renamed from: org.apache.commons.math3.ode.JacobianMatrices$c */
    /* loaded from: classes12.dex */
    public static class C19193c implements MainStateJacobianProvider {

        /* renamed from: a */
        public final FirstOrderDifferentialEquations f108778a;

        /* renamed from: b */
        public final double[] f108779b;

        public C19193c(FirstOrderDifferentialEquations firstOrderDifferentialEquations, double[] dArr) throws DimensionMismatchException {
            this.f108778a = firstOrderDifferentialEquations;
            this.f108779b = (double[]) dArr.clone();
            if (dArr.length != firstOrderDifferentialEquations.getDimension()) {
                throw new DimensionMismatchException(firstOrderDifferentialEquations.getDimension(), dArr.length);
            }
        }

        @Override // org.apache.commons.math3.ode.FirstOrderDifferentialEquations
        public void computeDerivatives(double d, double[] dArr, double[] dArr2) throws MaxCountExceededException, DimensionMismatchException {
            this.f108778a.computeDerivatives(d, dArr, dArr2);
        }

        @Override // org.apache.commons.math3.ode.MainStateJacobianProvider
        public void computeMainStateJacobian(double d, double[] dArr, double[] dArr2, double[][] dArr3) throws MaxCountExceededException, DimensionMismatchException {
            int dimension = this.f108778a.getDimension();
            double[] dArr4 = new double[dimension];
            for (int i = 0; i < dimension; i++) {
                double d2 = dArr[i];
                dArr[i] = this.f108779b[i] + d2;
                this.f108778a.computeDerivatives(d, dArr, dArr4);
                for (int i2 = 0; i2 < dimension; i2++) {
                    dArr3[i2][i] = (dArr4[i2] - dArr2[i2]) / this.f108779b[i];
                }
                dArr[i] = d2;
            }
        }

        @Override // org.apache.commons.math3.ode.FirstOrderDifferentialEquations
        public int getDimension() {
            return this.f108778a.getDimension();
        }
    }

    public JacobianMatrices(FirstOrderDifferentialEquations firstOrderDifferentialEquations, double[] dArr, String... strArr) throws DimensionMismatchException {
        this(new C19193c(firstOrderDifferentialEquations, dArr), strArr);
    }

    public void addParameterJacobianProvider(ParameterJacobianProvider parameterJacobianProvider) {
        this.f108773g.add(parameterJacobianProvider);
    }

    public void getCurrentMainSetJacobian(double[][] dArr) {
        double[] secondaryState = this.f108767a.getSecondaryState(this.f108768b);
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = this.f108771e;
            if (i >= i3) {
                return;
            }
            System.arraycopy(secondaryState, i2, dArr[i], 0, i3);
            i2 += this.f108771e;
            i++;
        }
    }

    public void getCurrentParameterJacobian(String str, double[] dArr) {
        double[] secondaryState = this.f108767a.getSecondaryState(this.f108768b);
        int i = this.f108771e;
        int i2 = i * i;
        for (ParameterConfiguration parameterConfiguration : this.f108772f) {
            if (parameterConfiguration.getParameterName().equals(str)) {
                System.arraycopy(secondaryState, i2, dArr, 0, this.f108771e);
                return;
            }
            i2 += this.f108771e;
        }
    }

    /* renamed from: i */
    public final void m67878i(int i, Object obj) throws DimensionMismatchException {
        int length = obj == null ? 0 : Array.getLength(obj);
        if (length != i) {
            throw new DimensionMismatchException(length, i);
        }
    }

    public void registerVariationalEquations(ExpandableStatefulODE expandableStatefulODE) throws DimensionMismatchException, MismatchedEquations {
        FirstOrderDifferentialEquations firstOrderDifferentialEquations = this.f108769c;
        if (firstOrderDifferentialEquations instanceof C19193c) {
            firstOrderDifferentialEquations = ((C19193c) firstOrderDifferentialEquations).f108778a;
        }
        if (expandableStatefulODE.getPrimary() != firstOrderDifferentialEquations) {
            throw new MismatchedEquations();
        }
        this.f108767a = expandableStatefulODE;
        int addSecondaryEquations = expandableStatefulODE.addSecondaryEquations(new C19192b());
        this.f108768b = addSecondaryEquations;
        this.f108767a.setSecondaryState(addSecondaryEquations, this.f108776j);
    }

    public void setInitialMainStateJacobian(double[][] dArr) throws DimensionMismatchException {
        m67878i(this.f108771e, dArr);
        m67878i(this.f108771e, dArr[0]);
        int i = 0;
        for (double[] dArr2 : dArr) {
            System.arraycopy(dArr2, 0, this.f108776j, i, this.f108771e);
            i += this.f108771e;
        }
        ExpandableStatefulODE expandableStatefulODE = this.f108767a;
        if (expandableStatefulODE != null) {
            expandableStatefulODE.setSecondaryState(this.f108768b, this.f108776j);
        }
    }

    public void setInitialParameterJacobian(String str, double[] dArr) throws UnknownParameterException, DimensionMismatchException {
        m67878i(this.f108771e, dArr);
        int i = this.f108771e;
        int i2 = i * i;
        for (ParameterConfiguration parameterConfiguration : this.f108772f) {
            if (str.equals(parameterConfiguration.getParameterName())) {
                System.arraycopy(dArr, 0, this.f108776j, i2, this.f108771e);
                ExpandableStatefulODE expandableStatefulODE = this.f108767a;
                if (expandableStatefulODE != null) {
                    expandableStatefulODE.setSecondaryState(this.f108768b, this.f108776j);
                    return;
                }
                return;
            }
            i2 += this.f108771e;
        }
        throw new UnknownParameterException(str);
    }

    public void setParameterStep(String str, double d) throws UnknownParameterException {
        for (ParameterConfiguration parameterConfiguration : this.f108772f) {
            if (str.equals(parameterConfiguration.getParameterName())) {
                parameterConfiguration.setHP(d);
                this.f108775i = true;
                return;
            }
        }
        throw new UnknownParameterException(str);
    }

    public void setParameterizedODE(ParameterizedODE parameterizedODE) {
        this.f108770d = parameterizedODE;
        this.f108775i = true;
    }

    public JacobianMatrices(MainStateJacobianProvider mainStateJacobianProvider, String... strArr) {
        this.f108767a = null;
        this.f108768b = -1;
        this.f108769c = mainStateJacobianProvider;
        this.f108770d = null;
        this.f108771e = mainStateJacobianProvider.getDimension();
        int i = 0;
        if (strArr == null) {
            this.f108772f = null;
            this.f108774h = 0;
        } else {
            this.f108772f = new ParameterConfiguration[strArr.length];
            for (int i2 = 0; i2 < strArr.length; i2++) {
                this.f108772f[i2] = new ParameterConfiguration(strArr[i2], Double.NaN);
            }
            this.f108774h = strArr.length;
        }
        this.f108775i = false;
        this.f108773g = new ArrayList();
        int i3 = this.f108771e;
        this.f108776j = new double[(this.f108774h + i3) * i3];
        while (true) {
            int i4 = this.f108771e;
            if (i >= i4) {
                return;
            }
            this.f108776j[(i4 + 1) * i] = 1.0d;
            i++;
        }
    }
}
