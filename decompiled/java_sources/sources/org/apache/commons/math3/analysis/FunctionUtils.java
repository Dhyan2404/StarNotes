package org.apache.commons.math3.analysis;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableFunction;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableVectorFunction;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.analysis.function.Identity;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public class FunctionUtils {

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$a */
    /* loaded from: classes12.dex */
    public static class C19028a implements UnivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ BivariateFunction f107740e;

        /* renamed from: f */
        public final /* synthetic */ UnivariateFunction f107741f;

        /* renamed from: g */
        public final /* synthetic */ UnivariateFunction f107742g;

        public C19028a(BivariateFunction bivariateFunction, UnivariateFunction univariateFunction, UnivariateFunction univariateFunction2) {
            this.f107740e = bivariateFunction;
            this.f107741f = univariateFunction;
            this.f107742g = univariateFunction2;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            return this.f107740e.value(this.f107741f.value(d), this.f107742g.value(d));
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$b */
    /* loaded from: classes12.dex */
    public static class C19029b implements MultivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ BivariateFunction f107743e;

        /* renamed from: f */
        public final /* synthetic */ double f107744f;

        /* renamed from: g */
        public final /* synthetic */ UnivariateFunction f107745g;

        public C19029b(BivariateFunction bivariateFunction, double d, UnivariateFunction univariateFunction) {
            this.f107743e = bivariateFunction;
            this.f107744f = d;
            this.f107745g = univariateFunction;
        }

        @Override // org.apache.commons.math3.analysis.MultivariateFunction
        public double value(double[] dArr) {
            double value = this.f107743e.value(this.f107744f, this.f107745g.value(dArr[0]));
            for (int i = 1; i < dArr.length; i++) {
                value = this.f107743e.value(value, this.f107745g.value(dArr[i]));
            }
            return value;
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$c */
    /* loaded from: classes12.dex */
    public static class C19030c implements UnivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ BivariateFunction f107746e;

        /* renamed from: f */
        public final /* synthetic */ double f107747f;

        public C19030c(BivariateFunction bivariateFunction, double d) {
            this.f107746e = bivariateFunction;
            this.f107747f = d;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            return this.f107746e.value(this.f107747f, d);
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$d */
    /* loaded from: classes12.dex */
    public static class C19031d implements UnivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ BivariateFunction f107748e;

        /* renamed from: f */
        public final /* synthetic */ double f107749f;

        public C19031d(BivariateFunction bivariateFunction, double d) {
            this.f107748e = bivariateFunction;
            this.f107749f = d;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            return this.f107748e.value(d, this.f107749f);
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$e */
    /* loaded from: classes12.dex */
    public static class C19032e implements DifferentiableUnivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ UnivariateDifferentiableFunction f107750e;

        /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$e$a */
        /* loaded from: classes12.dex */
        public class a implements UnivariateFunction {
            public a() {
            }

            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d) {
                return C19032e.this.f107750e.value(new DerivativeStructure(1, 1, 0, d)).getPartialDerivative(1);
            }
        }

        public C19032e(UnivariateDifferentiableFunction univariateDifferentiableFunction) {
            this.f107750e = univariateDifferentiableFunction;
        }

        @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
        public UnivariateFunction derivative() {
            return new a();
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            return this.f107750e.value(d);
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$f */
    /* loaded from: classes12.dex */
    public static class C19033f implements UnivariateDifferentiableFunction {

        /* renamed from: e */
        public final /* synthetic */ DifferentiableUnivariateFunction f107752e;

        public C19033f(DifferentiableUnivariateFunction differentiableUnivariateFunction) {
            this.f107752e = differentiableUnivariateFunction;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            return this.f107752e.value(d);
        }

        @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
        public DerivativeStructure value(DerivativeStructure derivativeStructure) throws NumberIsTooLargeException {
            int order = derivativeStructure.getOrder();
            if (order == 0) {
                return new DerivativeStructure(derivativeStructure.getFreeParameters(), 0, this.f107752e.value(derivativeStructure.getValue()));
            }
            if (order == 1) {
                int freeParameters = derivativeStructure.getFreeParameters();
                double[] dArr = new double[freeParameters + 1];
                dArr[0] = this.f107752e.value(derivativeStructure.getValue());
                double value = this.f107752e.derivative().value(derivativeStructure.getValue());
                int[] iArr = new int[freeParameters];
                int i = 0;
                while (i < freeParameters) {
                    iArr[i] = 1;
                    int i2 = i + 1;
                    dArr[i2] = derivativeStructure.getPartialDerivative(iArr) * value;
                    iArr[i] = 0;
                    i = i2;
                }
                return new DerivativeStructure(freeParameters, 1, dArr);
            }
            throw new NumberIsTooLargeException(Integer.valueOf(derivativeStructure.getOrder()), 1, true);
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$g */
    /* loaded from: classes12.dex */
    public static class C19034g implements DifferentiableMultivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ MultivariateDifferentiableFunction f107753e;

        /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$g$a */
        /* loaded from: classes12.dex */
        public class a implements MultivariateFunction {

            /* renamed from: e */
            public final /* synthetic */ int f107754e;

            public a(int i) {
                this.f107754e = i;
            }

            @Override // org.apache.commons.math3.analysis.MultivariateFunction
            public double value(double[] dArr) {
                int length = dArr.length;
                DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[length];
                for (int i = 0; i < length; i++) {
                    if (i == this.f107754e) {
                        derivativeStructureArr[i] = new DerivativeStructure(1, 1, 0, dArr[i]);
                    } else {
                        derivativeStructureArr[i] = new DerivativeStructure(1, 1, dArr[i]);
                    }
                }
                return C19034g.this.f107753e.value(derivativeStructureArr).getPartialDerivative(1);
            }
        }

        /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$g$b */
        /* loaded from: classes12.dex */
        public class b implements MultivariateVectorFunction {
            public b() {
            }

            @Override // org.apache.commons.math3.analysis.MultivariateVectorFunction
            public double[] value(double[] dArr) {
                int length = dArr.length;
                DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[length];
                for (int i = 0; i < length; i++) {
                    derivativeStructureArr[i] = new DerivativeStructure(length, 1, i, dArr[i]);
                }
                DerivativeStructure value = C19034g.this.f107753e.value(derivativeStructureArr);
                double[] dArr2 = new double[length];
                int[] iArr = new int[length];
                for (int i2 = 0; i2 < length; i2++) {
                    iArr[i2] = 1;
                    dArr2[i2] = value.getPartialDerivative(iArr);
                    iArr[i2] = 0;
                }
                return dArr2;
            }
        }

        public C19034g(MultivariateDifferentiableFunction multivariateDifferentiableFunction) {
            this.f107753e = multivariateDifferentiableFunction;
        }

        @Override // org.apache.commons.math3.analysis.DifferentiableMultivariateFunction
        public MultivariateVectorFunction gradient() {
            return new b();
        }

        @Override // org.apache.commons.math3.analysis.DifferentiableMultivariateFunction
        public MultivariateFunction partialDerivative(int i) {
            return new a(i);
        }

        @Override // org.apache.commons.math3.analysis.MultivariateFunction
        public double value(double[] dArr) {
            return this.f107753e.value(dArr);
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$h */
    /* loaded from: classes12.dex */
    public static class C19035h implements MultivariateDifferentiableFunction {

        /* renamed from: e */
        public final /* synthetic */ DifferentiableMultivariateFunction f107757e;

        public C19035h(DifferentiableMultivariateFunction differentiableMultivariateFunction) {
            this.f107757e = differentiableMultivariateFunction;
        }

        @Override // org.apache.commons.math3.analysis.MultivariateFunction
        public double value(double[] dArr) {
            return this.f107757e.value(dArr);
        }

        @Override // org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableFunction
        public DerivativeStructure value(DerivativeStructure[] derivativeStructureArr) throws DimensionMismatchException, NumberIsTooLargeException {
            int freeParameters = derivativeStructureArr[0].getFreeParameters();
            int order = derivativeStructureArr[0].getOrder();
            int length = derivativeStructureArr.length;
            int i = 1;
            if (order <= 1) {
                for (int i2 = 0; i2 < length; i2++) {
                    if (derivativeStructureArr[i2].getFreeParameters() == freeParameters) {
                        if (derivativeStructureArr[i2].getOrder() != order) {
                            throw new DimensionMismatchException(derivativeStructureArr[i2].getOrder(), order);
                        }
                    } else {
                        throw new DimensionMismatchException(derivativeStructureArr[i2].getFreeParameters(), freeParameters);
                    }
                }
                double[] dArr = new double[length];
                for (int i3 = 0; i3 < length; i3++) {
                    dArr[i3] = derivativeStructureArr[i3].getValue();
                }
                double value = this.f107757e.value(dArr);
                double[] value2 = this.f107757e.gradient().value(dArr);
                double[] dArr2 = new double[freeParameters + 1];
                dArr2[0] = value;
                int[] iArr = new int[freeParameters];
                int i4 = 0;
                while (i4 < freeParameters) {
                    iArr[i4] = i;
                    for (int i5 = 0; i5 < length; i5++) {
                        int i6 = i4 + 1;
                        dArr2[i6] = dArr2[i6] + (value2[i5] * derivativeStructureArr[i5].getPartialDerivative(iArr));
                    }
                    iArr[i4] = 0;
                    i4++;
                    i = 1;
                }
                return new DerivativeStructure(freeParameters, order, dArr2);
            }
            throw new NumberIsTooLargeException(Integer.valueOf(order), 1, true);
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$i */
    /* loaded from: classes12.dex */
    public static class C19036i implements DifferentiableMultivariateVectorFunction {

        /* renamed from: a */
        public final /* synthetic */ MultivariateDifferentiableVectorFunction f107758a;

        /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$i$a */
        /* loaded from: classes12.dex */
        public class a implements MultivariateMatrixFunction {
            public a() {
            }

            @Override // org.apache.commons.math3.analysis.MultivariateMatrixFunction
            public double[][] value(double[] dArr) {
                int length = dArr.length;
                DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[length];
                for (int i = 0; i < length; i++) {
                    derivativeStructureArr[i] = new DerivativeStructure(length, 1, i, dArr[i]);
                }
                DerivativeStructure[] value = C19036i.this.f107758a.value(derivativeStructureArr);
                double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, value.length, length);
                int[] iArr = new int[length];
                for (int i2 = 0; i2 < value.length; i2++) {
                    for (int i3 = 0; i3 < length; i3++) {
                        iArr[i3] = 1;
                        dArr2[i2][i3] = value[i2].getPartialDerivative(iArr);
                        iArr[i3] = 0;
                    }
                }
                return dArr2;
            }
        }

        public C19036i(MultivariateDifferentiableVectorFunction multivariateDifferentiableVectorFunction) {
            this.f107758a = multivariateDifferentiableVectorFunction;
        }

        @Override // org.apache.commons.math3.analysis.DifferentiableMultivariateVectorFunction
        public MultivariateMatrixFunction jacobian() {
            return new a();
        }

        @Override // org.apache.commons.math3.analysis.MultivariateVectorFunction
        public double[] value(double[] dArr) {
            return this.f107758a.value(dArr);
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$j */
    /* loaded from: classes12.dex */
    public static class C19037j implements MultivariateDifferentiableVectorFunction {

        /* renamed from: a */
        public final /* synthetic */ DifferentiableMultivariateVectorFunction f107760a;

        public C19037j(DifferentiableMultivariateVectorFunction differentiableMultivariateVectorFunction) {
            this.f107760a = differentiableMultivariateVectorFunction;
        }

        @Override // org.apache.commons.math3.analysis.MultivariateVectorFunction
        public double[] value(double[] dArr) {
            return this.f107760a.value(dArr);
        }

        @Override // org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableVectorFunction
        public DerivativeStructure[] value(DerivativeStructure[] derivativeStructureArr) throws DimensionMismatchException, NumberIsTooLargeException {
            int freeParameters = derivativeStructureArr[0].getFreeParameters();
            int order = derivativeStructureArr[0].getOrder();
            int length = derivativeStructureArr.length;
            int i = 1;
            if (order <= 1) {
                for (int i2 = 0; i2 < length; i2++) {
                    if (derivativeStructureArr[i2].getFreeParameters() == freeParameters) {
                        if (derivativeStructureArr[i2].getOrder() != order) {
                            throw new DimensionMismatchException(derivativeStructureArr[i2].getOrder(), order);
                        }
                    } else {
                        throw new DimensionMismatchException(derivativeStructureArr[i2].getFreeParameters(), freeParameters);
                    }
                }
                double[] dArr = new double[length];
                for (int i3 = 0; i3 < length; i3++) {
                    dArr[i3] = derivativeStructureArr[i3].getValue();
                }
                double[] value = this.f107760a.value(dArr);
                double[][] value2 = this.f107760a.jacobian().value(dArr);
                int length2 = value.length;
                DerivativeStructure[] derivativeStructureArr2 = new DerivativeStructure[length2];
                int i4 = 0;
                while (i4 < length2) {
                    double[] dArr2 = new double[freeParameters + 1];
                    dArr2[0] = value[i4];
                    int[] iArr = new int[freeParameters];
                    int i5 = 0;
                    while (i5 < freeParameters) {
                        iArr[i5] = i;
                        for (int i6 = 0; i6 < length; i6++) {
                            int i7 = i5 + 1;
                            dArr2[i7] = dArr2[i7] + (value2[i4][i6] * derivativeStructureArr[i6].getPartialDerivative(iArr));
                        }
                        iArr[i5] = 0;
                        i5++;
                        i = 1;
                    }
                    derivativeStructureArr2[i4] = new DerivativeStructure(freeParameters, order, dArr2);
                    i4++;
                    i = 1;
                }
                return derivativeStructureArr2;
            }
            throw new NumberIsTooLargeException(Integer.valueOf(order), 1, true);
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$k */
    /* loaded from: classes12.dex */
    public static class C19038k implements UnivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ UnivariateFunction[] f107761e;

        public C19038k(UnivariateFunction[] univariateFunctionArr) {
            this.f107761e = univariateFunctionArr;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            for (int length = this.f107761e.length - 1; length >= 0; length--) {
                d = this.f107761e[length].value(d);
            }
            return d;
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$m */
    /* loaded from: classes12.dex */
    public static class C19040m implements DifferentiableUnivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ DifferentiableUnivariateFunction[] f107763e;

        /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$m$a */
        /* loaded from: classes12.dex */
        public class a implements UnivariateFunction {
            public a() {
            }

            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d) {
                double d2 = 1.0d;
                for (int length = C19040m.this.f107763e.length - 1; length >= 0; length--) {
                    d2 *= C19040m.this.f107763e[length].derivative().value(d);
                    d = C19040m.this.f107763e[length].value(d);
                }
                return d2;
            }
        }

        public C19040m(DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr) {
            this.f107763e = differentiableUnivariateFunctionArr;
        }

        @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
        public UnivariateFunction derivative() {
            return new a();
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            for (int length = this.f107763e.length - 1; length >= 0; length--) {
                d = this.f107763e[length].value(d);
            }
            return d;
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$n */
    /* loaded from: classes12.dex */
    public static class C19041n implements UnivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ UnivariateFunction[] f107765e;

        public C19041n(UnivariateFunction[] univariateFunctionArr) {
            this.f107765e = univariateFunctionArr;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            double value = this.f107765e[0].value(d);
            int i = 1;
            while (true) {
                UnivariateFunction[] univariateFunctionArr = this.f107765e;
                if (i >= univariateFunctionArr.length) {
                    return value;
                }
                value += univariateFunctionArr[i].value(d);
                i++;
            }
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$p */
    /* loaded from: classes12.dex */
    public static class C19043p implements DifferentiableUnivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ DifferentiableUnivariateFunction[] f107767e;

        /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$p$a */
        /* loaded from: classes12.dex */
        public class a implements UnivariateFunction {
            public a() {
            }

            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d) {
                double value = C19043p.this.f107767e[0].derivative().value(d);
                int i = 1;
                while (true) {
                    DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr = C19043p.this.f107767e;
                    if (i >= differentiableUnivariateFunctionArr.length) {
                        return value;
                    }
                    value += differentiableUnivariateFunctionArr[i].derivative().value(d);
                    i++;
                }
            }
        }

        public C19043p(DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr) {
            this.f107767e = differentiableUnivariateFunctionArr;
        }

        @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
        public UnivariateFunction derivative() {
            return new a();
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            double value = this.f107767e[0].value(d);
            int i = 1;
            while (true) {
                DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr = this.f107767e;
                if (i >= differentiableUnivariateFunctionArr.length) {
                    return value;
                }
                value += differentiableUnivariateFunctionArr[i].value(d);
                i++;
            }
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$q */
    /* loaded from: classes12.dex */
    public static class C19044q implements UnivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ UnivariateFunction[] f107769e;

        public C19044q(UnivariateFunction[] univariateFunctionArr) {
            this.f107769e = univariateFunctionArr;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            double value = this.f107769e[0].value(d);
            int i = 1;
            while (true) {
                UnivariateFunction[] univariateFunctionArr = this.f107769e;
                if (i >= univariateFunctionArr.length) {
                    return value;
                }
                value *= univariateFunctionArr[i].value(d);
                i++;
            }
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$s */
    /* loaded from: classes12.dex */
    public static class C19046s implements DifferentiableUnivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ DifferentiableUnivariateFunction[] f107771e;

        /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$s$a */
        /* loaded from: classes12.dex */
        public class a implements UnivariateFunction {
            public a() {
            }

            @Override // org.apache.commons.math3.analysis.UnivariateFunction
            public double value(double d) {
                double d2 = 0.0d;
                int i = 0;
                while (true) {
                    DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr = C19046s.this.f107771e;
                    if (i >= differentiableUnivariateFunctionArr.length) {
                        return d2;
                    }
                    double value = differentiableUnivariateFunctionArr[i].derivative().value(d);
                    int i2 = 0;
                    while (true) {
                        DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr2 = C19046s.this.f107771e;
                        if (i2 < differentiableUnivariateFunctionArr2.length) {
                            if (i != i2) {
                                value *= differentiableUnivariateFunctionArr2[i2].value(d);
                            }
                            i2++;
                        }
                    }
                    d2 += value;
                    i++;
                }
            }
        }

        public C19046s(DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr) {
            this.f107771e = differentiableUnivariateFunctionArr;
        }

        @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
        public UnivariateFunction derivative() {
            return new a();
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            double value = this.f107771e[0].value(d);
            int i = 1;
            while (true) {
                DifferentiableUnivariateFunction[] differentiableUnivariateFunctionArr = this.f107771e;
                if (i >= differentiableUnivariateFunctionArr.length) {
                    return value;
                }
                value *= differentiableUnivariateFunctionArr[i].value(d);
                i++;
            }
        }
    }

    public static UnivariateFunction add(UnivariateFunction... univariateFunctionArr) {
        return new C19041n(univariateFunctionArr);
    }

    public static MultivariateFunction collector(BivariateFunction bivariateFunction, UnivariateFunction univariateFunction, double d) {
        return new C19029b(bivariateFunction, d, univariateFunction);
    }

    public static UnivariateFunction combine(BivariateFunction bivariateFunction, UnivariateFunction univariateFunction, UnivariateFunction univariateFunction2) {
        return new C19028a(bivariateFunction, univariateFunction, univariateFunction2);
    }

    public static UnivariateFunction compose(UnivariateFunction... univariateFunctionArr) {
        return new C19038k(univariateFunctionArr);
    }

    public static UnivariateFunction fix1stArgument(BivariateFunction bivariateFunction, double d) {
        return new C19030c(bivariateFunction, d);
    }

    public static UnivariateFunction fix2ndArgument(BivariateFunction bivariateFunction, double d) {
        return new C19031d(bivariateFunction, d);
    }

    public static UnivariateFunction multiply(UnivariateFunction... univariateFunctionArr) {
        return new C19044q(univariateFunctionArr);
    }

    public static double[] sample(UnivariateFunction univariateFunction, double d, double d2, int i) throws NumberIsTooLargeException, NotStrictlyPositiveException {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NOT_POSITIVE_NUMBER_OF_SAMPLES, Integer.valueOf(i));
        }
        if (d >= d2) {
            throw new NumberIsTooLargeException(Double.valueOf(d), Double.valueOf(d2), false);
        }
        double[] dArr = new double[i];
        double d3 = (d2 - d) / i;
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = univariateFunction.value((i2 * d3) + d);
        }
        return dArr;
    }

    @Deprecated
    public static DifferentiableMultivariateFunction toDifferentiableMultivariateFunction(MultivariateDifferentiableFunction multivariateDifferentiableFunction) {
        return new C19034g(multivariateDifferentiableFunction);
    }

    @Deprecated
    public static DifferentiableMultivariateVectorFunction toDifferentiableMultivariateVectorFunction(MultivariateDifferentiableVectorFunction multivariateDifferentiableVectorFunction) {
        return new C19036i(multivariateDifferentiableVectorFunction);
    }

    @Deprecated
    public static DifferentiableUnivariateFunction toDifferentiableUnivariateFunction(UnivariateDifferentiableFunction univariateDifferentiableFunction) {
        return new C19032e(univariateDifferentiableFunction);
    }

    @Deprecated
    public static MultivariateDifferentiableFunction toMultivariateDifferentiableFunction(DifferentiableMultivariateFunction differentiableMultivariateFunction) {
        return new C19035h(differentiableMultivariateFunction);
    }

    @Deprecated
    public static MultivariateDifferentiableVectorFunction toMultivariateDifferentiableVectorFunction(DifferentiableMultivariateVectorFunction differentiableMultivariateVectorFunction) {
        return new C19037j(differentiableMultivariateVectorFunction);
    }

    @Deprecated
    public static UnivariateDifferentiableFunction toUnivariateDifferential(DifferentiableUnivariateFunction differentiableUnivariateFunction) {
        return new C19033f(differentiableUnivariateFunction);
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$l */
    /* loaded from: classes12.dex */
    public static class C19039l implements UnivariateDifferentiableFunction {

        /* renamed from: e */
        public final /* synthetic */ UnivariateDifferentiableFunction[] f107762e;

        public C19039l(UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr) {
            this.f107762e = univariateDifferentiableFunctionArr;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            for (int length = this.f107762e.length - 1; length >= 0; length--) {
                d = this.f107762e[length].value(d);
            }
            return d;
        }

        @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
        public DerivativeStructure value(DerivativeStructure derivativeStructure) {
            for (int length = this.f107762e.length - 1; length >= 0; length--) {
                derivativeStructure = this.f107762e[length].value(derivativeStructure);
            }
            return derivativeStructure;
        }
    }

    public static UnivariateDifferentiableFunction add(UnivariateDifferentiableFunction... univariateDifferentiableFunctionArr) {
        return new C19042o(univariateDifferentiableFunctionArr);
    }

    public static MultivariateFunction collector(BivariateFunction bivariateFunction, double d) {
        return collector(bivariateFunction, new Identity(), d);
    }

    public static UnivariateDifferentiableFunction compose(UnivariateDifferentiableFunction... univariateDifferentiableFunctionArr) {
        return new C19039l(univariateDifferentiableFunctionArr);
    }

    public static UnivariateDifferentiableFunction multiply(UnivariateDifferentiableFunction... univariateDifferentiableFunctionArr) {
        return new C19045r(univariateDifferentiableFunctionArr);
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$o */
    /* loaded from: classes12.dex */
    public static class C19042o implements UnivariateDifferentiableFunction {

        /* renamed from: e */
        public final /* synthetic */ UnivariateDifferentiableFunction[] f107766e;

        public C19042o(UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr) {
            this.f107766e = univariateDifferentiableFunctionArr;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            double value = this.f107766e[0].value(d);
            int i = 1;
            while (true) {
                UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr = this.f107766e;
                if (i >= univariateDifferentiableFunctionArr.length) {
                    return value;
                }
                value += univariateDifferentiableFunctionArr[i].value(d);
                i++;
            }
        }

        @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
        public DerivativeStructure value(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
            DerivativeStructure value = this.f107766e[0].value(derivativeStructure);
            int i = 1;
            while (true) {
                UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr = this.f107766e;
                if (i >= univariateDifferentiableFunctionArr.length) {
                    return value;
                }
                value = value.add(univariateDifferentiableFunctionArr[i].value(derivativeStructure));
                i++;
            }
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.FunctionUtils$r */
    /* loaded from: classes12.dex */
    public static class C19045r implements UnivariateDifferentiableFunction {

        /* renamed from: e */
        public final /* synthetic */ UnivariateDifferentiableFunction[] f107770e;

        public C19045r(UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr) {
            this.f107770e = univariateDifferentiableFunctionArr;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            double value = this.f107770e[0].value(d);
            int i = 1;
            while (true) {
                UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr = this.f107770e;
                if (i >= univariateDifferentiableFunctionArr.length) {
                    return value;
                }
                value *= univariateDifferentiableFunctionArr[i].value(d);
                i++;
            }
        }

        @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
        public DerivativeStructure value(DerivativeStructure derivativeStructure) {
            DerivativeStructure value = this.f107770e[0].value(derivativeStructure);
            int i = 1;
            while (true) {
                UnivariateDifferentiableFunction[] univariateDifferentiableFunctionArr = this.f107770e;
                if (i >= univariateDifferentiableFunctionArr.length) {
                    return value;
                }
                value = value.multiply(univariateDifferentiableFunctionArr[i].value(derivativeStructure));
                i++;
            }
        }
    }

    @Deprecated
    public static DifferentiableUnivariateFunction add(DifferentiableUnivariateFunction... differentiableUnivariateFunctionArr) {
        return new C19043p(differentiableUnivariateFunctionArr);
    }

    @Deprecated
    public static DifferentiableUnivariateFunction compose(DifferentiableUnivariateFunction... differentiableUnivariateFunctionArr) {
        return new C19040m(differentiableUnivariateFunctionArr);
    }

    @Deprecated
    public static DifferentiableUnivariateFunction multiply(DifferentiableUnivariateFunction... differentiableUnivariateFunctionArr) {
        return new C19046s(differentiableUnivariateFunctionArr);
    }
}
