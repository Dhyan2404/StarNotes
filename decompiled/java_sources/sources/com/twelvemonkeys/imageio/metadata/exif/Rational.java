package com.twelvemonkeys.imageio.metadata.exif;

/* loaded from: classes10.dex */
public final class Rational extends Number implements Comparable<Rational> {
    private final long denominator;
    private final long numerator;
    static final Rational ZERO = new Rational(0, 1);
    static final Rational NaN = new Rational();

    private Rational() {
        this.numerator = 0L;
        this.denominator = 0L;
    }

    private static long gcd(long j, long j2) {
        return j < 0 ? gcd(j2, -j) : j2 == 0 ? j : gcd(j2, j % j2);
    }

    private static long lcm(long j, long j2) {
        return j < 0 ? lcm(j2, -j) : j * (j2 / gcd(j, j2));
    }

    public long denominator() {
        return this.denominator;
    }

    public Rational divides(Rational rational) {
        if (rational.equals(ZERO)) {
            throw new ArithmeticException("/ by zero");
        }
        return times(rational.reciprocal());
    }

    @Override // java.lang.Number
    public double doubleValue() {
        if (this == NaN) {
            return Double.NaN;
        }
        return this.numerator / this.denominator;
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof Rational) && compareTo((Rational) obj) == 0);
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) doubleValue();
    }

    public int hashCode() {
        return Float.floatToIntBits(floatValue());
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) doubleValue();
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) doubleValue();
    }

    public Rational minus(Rational rational) {
        return plus(rational.negate());
    }

    public Rational negate() {
        return new Rational(-this.numerator, this.denominator);
    }

    public long numerator() {
        return this.numerator;
    }

    public Rational plus(Rational rational) {
        Rational rational2 = ZERO;
        if (equals(rational2)) {
            return rational;
        }
        if (rational.equals(rational2)) {
            return this;
        }
        long gcd = gcd(this.numerator, rational.numerator);
        long gcd2 = gcd(this.denominator, rational.denominator);
        long j = this.numerator / gcd;
        long j2 = rational.denominator;
        long j3 = j * (j2 / gcd2);
        long j4 = rational.numerator / gcd;
        long j5 = this.denominator;
        return new Rational((j3 + (j4 * (j5 / gcd2))) * gcd, lcm(j5, j2));
    }

    public Rational reciprocal() {
        return new Rational(this.denominator, this.numerator);
    }

    public Rational times(Rational rational) {
        Rational rational2 = ZERO;
        if (equals(rational2) || rational.equals(rational2)) {
            return rational2;
        }
        Rational rational3 = new Rational(this.numerator, rational.denominator);
        Rational rational4 = new Rational(rational.numerator, this.denominator);
        return new Rational(rational3.numerator * rational4.numerator, rational3.denominator * rational4.denominator);
    }

    public String toString() {
        return this == NaN ? "NaN" : this.denominator == 1 ? Long.toString(this.numerator) : String.format("%s/%s", Long.valueOf(this.numerator), Long.valueOf(this.denominator));
    }

    @Override // java.lang.Comparable
    public int compareTo(Rational rational) {
        double doubleValue = doubleValue();
        double doubleValue2 = rational.doubleValue();
        if (doubleValue < doubleValue2) {
            return -1;
        }
        return doubleValue == doubleValue2 ? 0 : 1;
    }

    public Rational(long j) {
        this(j, 1L);
    }

    public Rational(long j, long j2) {
        if (j2 == 0) {
            throw new IllegalArgumentException("denominator == 0");
        }
        if (j != Long.MIN_VALUE && j2 != Long.MIN_VALUE) {
            long gcd = gcd(j, j2);
            long j3 = j / gcd;
            long j4 = j2 / gcd;
            this.numerator = j2 < 0 ? -j3 : j3;
            this.denominator = j2 < 0 ? -j4 : j4;
            return;
        }
        throw new IllegalArgumentException("value == Long.MIN_VALUE");
    }
}
