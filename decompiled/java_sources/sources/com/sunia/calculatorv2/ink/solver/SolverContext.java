package com.sunia.calculatorv2.ink.solver;

import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.C14735z0;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Objects;

/* loaded from: classes10.dex */
public class SolverContext {
    private final DecimalFormat decimalFormat;
    private final boolean degree;
    private final long epsilon;
    private final FractionPreference fractionPreference;
    private final int precision;
    private final DecimalFormat scientificFormat;
    private final boolean truncated;

    /* loaded from: classes10.dex */
    public enum FractionPreference {
        DECIMAL(0),
        IMPROPER_FRACTION(1),
        MIXED_NUMBER(2);

        private final int value;

        FractionPreference(int i) {
            this.value = i;
        }
    }

    public SolverContext(boolean z, int i) {
        this(z, i, FractionPreference.DECIMAL);
    }

    private String encodeDouble(double d) {
        if (Double.isNaN(d)) {
            return "?";
        }
        if (Double.isInfinite(d)) {
            return "\\infty";
        }
        if (Math.abs(d) <= 1.0E10d) {
            return this.decimalFormat.format(d);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\\left(");
        sb.append(this.scientificFormat.format(d).replace("E", this.truncated ? "\\ldots\\times10^{" : "\\times10^{"));
        sb.append("\\right)");
        return sb.toString();
    }

    public static void main(String[] strArr) {
    }

    public String encodeNumber(C14735z0 c14735z0) {
        String encodeDouble;
        boolean z = c14735z0.m58581h() < 0;
        if (z) {
            c14735z0 = c14735z0.m58580g();
        }
        if (c14735z0.m58579f()) {
            long m58573c = c14735z0.m58573c();
            long m58571b = c14735z0.m58571b();
            if (m58571b == 1) {
                encodeDouble = Long.toString(m58573c);
            } else {
                FractionPreference fractionPreference = this.fractionPreference;
                if (fractionPreference == FractionPreference.IMPROPER_FRACTION) {
                    encodeDouble = "\\left(\\frac{" + m58573c + "}{" + m58571b + "}\\right)";
                } else if (fractionPreference == FractionPreference.MIXED_NUMBER) {
                    long j = m58573c / m58571b;
                    StringBuilder sb = new StringBuilder();
                    sb.append("\\left(");
                    sb.append(j != 0 ? Long.toString(j) : "");
                    sb.append("\\frac{");
                    sb.append(m58573c % m58571b);
                    sb.append("}{");
                    sb.append(m58571b);
                    sb.append("}\\right)");
                    encodeDouble = sb.toString();
                } else {
                    encodeDouble = (this.epsilon * m58573c) % m58571b == 0 ? BigDecimal.valueOf(m58573c).divide(BigDecimal.valueOf(m58571b)).toPlainString() : encodeDouble(c14735z0.m58582i());
                }
            }
        } else {
            encodeDouble = encodeDouble(c14735z0.m58582i());
        }
        if (z) {
            if (encodeDouble.indexOf(40) != -1) {
                encodeDouble = encodeDouble.replace(MotionUtils.f31761c, "(-");
            } else {
                encodeDouble = "(-" + encodeDouble + MotionUtils.f31762d;
            }
        }
        return "\\underline{" + encodeDouble + "}";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SolverContext solverContext = (SolverContext) obj;
        return this.degree == solverContext.degree && this.precision == solverContext.precision && this.fractionPreference == solverContext.fractionPreference && this.truncated == solverContext.truncated;
    }

    public FractionPreference getFractionPreference() {
        return this.fractionPreference;
    }

    public int getPrecision() {
        return this.precision;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.degree), Integer.valueOf(this.precision), this.fractionPreference, Boolean.valueOf(this.truncated));
    }

    public boolean isDegree() {
        return this.degree;
    }

    public boolean isExact(C14735z0 c14735z0) {
        if (c14735z0.m58579f()) {
            return this.fractionPreference != FractionPreference.DECIMAL || (c14735z0.m58573c() * this.epsilon) % c14735z0.m58571b() == 0;
        }
        return false;
    }

    public boolean isTruncated() {
        return this.truncated;
    }

    public SolverContext(boolean z, int i, FractionPreference fractionPreference) {
        this(z, i, fractionPreference, true);
    }

    public SolverContext(boolean z, int i, FractionPreference fractionPreference, boolean z2) {
        this.degree = z;
        this.precision = i;
        this.fractionPreference = fractionPreference;
        this.truncated = z2;
        String str = ".";
        long j = 1;
        for (int i2 = 0; i2 < i; i2++) {
            str = str + "0";
            j *= 10;
        }
        this.epsilon = j;
        if (z2) {
            DecimalFormat decimalFormat = new DecimalFormat("0" + str + "\\ldots");
            this.decimalFormat = decimalFormat;
            DecimalFormat decimalFormat2 = new DecimalFormat("0" + str + "E0}");
            this.scientificFormat = decimalFormat2;
            decimalFormat.setRoundingMode(RoundingMode.DOWN);
            decimalFormat2.setRoundingMode(RoundingMode.DOWN);
            return;
        }
        DecimalFormat decimalFormat3 = new DecimalFormat("0" + str);
        this.decimalFormat = decimalFormat3;
        DecimalFormat decimalFormat4 = new DecimalFormat("0" + str + "E0}");
        this.scientificFormat = decimalFormat4;
        decimalFormat3.setRoundingMode(RoundingMode.HALF_UP);
        decimalFormat4.setRoundingMode(RoundingMode.HALF_UP);
    }
}
