package org.apache.xerces.impl.p115dv.p116xs;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.math.BigDecimal;
import java.math.BigInteger;
import javax.xml.datatype.Duration;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV;

/* loaded from: classes13.dex */
public class DurationDV extends AbstractDateTimeDV {
    public static final int DAYTIMEDURATION_TYPE = 2;
    public static final int DURATION_TYPE = 0;
    public static final int YEARMONTHDURATION_TYPE = 1;

    /* renamed from: c */
    public static final AbstractDateTimeDV.C20011a[] f112336c = {new AbstractDateTimeDV.C20011a(1696, 9, 1, 0, 0, 0.0d, 90, null, true, null), new AbstractDateTimeDV.C20011a(1697, 2, 1, 0, 0, 0.0d, 90, null, true, null), new AbstractDateTimeDV.C20011a(1903, 3, 1, 0, 0, 0.0d, 90, null, true, null), new AbstractDateTimeDV.C20011a(1903, 7, 1, 0, 0, 0.0d, 90, null, true, null)};

    @Override // org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public short compareDates(AbstractDateTimeDV.C20011a c20011a, AbstractDateTimeDV.C20011a c20011a2, boolean z) {
        short m69946f;
        short m69946f2;
        if (compareOrder(c20011a, c20011a2) == 0) {
            return (short) 0;
        }
        AbstractDateTimeDV.C20011a[] c20011aArr = {new AbstractDateTimeDV.C20011a(null, this), new AbstractDateTimeDV.C20011a(null, this)};
        AbstractDateTimeDV.C20011a[] c20011aArr2 = f112336c;
        short compareOrder = compareOrder(m69945e(c20011a, c20011aArr2[0], c20011aArr[0]), m69945e(c20011a2, c20011aArr2[0], c20011aArr[1]));
        if (compareOrder == 2 || (m69946f = m69946f(compareOrder, compareOrder(m69945e(c20011a, c20011aArr2[1], c20011aArr[0]), m69945e(c20011a2, c20011aArr2[1], c20011aArr[1])), z)) == 2 || (m69946f2 = m69946f(m69946f, compareOrder(m69945e(c20011a, c20011aArr2[2], c20011aArr[0]), m69945e(c20011a2, c20011aArr2[2], c20011aArr[1])), z)) == 2) {
            return (short) 2;
        }
        return m69946f(m69946f2, compareOrder(m69945e(c20011a, c20011aArr2[3], c20011aArr[0]), m69945e(c20011a2, c20011aArr2[3], c20011aArr[1])), z);
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public String dateToString(AbstractDateTimeDV.C20011a c20011a) {
        StringBuffer stringBuffer = new StringBuffer(30);
        if (c20011a.f112297a < 0 || c20011a.f112298b < 0 || c20011a.f112299c < 0 || c20011a.f112300d < 0 || c20011a.f112301e < 0 || c20011a.f112303g < 0.0d) {
            stringBuffer.append('-');
        }
        stringBuffer.append('P');
        int i = c20011a.f112297a;
        stringBuffer.append((i < 0 ? -1 : 1) * i);
        stringBuffer.append('Y');
        int i2 = c20011a.f112298b;
        stringBuffer.append((i2 < 0 ? -1 : 1) * i2);
        stringBuffer.append('M');
        int i3 = c20011a.f112299c;
        stringBuffer.append((i3 < 0 ? -1 : 1) * i3);
        stringBuffer.append('D');
        stringBuffer.append('T');
        int i4 = c20011a.f112300d;
        stringBuffer.append((i4 < 0 ? -1 : 1) * i4);
        stringBuffer.append('H');
        int i5 = c20011a.f112301e;
        stringBuffer.append((i5 >= 0 ? 1 : -1) * i5);
        stringBuffer.append('M');
        double d = c20011a.f112303g;
        append2(stringBuffer, (d < 0.0d ? -1.0d : 1.0d) * d);
        stringBuffer.append('S');
        return stringBuffer.toString();
    }

