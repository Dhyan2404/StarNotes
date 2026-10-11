package org.apache.commons.math3.ml.neuralnet.sofm;

import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.ml.neuralnet.sofm.util.ExponentialDecayFunction;
import org.apache.commons.math3.ml.neuralnet.sofm.util.QuasiSigmoidDecayFunction;

/* loaded from: classes12.dex */
public class LearningFactorFunctionFactory {

    /* renamed from: org.apache.commons.math3.ml.neuralnet.sofm.LearningFactorFunctionFactory$a */
    /* loaded from: classes12.dex */
    public static class C19183a implements LearningFactorFunction {

        /* renamed from: a */
        public final ExponentialDecayFunction f108679a;

        /* renamed from: b */
        public final /* synthetic */ double f108680b;

        /* renamed from: c */
        public final /* synthetic */ double f108681c;

        /* renamed from: d */
        public final /* synthetic */ long f108682d;

        public C19183a(double d, double d2, long j) {
            this.f108680b = d;
            this.f108681c = d2;
            this.f108682d = j;
            this.f108679a = new ExponentialDecayFunction(d, d2, j);
        }

        @Override // org.apache.commons.math3.ml.neuralnet.sofm.LearningFactorFunction
        public double value(long j) {
            return this.f108679a.value(j);
        }
    }

    /* renamed from: org.apache.commons.math3.ml.neuralnet.sofm.LearningFactorFunctionFactory$b */
    /* loaded from: classes12.dex */
    public static class C19184b implements LearningFactorFunction {

        /* renamed from: a */
        public final QuasiSigmoidDecayFunction f108683a;

        /* renamed from: b */
        public final /* synthetic */ double f108684b;

        /* renamed from: c */
        public final /* synthetic */ double f108685c;

        /* renamed from: d */
        public final /* synthetic */ long f108686d;

        public C19184b(double d, double d2, long j) {
            this.f108684b = d;
            this.f108685c = d2;
            this.f108686d = j;
            this.f108683a = new QuasiSigmoidDecayFunction(d, d2, j);
        }

        @Override // org.apache.commons.math3.ml.neuralnet.sofm.LearningFactorFunction
        public double value(long j) {
            return this.f108683a.value(j);
        }
    }

    public static LearningFactorFunction exponentialDecay(double d, double d2, long j) {
        if (d <= 0.0d || d > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d), 0, 1);
        }
        return new C19183a(d, d2, j);
    }

    public static LearningFactorFunction quasiSigmoidDecay(double d, double d2, long j) {
        if (d <= 0.0d || d > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d), 0, 1);
        }
        return new C19184b(d, d2, j);
    }
}
