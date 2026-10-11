package org.apache.commons.math3.ml.neuralnet;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.function.Constant;
import org.apache.commons.math3.distribution.RealDistribution;
import org.apache.commons.math3.distribution.UniformRealDistribution;
import org.apache.commons.math3.random.RandomGenerator;

/* loaded from: classes12.dex */
public class FeatureInitializerFactory {

    /* renamed from: org.apache.commons.math3.ml.neuralnet.FeatureInitializerFactory$a */
    /* loaded from: classes12.dex */
    public static class C19180a implements FeatureInitializer {

        /* renamed from: a */
        public double f108663a;

        /* renamed from: b */
        public final /* synthetic */ double f108664b;

        /* renamed from: c */
        public final /* synthetic */ UnivariateFunction f108665c;

        /* renamed from: d */
        public final /* synthetic */ double f108666d;

        public C19180a(double d, UnivariateFunction univariateFunction, double d2) {
            this.f108664b = d;
            this.f108665c = univariateFunction;
            this.f108666d = d2;
            this.f108663a = d;
        }

        @Override // org.apache.commons.math3.ml.neuralnet.FeatureInitializer
        public double value() {
            double value = this.f108665c.value(this.f108663a);
            this.f108663a += this.f108666d;
            return value;
        }
    }

    /* renamed from: org.apache.commons.math3.ml.neuralnet.FeatureInitializerFactory$b */
    /* loaded from: classes12.dex */
    public static class C19181b implements FeatureInitializer {

        /* renamed from: a */
        public final /* synthetic */ FeatureInitializer f108667a;

        /* renamed from: b */
        public final /* synthetic */ RealDistribution f108668b;

        public C19181b(FeatureInitializer featureInitializer, RealDistribution realDistribution) {
            this.f108667a = featureInitializer;
            this.f108668b = realDistribution;
        }

        @Override // org.apache.commons.math3.ml.neuralnet.FeatureInitializer
        public double value() {
            return this.f108667a.value() + this.f108668b.sample();
        }
    }

    public static FeatureInitializer function(UnivariateFunction univariateFunction, double d, double d2) {
        return new C19180a(d, univariateFunction, d2);
    }

    public static FeatureInitializer randomize(RealDistribution realDistribution, FeatureInitializer featureInitializer) {
        return new C19181b(featureInitializer, realDistribution);
    }

    public static FeatureInitializer uniform(RandomGenerator randomGenerator, double d, double d2) {
        return randomize(new UniformRealDistribution(randomGenerator, d, d2), function(new Constant(0.0d), 0.0d, 0.0d));
    }

    public static FeatureInitializer uniform(double d, double d2) {
        return randomize(new UniformRealDistribution(d, d2), function(new Constant(0.0d), 0.0d, 0.0d));
    }
}
