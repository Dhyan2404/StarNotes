package org.apache.commons.math3.ml.neuralnet.sofm;

import org.apache.commons.math3.ml.neuralnet.sofm.util.ExponentialDecayFunction;
import org.apache.commons.math3.ml.neuralnet.sofm.util.QuasiSigmoidDecayFunction;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class NeighbourhoodSizeFunctionFactory {

    /* renamed from: org.apache.commons.math3.ml.neuralnet.sofm.NeighbourhoodSizeFunctionFactory$a */
    /* loaded from: classes12.dex */
    public static class C19185a implements NeighbourhoodSizeFunction {

        /* renamed from: a */
        public final ExponentialDecayFunction f108687a;

        /* renamed from: b */
        public final /* synthetic */ double f108688b;

        /* renamed from: c */
        public final /* synthetic */ double f108689c;

        /* renamed from: d */
        public final /* synthetic */ long f108690d;

        public C19185a(double d, double d2, long j) {
            this.f108688b = d;
            this.f108689c = d2;
            this.f108690d = j;
            this.f108687a = new ExponentialDecayFunction(d, d2, j);
        }

        @Override // org.apache.commons.math3.ml.neuralnet.sofm.NeighbourhoodSizeFunction
        public int value(long j) {
            return (int) FastMath.rint(this.f108687a.value(j));
        }
    }

    /* renamed from: org.apache.commons.math3.ml.neuralnet.sofm.NeighbourhoodSizeFunctionFactory$b */
    /* loaded from: classes12.dex */
    public static class C19186b implements NeighbourhoodSizeFunction {

        /* renamed from: a */
        public final QuasiSigmoidDecayFunction f108691a;

        /* renamed from: b */
        public final /* synthetic */ double f108692b;

        /* renamed from: c */
        public final /* synthetic */ double f108693c;

        /* renamed from: d */
        public final /* synthetic */ long f108694d;

        public C19186b(double d, double d2, long j) {
            this.f108692b = d;
            this.f108693c = d2;
            this.f108694d = j;
            this.f108691a = new QuasiSigmoidDecayFunction(d, d2, j);
        }

        @Override // org.apache.commons.math3.ml.neuralnet.sofm.NeighbourhoodSizeFunction
        public int value(long j) {
            return (int) FastMath.rint(this.f108691a.value(j));
        }
    }

    public static NeighbourhoodSizeFunction exponentialDecay(double d, double d2, long j) {
        return new C19185a(d, d2, j);
    }

    public static NeighbourhoodSizeFunction quasiSigmoidDecay(double d, double d2, long j) {
        return new C19186b(d, d2, j);
    }
}
