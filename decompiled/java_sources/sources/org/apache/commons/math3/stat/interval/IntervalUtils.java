package org.apache.commons.math3.stat.interval;

import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public final class IntervalUtils {

    /* renamed from: a */
    public static final BinomialConfidenceInterval f109770a = new AgrestiCoullInterval();

    /* renamed from: b */
    public static final BinomialConfidenceInterval f109771b = new ClopperPearsonInterval();

    /* renamed from: c */
    public static final BinomialConfidenceInterval f109772c = new NormalApproximationInterval();

    /* renamed from: d */
    public static final BinomialConfidenceInterval f109773d = new WilsonScoreInterval();

    /* renamed from: a */
    public static void m68170a(int i, int i2, double d) {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_TRIALS, Integer.valueOf(i));
        }
        if (i2 < 0) {
            throw new NotPositiveException(LocalizedFormats.NEGATIVE_NUMBER_OF_SUCCESSES, Integer.valueOf(i2));
        }
        if (i2 > i) {
            throw new NumberIsTooLargeException(LocalizedFormats.NUMBER_OF_SUCCESS_LARGER_THAN_POPULATION_SIZE, Integer.valueOf(i2), Integer.valueOf(i), true);
        }
        if (d <= 0.0d || d >= 1.0d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUNDS_CONFIDENCE_LEVEL, Double.valueOf(d), 0, 1);
        }
    }

    public static ConfidenceInterval getAgrestiCoullInterval(int i, int i2, double d) {
        return f109770a.createInterval(i, i2, d);
    }

    public static ConfidenceInterval getClopperPearsonInterval(int i, int i2, double d) {
        return f109771b.createInterval(i, i2, d);
    }

    public static ConfidenceInterval getNormalApproximationInterval(int i, int i2, double d) {
        return f109772c.createInterval(i, i2, d);
    }

    public static ConfidenceInterval getWilsonScoreInterval(int i, int i2, double d) {
        return f109773d.createInterval(i, i2, d);
    }
}
