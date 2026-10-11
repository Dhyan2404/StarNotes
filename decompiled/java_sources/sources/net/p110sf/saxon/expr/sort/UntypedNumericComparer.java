package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.NumericValue;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class UntypedNumericComparer implements AtomicComparer {

    /* renamed from: b */
    public static final double[][] f100130b = {new double[]{1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{1.0d, 1.0d, 10.0d, 100.0d, 1000.0d, 10000.0d, 100000.0d, 1000000.0d, 1.0E7d, 1.0E8d, 1.0E9d, 1.0E10d}, new double[]{1.0d, 2.0d, 20.0d, 200.0d, 2000.0d, 20000.0d, 200000.0d, 2000000.0d, 2.0E7d, 2.0E8d, 2.0E9d, 2.0E10d}, new double[]{1.0d, 3.0d, 30.0d, 300.0d, 3000.0d, 30000.0d, 300000.0d, 3000000.0d, 3.0E7d, 3.0E8d, 3.0E9d, 3.0E10d}, new double[]{1.0d, 4.0d, 40.0d, 400.0d, 4000.0d, 40000.0d, 400000.0d, 4000000.0d, 4.0E7d, 4.0E8d, 4.0E9d, 4.0E10d}, new double[]{1.0d, 5.0d, 50.0d, 500.0d, 5000.0d, 50000.0d, 500000.0d, 5000000.0d, 5.0E7d, 5.0E8d, 5.0E9d, 5.0E10d}, new double[]{1.0d, 6.0d, 60.0d, 600.0d, 6000.0d, 60000.0d, 600000.0d, 6000000.0d, 6.0E7d, 6.0E8d, 6.0E9d, 6.0E10d}, new double[]{1.0d, 7.0d, 70.0d, 700.0d, 7000.0d, 70000.0d, 700000.0d, 7000000.0d, 7.0E7d, 7.0E8d, 7.0E9d, 7.0E10d}, new double[]{1.0d, 8.0d, 80.0d, 800.0d, 8000.0d, 80000.0d, 800000.0d, 8000000.0d, 8.0E7d, 8.0E8d, 8.0E9d, 8.0E10d}, new double[]{1.0d, 9.0d, 90.0d, 900.0d, 9000.0d, 90000.0d, 900000.0d, 9000000.0d, 9.0E7d, 9.0E8d, 9.0E9d, 9.0E10d}, new double[]{1.0d, 10.0d, 100.0d, 1000.0d, 10000.0d, 100000.0d, 1000000.0d, 1.0E7d, 1.0E8d, 1.0E9d, 1.0E10d, 1.0E11d}};

    /* renamed from: a */
    public ConversionRules f100131a = ConversionRules.DEFAULT;

    /* renamed from: a */
    public static int m62946a(StringValue stringValue, NumericValue numericValue, ConversionRules conversionRules) throws XPathException {
        boolean z;
        ConversionResult convertString;
        double doubleValue = numericValue.getDoubleValue();
        UnicodeString trim = Whitespace.trim(stringValue.getUnicodeStringValue());
        int i = 0;
        char c = 0;
        int i2 = 0;
        int i3 = -1;
        int i4 = 63;
        while (true) {
            long j = i;
            if (j >= trim.length()) {
                z = true;
                break;
            }
            int codePointAt = trim.codePointAt(j);
            if (codePointAt >= 48 && codePointAt <= 57) {
                if (i3 < 0) {
                    i3 = codePointAt - 48;
                }
                if (c == 0) {
                    i2++;
                }
            } else if (codePointAt != 45) {
                if (codePointAt != 46 || c > 0) {
                    break;
                }
                c = 1;
            } else {
                if (i4 != 63 || i2 > 0 || c > 0) {
                    break;
                }
                i4 = codePointAt;
            }
            i++;
        }
        boolean z2 = i3 >= 0 ? z : false;
        if (z2 && i2 > 0 && i2 <= 10) {
            double[][] dArr = f100130b;
            double d = dArr[i3][i2];
            double d2 = dArr[i3 + 1][i2];
            if (i4 == 45) {
                double d3 = -d;
                d = -d2;
                d2 = d3;
            }
            if (d2 < doubleValue) {
                return -1;
            }
            if (d > doubleValue) {
                return 1;
            }
        }
        if (z2 && c == 0 && i2 <= 15 && (numericValue instanceof Int64Value)) {
            return Long.compare(Long.parseLong(trim.toString()), numericValue.longValue());
        }
        synchronized (stringValue) {
            convertString = BuiltInAtomicType.DOUBLE.getStringConverter(conversionRules).convertString(stringValue.getUnicodeStringValue());
        }
        return Double.compare(((DoubleValue) convertString.asAtomic()).getDoubleValue(), doubleValue);
    }

    public static boolean quickCompare(StringValue stringValue, NumericValue numericValue, int i, ConversionRules conversionRules) throws XPathException {
        int m62946a = m62946a(stringValue, numericValue, conversionRules);
        switch (i) {
            case 50:
                return m62946a == 0;
            case 51:
            default:
                return m62946a != 0;
            case 52:
                return m62946a > 0;
            case 53:
                return m62946a < 0;
            case 54:
                return m62946a >= 0;
            case 55:
                return m62946a <= 0;
        }
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public int compareAtomicValues(AtomicValue atomicValue, AtomicValue atomicValue2) {
        try {
            return m62946a((StringValue) atomicValue, (NumericValue) atomicValue2, this.f100131a);
        } catch (XPathException e) {
            throw new ComparisonException(e);
        }
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public boolean comparesEqual(AtomicValue atomicValue, AtomicValue atomicValue2) {
        return compareAtomicValues(atomicValue, atomicValue2) == 0;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public StringCollator getCollator() {
        return null;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public AtomicComparer provideContext(XPathContext xPathContext) {
        this.f100131a = xPathContext.getConfiguration().getConversionRules();
        return this;
    }

    @Override // net.p110sf.saxon.expr.sort.AtomicComparer
    public String save() {
        return "QUNC";
    }
}
