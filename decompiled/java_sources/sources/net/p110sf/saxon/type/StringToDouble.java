package net.p110sf.saxon.type;

import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.value.DoubleValue;

/* loaded from: classes11.dex */
public class StringToDouble extends StringConverter {

    /* renamed from: b */
    public static final StringToDouble f102813b = new StringToDouble();

    /* renamed from: c */
    public static final double[] f102814c = {1.0d, 10.0d, 100.0d, 1000.0d, 10000.0d, 100000.0d, 1000000.0d, 1.0E7d, 1.0E8d};

    public static StringToDouble getInstance() {
        return f102813b;
    }

    @Override // net.p110sf.saxon.type.StringConverter
    public ConversionResult convertString(UnicodeString unicodeString) {
        try {
            return new DoubleValue(stringToNumber(unicodeString));
        } catch (NumberFormatException unused) {
            return new ValidationFailure("Cannot convert string " + Err.wrap(unicodeString, 4) + " to double");
        }
    }

    public double signedPositiveInfinity() {
        throw new NumberFormatException("the float/double value '+INF' is not allowed under XSD 1.0");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:90:0x00b2. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0027. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0069 A[LOOP:0: B:4:0x0018->B:14:0x0069, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double stringToNumber(net.p110sf.saxon.str.UnicodeString r20) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.type.StringToDouble.stringToNumber(net.sf.saxon.str.UnicodeString):double");
    }
}
