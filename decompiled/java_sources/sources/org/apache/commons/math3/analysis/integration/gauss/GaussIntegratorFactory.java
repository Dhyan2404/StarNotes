package org.apache.commons.math3.analysis.integration.gauss;

import java.math.BigDecimal;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.util.Pair;

/* loaded from: classes12.dex */
public class GaussIntegratorFactory {

    /* renamed from: a */
    public final BaseRuleFactory<Double> f107840a = new LegendreRuleFactory();

    /* renamed from: b */
    public final BaseRuleFactory<BigDecimal> f107841b = new LegendreHighPrecisionRuleFactory();

    /* renamed from: c */
    public final BaseRuleFactory<Double> f107842c = new HermiteRuleFactory();

    /* renamed from: a */
    public static Pair<double[], double[]> m67490a(BaseRuleFactory<? extends Number> baseRuleFactory, int i) throws NotStrictlyPositiveException, DimensionMismatchException {
        return baseRuleFactory.getRule(i);
    }

    /* renamed from: b */
    public static Pair<double[], double[]> m67491b(Pair<double[], double[]> pair, double d, double d2) {
        double[] first = pair.getFirst();
        double[] second = pair.getSecond();
        double d3 = (d2 - d) / 2.0d;
        double d4 = d + d3;
        for (int i = 0; i < first.length; i++) {
            first[i] = (first[i] * d3) + d4;
            second[i] = second[i] * d3;
        }
        return new Pair<>(first, second);
    }

    public SymmetricGaussIntegrator hermite(int i) {
        return new SymmetricGaussIntegrator(m67490a(this.f107842c, i));
    }

    public GaussIntegrator legendre(int i) {
        return new GaussIntegrator(m67490a(this.f107840a, i));
    }

    public GaussIntegrator legendreHighPrecision(int i) throws NotStrictlyPositiveException {
        return new GaussIntegrator(m67490a(this.f107841b, i));
    }

    public GaussIntegrator legendre(int i, double d, double d2) throws NotStrictlyPositiveException {
        return new GaussIntegrator(m67491b(m67490a(this.f107840a, i), d, d2));
    }

    public GaussIntegrator legendreHighPrecision(int i, double d, double d2) throws NotStrictlyPositiveException {
        return new GaussIntegrator(m67491b(m67490a(this.f107841b, i), d, d2));
    }
}
