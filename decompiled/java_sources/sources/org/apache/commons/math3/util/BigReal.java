package org.apache.commons.math3.util;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.math.RoundingMode;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public class BigReal implements FieldElement<BigReal>, Comparable<BigReal>, Serializable {
    private static final long serialVersionUID = 4984534880991310382L;

    /* renamed from: d */
    private final BigDecimal f109812d;
    private RoundingMode roundingMode = RoundingMode.HALF_UP;
    private int scale = 64;
    public static final BigReal ZERO = new BigReal(BigDecimal.ZERO);
    public static final BigReal ONE = new BigReal(BigDecimal.ONE);

    public BigReal(BigDecimal bigDecimal) {
        this.f109812d = bigDecimal;
    }

    public BigDecimal bigDecimalValue() {
        return this.f109812d;
    }

    public double doubleValue() {
        return this.f109812d.doubleValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BigReal) {
            return this.f109812d.equals(((BigReal) obj).f109812d);
        }
        return false;
    }

    @Override // org.apache.commons.math3.FieldElement
    public Field<BigReal> getField() {
        return BigRealField.getInstance();
    }

    public RoundingMode getRoundingMode() {
        return this.roundingMode;
    }

    public int getScale() {
        return this.scale;
    }

    public int hashCode() {
        return this.f109812d.hashCode();
    }

    public void setRoundingMode(RoundingMode roundingMode) {
        this.roundingMode = roundingMode;
    }

    public void setScale(int i) {
        this.scale = i;
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigReal add(BigReal bigReal) {
        return new BigReal(this.f109812d.add(bigReal.f109812d));
    }

    @Override // java.lang.Comparable
    public int compareTo(BigReal bigReal) {
        return this.f109812d.compareTo(bigReal.f109812d);
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigReal divide(BigReal bigReal) throws MathArithmeticException {
        try {
            return new BigReal(this.f109812d.divide(bigReal.f109812d, this.scale, this.roundingMode));
        } catch (ArithmeticException unused) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NOT_ALLOWED, new Object[0]);
        }
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigReal negate() {
        return new BigReal(this.f109812d.negate());
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigReal reciprocal() throws MathArithmeticException {
        try {
            return new BigReal(BigDecimal.ONE.divide(this.f109812d, this.scale, this.roundingMode));
        } catch (ArithmeticException unused) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NOT_ALLOWED, new Object[0]);
        }
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigReal subtract(BigReal bigReal) {
        return new BigReal(this.f109812d.subtract(bigReal.f109812d));
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigReal multiply(BigReal bigReal) {
        return new BigReal(this.f109812d.multiply(bigReal.f109812d));
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigReal multiply(int i) {
        return new BigReal(this.f109812d.multiply(new BigDecimal(i)));
    }

    public BigReal(BigInteger bigInteger) {
        this.f109812d = new BigDecimal(bigInteger);
    }

    public BigReal(BigInteger bigInteger, int i) {
        this.f109812d = new BigDecimal(bigInteger, i);
    }

    public BigReal(BigInteger bigInteger, int i, MathContext mathContext) {
        this.f109812d = new BigDecimal(bigInteger, i, mathContext);
    }

    public BigReal(BigInteger bigInteger, MathContext mathContext) {
        this.f109812d = new BigDecimal(bigInteger, mathContext);
    }

    public BigReal(char[] cArr) {
        this.f109812d = new BigDecimal(cArr);
    }

    public BigReal(char[] cArr, int i, int i2) {
        this.f109812d = new BigDecimal(cArr, i, i2);
    }

    public BigReal(char[] cArr, int i, int i2, MathContext mathContext) {
        this.f109812d = new BigDecimal(cArr, i, i2, mathContext);
    }

    public BigReal(char[] cArr, MathContext mathContext) {
        this.f109812d = new BigDecimal(cArr, mathContext);
    }

    public BigReal(double d) {
        this.f109812d = new BigDecimal(d);
    }

    public BigReal(double d, MathContext mathContext) {
        this.f109812d = new BigDecimal(d, mathContext);
    }

    public BigReal(int i) {
        this.f109812d = new BigDecimal(i);
    }

    public BigReal(int i, MathContext mathContext) {
        this.f109812d = new BigDecimal(i, mathContext);
    }

    public BigReal(long j) {
        this.f109812d = new BigDecimal(j);
    }

    public BigReal(long j, MathContext mathContext) {
        this.f109812d = new BigDecimal(j, mathContext);
    }

    public BigReal(String str) {
        this.f109812d = new BigDecimal(str);
    }

    public BigReal(String str, MathContext mathContext) {
        this.f109812d = new BigDecimal(str, mathContext);
    }
}