    /* renamed from: e */
    public final AbstractDateTimeDV.C20011a m69945e(AbstractDateTimeDV.C20011a c20011a, AbstractDateTimeDV.C20011a c20011a2, AbstractDateTimeDV.C20011a c20011a3) {
        int i;
        resetDateObj(c20011a3);
        int i2 = c20011a2.f112298b + c20011a.f112298b;
        c20011a3.f112298b = modulo(i2, 1, 13);
        c20011a3.f112297a = c20011a2.f112297a + c20011a.f112297a + fQuotient(i2, 1, 13);
        double d = c20011a2.f112303g + c20011a.f112303g;
        int floor = (int) Math.floor(d / 60.0d);
        c20011a3.f112303g = d - (floor * 60);
        int i3 = c20011a2.f112301e + c20011a.f112301e + floor;
        int fQuotient = fQuotient(i3, 60);
        c20011a3.f112301e = mod(i3, 60, fQuotient);
        int i4 = c20011a2.f112300d + c20011a.f112300d + fQuotient;
        int fQuotient2 = fQuotient(i4, 24);
        c20011a3.f112300d = mod(i4, 24, fQuotient2);
        c20011a3.f112299c = c20011a2.f112299c + c20011a.f112299c + fQuotient2;
        while (true) {
            int maxDayInMonthFor = maxDayInMonthFor(c20011a3.f112297a, c20011a3.f112298b);
            int i5 = c20011a3.f112299c;
            if (i5 < 1) {
                c20011a3.f112299c = i5 + maxDayInMonthFor(c20011a3.f112297a, c20011a3.f112298b - 1);
                i = -1;
            } else {
                if (i5 <= maxDayInMonthFor) {
                    c20011a3.f112302f = 90;
                    return c20011a3;
                }
                c20011a3.f112299c = i5 - maxDayInMonthFor;
                i = 1;
            }
            int i6 = c20011a3.f112298b + i;
            c20011a3.f112298b = modulo(i6, 1, 13);
            c20011a3.f112297a += fQuotient(i6, 1, 13);
        }
    }

