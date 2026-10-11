package org.apache.commons.math3.analysis.differentiation;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class SparseGradient implements RealFieldElement<SparseGradient>, Serializable {
    private static final long serialVersionUID = 20131025;
    private final Map<Integer, Double> derivatives;
    private double value;

    /* renamed from: org.apache.commons.math3.analysis.differentiation.SparseGradient$a */
    /* loaded from: classes12.dex */
    public class C19051a implements Field<SparseGradient> {
        public C19051a() {
        }

        @Override // org.apache.commons.math3.Field
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SparseGradient getOne() {
            return SparseGradient.createConstant(1.0d);
        }

        @Override // org.apache.commons.math3.Field
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public SparseGradient getZero() {
            return SparseGradient.createConstant(0.0d);
        }

        @Override // org.apache.commons.math3.Field
        public Class<? extends FieldElement<SparseGradient>> getRuntimeClass() {
            return SparseGradient.class;
        }
    }

    private SparseGradient(double d, Map<Integer, Double> map) {
        this.value = d;
        HashMap hashMap = new HashMap();
        this.derivatives = hashMap;
        if (map != null) {
            hashMap.putAll(map);
        }
    }

    public static SparseGradient createConstant(double d) {
        return new SparseGradient(d, Collections.emptyMap());
    }

    public static SparseGradient createVariable(int i, double d) {
        return new SparseGradient(d, Collections.singletonMap(Integer.valueOf(i), Double.valueOf(1.0d)));
    }

    public void addInPlace(SparseGradient sparseGradient) {
        this.value += sparseGradient.value;
        for (Map.Entry<Integer, Double> entry : sparseGradient.derivatives.entrySet()) {
            int intValue = entry.getKey().intValue();
            Double d = this.derivatives.get(Integer.valueOf(intValue));
            if (d == null) {
                this.derivatives.put(Integer.valueOf(intValue), entry.getValue());
            } else {
                this.derivatives.put(Integer.valueOf(intValue), Double.valueOf(d.doubleValue() + entry.getValue().doubleValue()));
            }
        }
    }

    public SparseGradient compose(double d, double d2) {
        return new SparseGradient(d, d2, this.derivatives);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SparseGradient)) {
            return false;
        }
        SparseGradient sparseGradient = (SparseGradient) obj;
        if (!Precision.equals(this.value, sparseGradient.value, 1) || this.derivatives.size() != sparseGradient.derivatives.size()) {
            return false;
        }
        for (Map.Entry<Integer, Double> entry : this.derivatives.entrySet()) {
            if (!sparseGradient.derivatives.containsKey(entry.getKey()) || !Precision.equals(entry.getValue().doubleValue(), sparseGradient.derivatives.get(entry.getKey()).doubleValue(), 1)) {
                return false;
            }
        }
        return true;
    }

    public double getDerivative(int i) {
        Double d = this.derivatives.get(Integer.valueOf(i));
        if (d == null) {
            return 0.0d;
        }
        return d.doubleValue();
    }

    @Override // org.apache.commons.math3.FieldElement
    public Field<SparseGradient> getField() {
        return new C19051a();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public double getReal() {
        return this.value;
    }

    public double getValue() {
        return this.value;
    }

    public int hashCode() {
        return (MathUtils.hash(this.value) * 809) + 743 + (this.derivatives.hashCode() * 167);
    }

    public SparseGradient log10() {
        return new SparseGradient(FastMath.log10(this.value), 1.0d / (FastMath.log(10.0d) * this.value), this.derivatives);
    }

    public void multiplyInPlace(SparseGradient sparseGradient) {
        for (Map.Entry<Integer, Double> entry : this.derivatives.entrySet()) {
            this.derivatives.put(entry.getKey(), Double.valueOf(sparseGradient.value * entry.getValue().doubleValue()));
        }
        for (Map.Entry<Integer, Double> entry2 : sparseGradient.derivatives.entrySet()) {
            int intValue = entry2.getKey().intValue();
            Double d = this.derivatives.get(Integer.valueOf(intValue));
            if (d == null) {
                this.derivatives.put(Integer.valueOf(intValue), Double.valueOf(this.value * entry2.getValue().doubleValue()));
            } else {
                this.derivatives.put(Integer.valueOf(intValue), Double.valueOf(d.doubleValue() + (this.value * entry2.getValue().doubleValue())));
            }
        }
        this.value *= sparseGradient.value;
    }

    public int numVars() {
        return this.derivatives.size();
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public long round() {
        return FastMath.round(this.value);
    }

    public double taylor(double... dArr) {
        double d = this.value;
        for (int i = 0; i < dArr.length; i++) {
            d += dArr[i] * getDerivative(i);
        }
        return d;
    }

    public SparseGradient toDegrees() {
        return new SparseGradient(FastMath.toDegrees(this.value), FastMath.toDegrees(1.0d), this.derivatives);
    }

    public SparseGradient toRadians() {
        return new SparseGradient(FastMath.toRadians(this.value), FastMath.toRadians(1.0d), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient abs() {
        return Double.doubleToLongBits(this.value) < 0 ? negate() : this;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient acos() {
        double acos = FastMath.acos(this.value);
        double d = this.value;
        return new SparseGradient(acos, (-1.0d) / FastMath.sqrt(1.0d - (d * d)), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient acosh() {
        double acosh = FastMath.acosh(this.value);
        double d = this.value;
        return new SparseGradient(acosh, 1.0d / FastMath.sqrt((d * d) - 1.0d), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient asin() {
        double asin = FastMath.asin(this.value);
        double d = this.value;
        return new SparseGradient(asin, 1.0d / FastMath.sqrt(1.0d - (d * d)), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient asinh() {
        double asinh = FastMath.asinh(this.value);
        double d = this.value;
        return new SparseGradient(asinh, 1.0d / FastMath.sqrt((d * d) + 1.0d), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient atan() {
        double atan = FastMath.atan(this.value);
        double d = this.value;
        return new SparseGradient(atan, 1.0d / ((d * d) + 1.0d), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient atan2(SparseGradient sparseGradient) {
        SparseGradient add;
        SparseGradient sqrt = multiply(this).add(sparseGradient.multiply(sparseGradient)).sqrt();
        if (sparseGradient.value >= 0.0d) {
            add = divide(sqrt.add(sparseGradient)).atan().multiply(2);
        } else {
            SparseGradient multiply = divide(sqrt.subtract(sparseGradient)).atan().multiply(-2);
            add = multiply.add(multiply.value <= 0.0d ? -3.141592653589793d : 3.141592653589793d);
        }
        add.value = FastMath.atan2(this.value, sparseGradient.value);
        return add;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient atanh() {
        double atanh = FastMath.atanh(this.value);
        double d = this.value;
        return new SparseGradient(atanh, 1.0d / (1.0d - (d * d)), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient cbrt() {
        double cbrt = FastMath.cbrt(this.value);
        return new SparseGradient(cbrt, 1.0d / ((3.0d * cbrt) * cbrt), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient ceil() {
        return createConstant(FastMath.ceil(this.value));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient cos() {
        return new SparseGradient(FastMath.cos(this.value), -FastMath.sin(this.value), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient cosh() {
        return new SparseGradient(FastMath.cosh(this.value), FastMath.sinh(this.value), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient exp() {
        double exp = FastMath.exp(this.value);
        return new SparseGradient(exp, exp, this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient expm1() {
        return new SparseGradient(FastMath.expm1(this.value), FastMath.exp(this.value), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient floor() {
        return createConstant(FastMath.floor(this.value));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient hypot(SparseGradient sparseGradient) {
        if (!Double.isInfinite(this.value) && !Double.isInfinite(sparseGradient.value)) {
            if (!Double.isNaN(this.value) && !Double.isNaN(sparseGradient.value)) {
                int exponent = FastMath.getExponent(this.value);
                int exponent2 = FastMath.getExponent(sparseGradient.value);
                if (exponent > exponent2 + 27) {
                    return abs();
                }
                if (exponent2 > exponent + 27) {
                    return sparseGradient.abs();
                }
                int i = (exponent + exponent2) / 2;
                int i2 = -i;
                SparseGradient scalb = scalb(i2);
                SparseGradient scalb2 = sparseGradient.scalb(i2);
                return scalb.multiply(scalb).add(scalb2.multiply(scalb2)).sqrt().scalb(i);
            }
            return createConstant(Double.NaN);
        }
        return createConstant(Double.POSITIVE_INFINITY);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient log() {
        return new SparseGradient(FastMath.log(this.value), 1.0d / this.value, this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient log1p() {
        return new SparseGradient(FastMath.log1p(this.value), 1.0d / (this.value + 1.0d), this.derivatives);
    }

    @Override // org.apache.commons.math3.FieldElement
    public SparseGradient negate() {
        return new SparseGradient(-this.value, -1.0d, this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement, org.apache.commons.math3.FieldElement
    public SparseGradient reciprocal() {
        double d = this.value;
        return new SparseGradient(1.0d / d, (-1.0d) / (d * d), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient rint() {
        return createConstant(FastMath.rint(this.value));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient rootN(int i) {
        if (i == 2) {
            return sqrt();
        }
        if (i == 3) {
            return cbrt();
        }
        double d = i;
        double pow = FastMath.pow(this.value, 1.0d / d);
        return new SparseGradient(pow, 1.0d / (d * FastMath.pow(pow, i - 1)), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient scalb(int i) {
        SparseGradient sparseGradient = new SparseGradient(FastMath.scalb(this.value, i), Collections.emptyMap());
        for (Map.Entry<Integer, Double> entry : this.derivatives.entrySet()) {
            sparseGradient.derivatives.put(entry.getKey(), Double.valueOf(FastMath.scalb(entry.getValue().doubleValue(), i)));
        }
        return sparseGradient;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient signum() {
        return createConstant(FastMath.signum(this.value));
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient sin() {
        return new SparseGradient(FastMath.sin(this.value), FastMath.cos(this.value), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient sinh() {
        return new SparseGradient(FastMath.sinh(this.value), FastMath.cosh(this.value), this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient sqrt() {
        double sqrt = FastMath.sqrt(this.value);
        return new SparseGradient(sqrt, 0.5d / sqrt, this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient tan() {
        double tan = FastMath.tan(this.value);
        return new SparseGradient(tan, (tan * tan) + 1.0d, this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient tanh() {
        double tanh = FastMath.tanh(this.value);
        return new SparseGradient(tanh, 1.0d - (tanh * tanh), this.derivatives);
    }

    @Override // org.apache.commons.math3.FieldElement
    public SparseGradient add(SparseGradient sparseGradient) {
        SparseGradient sparseGradient2 = new SparseGradient(this.value + sparseGradient.value, this.derivatives);
        for (Map.Entry<Integer, Double> entry : sparseGradient.derivatives.entrySet()) {
            int intValue = entry.getKey().intValue();
            Double d = sparseGradient2.derivatives.get(Integer.valueOf(intValue));
            if (d == null) {
                sparseGradient2.derivatives.put(Integer.valueOf(intValue), entry.getValue());
            } else {
                sparseGradient2.derivatives.put(Integer.valueOf(intValue), Double.valueOf(d.doubleValue() + entry.getValue().doubleValue()));
            }
        }
        return sparseGradient2;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient copySign(SparseGradient sparseGradient) {
        long doubleToLongBits = Double.doubleToLongBits(this.value);
        long doubleToLongBits2 = Double.doubleToLongBits(sparseGradient.value);
        return ((doubleToLongBits < 0 || doubleToLongBits2 < 0) && (doubleToLongBits >= 0 || doubleToLongBits2 >= 0)) ? negate() : this;
    }

    @Override // org.apache.commons.math3.FieldElement
    public SparseGradient divide(SparseGradient sparseGradient) {
        SparseGradient sparseGradient2 = new SparseGradient(this.value / sparseGradient.value, Collections.emptyMap());
        for (Map.Entry<Integer, Double> entry : this.derivatives.entrySet()) {
            sparseGradient2.derivatives.put(entry.getKey(), Double.valueOf(entry.getValue().doubleValue() / sparseGradient.value));
        }
        for (Map.Entry<Integer, Double> entry2 : sparseGradient.derivatives.entrySet()) {
            int intValue = entry2.getKey().intValue();
            Double d = sparseGradient2.derivatives.get(Integer.valueOf(intValue));
            if (d == null) {
                sparseGradient2.derivatives.put(Integer.valueOf(intValue), Double.valueOf(((-sparseGradient2.value) / sparseGradient.value) * entry2.getValue().doubleValue()));
            } else {
                sparseGradient2.derivatives.put(Integer.valueOf(intValue), Double.valueOf(d.doubleValue() - ((sparseGradient2.value / sparseGradient.value) * entry2.getValue().doubleValue())));
            }
        }
        return sparseGradient2;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient remainder(double d) {
        return new SparseGradient(FastMath.IEEEremainder(this.value, d), this.derivatives);
    }

    @Override // org.apache.commons.math3.FieldElement
    public SparseGradient subtract(SparseGradient sparseGradient) {
        SparseGradient sparseGradient2 = new SparseGradient(this.value - sparseGradient.value, this.derivatives);
        for (Map.Entry<Integer, Double> entry : sparseGradient.derivatives.entrySet()) {
            int intValue = entry.getKey().intValue();
            Double d = sparseGradient2.derivatives.get(Integer.valueOf(intValue));
            if (d == null) {
                sparseGradient2.derivatives.put(Integer.valueOf(intValue), Double.valueOf(-entry.getValue().doubleValue()));
            } else {
                sparseGradient2.derivatives.put(Integer.valueOf(intValue), Double.valueOf(d.doubleValue() - entry.getValue().doubleValue()));
            }
        }
        return sparseGradient2;
    }

    @Override // org.apache.commons.math3.FieldElement
    public SparseGradient multiply(SparseGradient sparseGradient) {
        SparseGradient sparseGradient2 = new SparseGradient(this.value * sparseGradient.value, Collections.emptyMap());
        for (Map.Entry<Integer, Double> entry : this.derivatives.entrySet()) {
            sparseGradient2.derivatives.put(entry.getKey(), Double.valueOf(sparseGradient.value * entry.getValue().doubleValue()));
        }
        for (Map.Entry<Integer, Double> entry2 : sparseGradient.derivatives.entrySet()) {
            int intValue = entry2.getKey().intValue();
            Double d = sparseGradient2.derivatives.get(Integer.valueOf(intValue));
            if (d == null) {
                sparseGradient2.derivatives.put(Integer.valueOf(intValue), Double.valueOf(this.value * entry2.getValue().doubleValue()));
            } else {
                sparseGradient2.derivatives.put(Integer.valueOf(intValue), Double.valueOf(d.doubleValue() + (this.value * entry2.getValue().doubleValue())));
            }
        }
        return sparseGradient2;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient pow(double d) {
        return new SparseGradient(FastMath.pow(this.value, d), FastMath.pow(this.value, d - 1.0d) * d, this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient remainder(SparseGradient sparseGradient) {
        return subtract(sparseGradient.multiply(FastMath.rint((this.value - FastMath.IEEEremainder(this.value, sparseGradient.value)) / sparseGradient.value)));
    }

    private SparseGradient(double d, double d2, Map<Integer, Double> map) {
        this.value = d;
        this.derivatives = new HashMap();
        if (map != null) {
            for (Map.Entry<Integer, Double> entry : map.entrySet()) {
                this.derivatives.put(entry.getKey(), Double.valueOf(entry.getValue().doubleValue() * d2));
            }
        }
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient pow(int i) {
        if (i == 0) {
            return getField().getOne();
        }
        double pow = FastMath.pow(this.value, i - 1);
        return new SparseGradient(this.value * pow, i * pow, this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient copySign(double d) {
        long doubleToLongBits = Double.doubleToLongBits(this.value);
        long doubleToLongBits2 = Double.doubleToLongBits(d);
        return ((doubleToLongBits < 0 || doubleToLongBits2 < 0) && (doubleToLongBits >= 0 || doubleToLongBits2 >= 0)) ? negate() : this;
    }

    public static SparseGradient atan2(SparseGradient sparseGradient, SparseGradient sparseGradient2) {
        return sparseGradient.atan2(sparseGradient2);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient pow(SparseGradient sparseGradient) {
        return log().multiply(sparseGradient).exp();
    }

    public static SparseGradient pow(double d, SparseGradient sparseGradient) {
        if (d == 0.0d) {
            double d2 = sparseGradient.value;
            if (d2 == 0.0d) {
                return sparseGradient.compose(1.0d, Double.NEGATIVE_INFINITY);
            }
            if (d2 < 0.0d) {
                return sparseGradient.compose(Double.NaN, Double.NaN);
            }
            return sparseGradient.getField().getZero();
        }
        double pow = FastMath.pow(d, sparseGradient.value);
        return new SparseGradient(pow, pow * FastMath.log(d), sparseGradient.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient add(double d) {
        return new SparseGradient(this.value + d, this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient linearCombination(SparseGradient[] sparseGradientArr, SparseGradient[] sparseGradientArr2) throws DimensionMismatchException {
        SparseGradient zero = sparseGradientArr[0].getField().getZero();
        for (int i = 0; i < sparseGradientArr.length; i++) {
            zero = zero.add(sparseGradientArr[i].multiply(sparseGradientArr2[i]));
        }
        double[] dArr = new double[sparseGradientArr.length];
        for (int i2 = 0; i2 < sparseGradientArr.length; i2++) {
            dArr[i2] = sparseGradientArr[i2].getValue();
        }
        double[] dArr2 = new double[sparseGradientArr2.length];
        for (int i3 = 0; i3 < sparseGradientArr2.length; i3++) {
            dArr2[i3] = sparseGradientArr2[i3].getValue();
        }
        zero.value = MathArrays.linearCombination(dArr, dArr2);
        return zero;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient subtract(double d) {
        return new SparseGradient(this.value - d, this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient divide(double d) {
        return new SparseGradient(this.value / d, 1.0d / d, this.derivatives);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient multiply(double d) {
        return new SparseGradient(this.value * d, d, this.derivatives);
    }

    @Override // org.apache.commons.math3.FieldElement
    public SparseGradient multiply(int i) {
        double d = i;
        return new SparseGradient(this.value * d, d, this.derivatives);
    }

    public static SparseGradient hypot(SparseGradient sparseGradient, SparseGradient sparseGradient2) {
        return sparseGradient.hypot(sparseGradient2);
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient linearCombination(double[] dArr, SparseGradient[] sparseGradientArr) {
        SparseGradient zero = sparseGradientArr[0].getField().getZero();
        for (int i = 0; i < dArr.length; i++) {
            zero = zero.add(sparseGradientArr[i].multiply(dArr[i]));
        }
        double[] dArr2 = new double[sparseGradientArr.length];
        for (int i2 = 0; i2 < sparseGradientArr.length; i2++) {
            dArr2[i2] = sparseGradientArr[i2].getValue();
        }
        zero.value = MathArrays.linearCombination(dArr, dArr2);
        return zero;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient linearCombination(SparseGradient sparseGradient, SparseGradient sparseGradient2, SparseGradient sparseGradient3, SparseGradient sparseGradient4) {
        SparseGradient add = sparseGradient.multiply(sparseGradient2).add(sparseGradient3.multiply(sparseGradient4));
        add.value = MathArrays.linearCombination(sparseGradient.value, sparseGradient2.value, sparseGradient3.value, sparseGradient4.value);
        return add;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient linearCombination(double d, SparseGradient sparseGradient, double d2, SparseGradient sparseGradient2) {
        SparseGradient add = sparseGradient.multiply(d).add(sparseGradient2.multiply(d2));
        add.value = MathArrays.linearCombination(d, sparseGradient.value, d2, sparseGradient2.value);
        return add;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient linearCombination(SparseGradient sparseGradient, SparseGradient sparseGradient2, SparseGradient sparseGradient3, SparseGradient sparseGradient4, SparseGradient sparseGradient5, SparseGradient sparseGradient6) {
        SparseGradient add = sparseGradient.multiply(sparseGradient2).add(sparseGradient3.multiply(sparseGradient4)).add(sparseGradient5.multiply(sparseGradient6));
        add.value = MathArrays.linearCombination(sparseGradient.value, sparseGradient2.value, sparseGradient3.value, sparseGradient4.value, sparseGradient5.value, sparseGradient6.value);
        return add;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient linearCombination(double d, SparseGradient sparseGradient, double d2, SparseGradient sparseGradient2, double d3, SparseGradient sparseGradient3) {
        SparseGradient add = sparseGradient.multiply(d).add(sparseGradient2.multiply(d2)).add(sparseGradient3.multiply(d3));
        add.value = MathArrays.linearCombination(d, sparseGradient.value, d2, sparseGradient2.value, d3, sparseGradient3.value);
        return add;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient linearCombination(SparseGradient sparseGradient, SparseGradient sparseGradient2, SparseGradient sparseGradient3, SparseGradient sparseGradient4, SparseGradient sparseGradient5, SparseGradient sparseGradient6, SparseGradient sparseGradient7, SparseGradient sparseGradient8) {
        SparseGradient add = sparseGradient.multiply(sparseGradient2).add(sparseGradient3.multiply(sparseGradient4)).add(sparseGradient5.multiply(sparseGradient6)).add(sparseGradient7.multiply(sparseGradient8));
        add.value = MathArrays.linearCombination(sparseGradient.value, sparseGradient2.value, sparseGradient3.value, sparseGradient4.value, sparseGradient5.value, sparseGradient6.value, sparseGradient7.value, sparseGradient8.value);
        return add;
    }

    @Override // org.apache.commons.math3.RealFieldElement
    public SparseGradient linearCombination(double d, SparseGradient sparseGradient, double d2, SparseGradient sparseGradient2, double d3, SparseGradient sparseGradient3, double d4, SparseGradient sparseGradient4) {
        SparseGradient add = sparseGradient.multiply(d).add(sparseGradient2.multiply(d2)).add(sparseGradient3.multiply(d3)).add(sparseGradient4.multiply(d4));
        add.value = MathArrays.linearCombination(d, sparseGradient.value, d2, sparseGradient2.value, d3, sparseGradient3.value, d4, sparseGradient4.value);
        return add;
    }
}
