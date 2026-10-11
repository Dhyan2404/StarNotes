package org.apache.commons.math3.random;

import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class StableRandomGenerator implements NormalizedRandomGenerator {

    /* renamed from: a */
    public final RandomGenerator f109605a;

    /* renamed from: b */
    public final double f109606b;

    /* renamed from: c */
    public final double f109607c;

    /* renamed from: d */
    public final double f109608d;

    public StableRandomGenerator(RandomGenerator randomGenerator, double d, double d2) throws NullArgumentException, OutOfRangeException {
        if (randomGenerator == null) {
            throw new NullArgumentException();
        }
        if (d <= 0.0d || d > 2.0d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_RANGE_LEFT, Double.valueOf(d), 0, 2);
        }
        if (d2 < -1.0d || d2 > 1.0d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_RANGE_SIMPLE, Double.valueOf(d2), -1, 1);
        }
        this.f109605a = randomGenerator;
        this.f109606b = d;
        this.f109607c = d2;
        if (d >= 2.0d || d2 == 0.0d) {
            this.f109608d = 0.0d;
        } else {
            this.f109608d = d2 * FastMath.tan((d * 3.141592653589793d) / 2.0d);
        }
    }

    @Override // org.apache.commons.math3.random.NormalizedRandomGenerator
    public double nextNormalizedDouble() {
        double d = -FastMath.log(this.f109605a.nextDouble());
        double nextDouble = (this.f109605a.nextDouble() - 0.5d) * 3.141592653589793d;
        double d2 = this.f109606b;
        if (d2 == 2.0d) {
            return FastMath.sqrt(d * 2.0d) * FastMath.sin(nextDouble);
        }
        if (this.f109607c == 0.0d) {
            return d2 == 1.0d ? FastMath.tan(nextDouble) : (FastMath.pow(d * FastMath.cos((1.0d - d2) * nextDouble), (1.0d / this.f109606b) - 1.0d) * FastMath.sin(this.f109606b * nextDouble)) / FastMath.pow(FastMath.cos(nextDouble), 1.0d / this.f109606b);
        }
        double cos = FastMath.cos(nextDouble);
        if (FastMath.abs(this.f109606b - 1.0d) <= 1.0E-8d) {
            double d3 = (this.f109607c * nextDouble) + 1.5707963267948966d;
            double tan = 0.6366197723675814d * ((FastMath.tan(nextDouble) * d3) - (this.f109607c * FastMath.log(((d * 1.5707963267948966d) * cos) / d3)));
            double d4 = this.f109606b;
            return d4 != 1.0d ? tan + (this.f109607c * FastMath.tan((d4 * 3.141592653589793d) / 2.0d)) : tan;
        }
        double d5 = this.f109606b * nextDouble;
        double d6 = nextDouble - d5;
        double sin = ((FastMath.sin(d5) + (this.f109608d * FastMath.cos(d5))) / cos) * (FastMath.cos(d6) + (this.f109608d * FastMath.sin(d6)));
        double d7 = this.f109606b;
        return sin / FastMath.pow(d * cos, (1.0d - d7) / d7);
    }
}