    /* renamed from: f */
    public final short m69946f(short s, short s2, boolean z) {
        if (s2 == 2) {
            return (short) 2;
        }
        if (s != s2 && z) {
            return (short) 2;
        }
        if (s == s2 || z) {
            return s;
        }
        if (s == 0 || s2 == 0) {
            return s != 0 ? s : s2;
        }
        return (short) 2;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str, 0);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "duration"});
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public Duration getDuration(AbstractDateTimeDV.C20011a c20011a) {
        int i = c20011a.f112297a;
        int i2 = (i < 0 || c20011a.f112298b < 0 || c20011a.f112299c < 0 || c20011a.f112300d < 0 || c20011a.f112301e < 0 || c20011a.f112303g < 0.0d) ? -1 : 1;
        return AbstractDateTimeDV.datatypeFactory.newDuration(i2 == 1, i != Integer.MIN_VALUE ? BigInteger.valueOf(i * i2) : null, c20011a.f112298b != Integer.MIN_VALUE ? BigInteger.valueOf(r5 * i2) : null, c20011a.f112299c != Integer.MIN_VALUE ? BigInteger.valueOf(r6 * i2) : null, c20011a.f112300d != Integer.MIN_VALUE ? BigInteger.valueOf(r7 * i2) : null, c20011a.f112301e != Integer.MIN_VALUE ? BigInteger.valueOf(r8 * i2) : null, c20011a.f112303g != -2.147483648E9d ? new BigDecimal(String.valueOf(i2 * c20011a.f112303g)) : null);
    }

    public AbstractDateTimeDV.C20011a parse(String str, int i) throws SchemaDateTimeException {
        int i2;
        int length = str.length();
        AbstractDateTimeDV.C20011a c20011a = new AbstractDateTimeDV.C20011a(str, this);
        boolean z = false;
        char charAt = str.charAt(0);
        if (charAt != 'P' && charAt != '-') {
            throw new SchemaDateTimeException();
        }
        c20011a.f112302f = charAt == '-' ? 45 : 0;
        boolean z2 = true;
        if (charAt != '-') {
            i2 = 1;
        } else {
            if (str.charAt(1) != 'P') {
                throw new SchemaDateTimeException();
            }
            i2 = 2;
        }
        int i3 = c20011a.f112302f == 45 ? -1 : 1;
        int indexOf = indexOf(str, i2, length, 'T');
        if (indexOf == -1) {
            indexOf = length;
        } else if (i == 1) {
            throw new SchemaDateTimeException();
        }
        int indexOf2 = indexOf(str, i2, indexOf, 'Y');
        if (indexOf2 != -1) {
            if (i == 2) {
                throw new SchemaDateTimeException();
            }
            c20011a.f112297a = parseInt(str, i2, indexOf2) * i3;
            i2 = indexOf2 + 1;
            z = true;
        }
        int indexOf3 = indexOf(str, i2, indexOf, 'M');
        if (indexOf3 != -1) {
            if (i == 2) {
                throw new SchemaDateTimeException();
            }
            c20011a.f112298b = parseInt(str, i2, indexOf3) * i3;
            i2 = indexOf3 + 1;
            z = true;
        }
        int indexOf4 = indexOf(str, i2, indexOf, 'D');
        if (indexOf4 != -1) {
            if (i == 1) {
                throw new SchemaDateTimeException();
            }
            c20011a.f112299c = parseInt(str, i2, indexOf4) * i3;
            i2 = indexOf4 + 1;
            z = true;
        }
        if (length == indexOf && i2 != length) {
            throw new SchemaDateTimeException();
        }
        if (length != indexOf) {
            int i4 = i2 + 1;
            int indexOf5 = indexOf(str, i4, length, 'H');
            if (indexOf5 != -1) {
                c20011a.f112300d = parseInt(str, i4, indexOf5) * i3;
                i4 = indexOf5 + 1;
                z = true;
            }
            int indexOf6 = indexOf(str, i4, length, 'M');
            if (indexOf6 != -1) {
                c20011a.f112301e = parseInt(str, i4, indexOf6) * i3;
                i4 = indexOf6 + 1;
                z = true;
            }
            int indexOf7 = indexOf(str, i4, length, 'S');
            if (indexOf7 != -1) {
                c20011a.f112303g = i3 * parseSecond(str, i4, indexOf7);
                i4 = indexOf7 + 1;
            } else {
                z2 = z;
            }
            if (i4 != length || str.charAt(i4 - 1) == 'T') {
                throw new SchemaDateTimeException();
            }
            z = z2;
        }
        if (z) {
            return c20011a;
        }
        throw new SchemaDateTimeException();
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public double parseSecond(String str, int i, int i2) throws NumberFormatException {
        int i3 = -1;
        for (int i4 = i; i4 < i2; i4++) {
            char charAt = str.charAt(i4);
            if (charAt == '.') {
                i3 = i4;
            } else if (charAt > '9' || charAt < '0') {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(CloudStorageConstants.SINGLE_QUOTES);
                stringBuffer.append(str);
                stringBuffer.append("' has wrong format");
                throw new NumberFormatException(stringBuffer.toString());
            }
        }
        if (i3 + 1 == i2) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(CloudStorageConstants.SINGLE_QUOTES);
            stringBuffer2.append(str);
            stringBuffer2.append("' has wrong format");
            throw new NumberFormatException(stringBuffer2.toString());
        }
        double parseDouble = Double.parseDouble(str.substring(i, i2));
        if (parseDouble != Double.POSITIVE_INFINITY) {
            return parseDouble;
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(CloudStorageConstants.SINGLE_QUOTES);
        stringBuffer3.append(str);
        stringBuffer3.append("' has wrong format");
        throw new NumberFormatException(stringBuffer3.toString());
    }
}
