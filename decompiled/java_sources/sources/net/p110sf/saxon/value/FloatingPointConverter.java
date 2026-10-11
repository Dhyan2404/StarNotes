package net.p110sf.saxon.value;

import java.math.BigInteger;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import org.apache.poi.hwmf.usermodel.HwmfPicture;

/* loaded from: classes11.dex */
public class FloatingPointConverter {
    public static final long DOUBLE_SIGN_MASK = Long.MIN_VALUE;
    public static final int FLOAT_SIGN_MASK = Integer.MIN_VALUE;

    /* renamed from: a */
    public static final String f102869a = "-INF";

    /* renamed from: b */
    public static final String f102870b = "INF";

    /* renamed from: c */
    public static final String f102871c = "NaN";

    /* renamed from: e */
    public static final long f102873e = 9218868437227405312L;

    /* renamed from: f */
    public static final int f102874f = 52;

    /* renamed from: g */
    public static final int f102875g = 1023;

    /* renamed from: h */
    public static final long f102876h = 4503599627370495L;

    /* renamed from: i */
    public static final int f102877i = 2139095040;

    /* renamed from: j */
    public static final int f102878j = 23;

    /* renamed from: k */
    public static final int f102879k = 127;

    /* renamed from: l */
    public static final int f102880l = 8388607;
    public static FloatingPointConverter THE_INSTANCE = new FloatingPointConverter();

    /* renamed from: d */
    public static final char[] f102872d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};

    /* renamed from: m */
    public static final BigInteger f102881m = BigInteger.valueOf(10);

    /* renamed from: n */
    public static final BigInteger f102882n = BigInteger.valueOf(9);

    /* renamed from: a */
    public static void m64666a(UnicodeBuilder unicodeBuilder, int i, long j, int i2) {
        long j2;
        long j3;
        int i3;
        long j4;
        boolean z;
        boolean z2;
        char c;
        int i4 = i - i2;
        long max = j << Math.max(i4, 0);
        long max2 = 1 << Math.max(0, -i4);
        long max3 = 1 << Math.max(i4, 0);
        if (j == (1 << (i2 - 1))) {
            j2 = max3 << 1;
            max <<= 1;
            max2 <<= 1;
        } else {
            j2 = max3;
        }
        int i5 = 0;
        while (max < (9 + max2) / 10) {
            i5--;
            max *= 10;
            max3 *= 10;
            j2 *= 10;
        }
        while (true) {
            j3 = max2 * 2;
            if ((max * 2) + j2 < j3) {
                break;
            }
            max2 *= 10;
            i5++;
        }
        boolean z3 = true;
        int i6 = i5;
        while (i6 < 0) {
            if (z3) {
                unicodeBuilder.append("0.");
            }
            unicodeBuilder.append('0');
            i6++;
            z3 = false;
        }
        while (true) {
            i5--;
            long j5 = max * 10;
            i3 = (int) (j5 / max2);
            max = j5 - (i3 * max2);
            max3 *= 10;
            j2 *= 10;
            j4 = max * 2;
            z = j4 < max3;
            z2 = j4 > j3 - j2;
            if (z || z2) {
                break;
            }
            if (i5 == -1) {
                if (z3) {
                    unicodeBuilder.append('0');
                }
                unicodeBuilder.append('.');
            }
            unicodeBuilder.append(f102872d[i3]);
            z3 = false;
        }
        if (z2 && (!z || j4 > max2)) {
            i3++;
        }
        if (i5 == -1) {
            c = '0';
            if (z3) {
                unicodeBuilder.append('0');
            }
            unicodeBuilder.append('.');
        } else {
            c = '0';
        }
        unicodeBuilder.append(f102872d[i3]);
        for (int i7 = 0; i7 < i5; i7++) {
            unicodeBuilder.append(c);
        }
    }

    public static UnicodeString appendFloat(UnicodeBuilder unicodeBuilder, float f, boolean z) {
        if (f == Float.NEGATIVE_INFINITY) {
            unicodeBuilder.append(f102869a);
        } else if (f == Float.POSITIVE_INFINITY) {
            unicodeBuilder.append(f102870b);
        } else if (Float.isNaN(f)) {
            unicodeBuilder.append("NaN");
        } else if (f == 0.0d) {
            if ((Float.floatToIntBits(f) & Integer.MIN_VALUE) != 0) {
                unicodeBuilder.append('-');
            }
            unicodeBuilder.append('0');
        } else if (f == Float.MAX_VALUE) {
            unicodeBuilder.appendLatin("3.4028235E38");
        } else if (f == -3.4028235E38f) {
            unicodeBuilder.appendLatin("-3.4028235E38");
        } else if (f == Float.MIN_VALUE) {
            unicodeBuilder.appendLatin("1.4E-45");
        } else if (f == -1.4E-45f) {
            unicodeBuilder.appendLatin("-1.4E-45");
        } else {
            if (f < 0.0f) {
                unicodeBuilder.append('-');
                f = -f;
            }
            int floatToIntBits = Float.floatToIntBits(f);
            int i = (8388607 & floatToIntBits) | 8388608;
            int i2 = (floatToIntBits & f102877i) >> 23;
            int i3 = i2 - 127;
            if (i2 == 0) {
                unicodeBuilder.append(Float.toString(f));
                return unicodeBuilder.toUnicodeString();
            }
            if (z || f >= 1000000.0f || f < 1.0E-6f) {
                m64668c(unicodeBuilder, i3, i, 23);
            } else {
                m64666a(unicodeBuilder, i3, i, 23);
            }
        }
        return unicodeBuilder.toUnicodeString();
    }

    public static UnicodeBuilder appendInt(UnicodeBuilder unicodeBuilder, int i) {
        if (i < 0) {
            if (i == Integer.MIN_VALUE) {
                unicodeBuilder.append("-2147483648");
                return unicodeBuilder;
            }
            unicodeBuilder.append('-');
            i = -i;
        }
        if (i < 10) {
            unicodeBuilder.append(f102872d[i]);
            return unicodeBuilder;
        }
        if (i < 100) {
            char[] cArr = f102872d;
            unicodeBuilder.append(cArr[i / 10]);
            unicodeBuilder.append(cArr[i % 10]);
            return unicodeBuilder;
        }
        if (i < 1000) {
            char[] cArr2 = f102872d;
            unicodeBuilder.append(cArr2[i / 100]);
            int i2 = i % 100;
            unicodeBuilder.append(cArr2[i2 / 10]);
            unicodeBuilder.append(cArr2[i2 % 10]);
            return unicodeBuilder;
        }
        if (i < 10000) {
            char[] cArr3 = f102872d;
            unicodeBuilder.append(cArr3[i / 1000]);
            int i3 = i % 1000;
            unicodeBuilder.append(cArr3[i3 / 100]);
            int i4 = i3 % 100;
            unicodeBuilder.append(cArr3[i4 / 10]);
            unicodeBuilder.append(cArr3[i4 % 10]);
            return unicodeBuilder;
        }
        if (i < 100000) {
            char[] cArr4 = f102872d;
            unicodeBuilder.append(cArr4[i / 10000]);
            int i5 = i % 10000;
            unicodeBuilder.append(cArr4[i5 / 1000]);
            int i6 = i5 % 1000;
            unicodeBuilder.append(cArr4[i6 / 100]);
            int i7 = i6 % 100;
            unicodeBuilder.append(cArr4[i7 / 10]);
            unicodeBuilder.append(cArr4[i7 % 10]);
            return unicodeBuilder;
        }
        if (i < 1000000) {
            char[] cArr5 = f102872d;
            unicodeBuilder.append(cArr5[i / 100000]);
            int i8 = i % 100000;
            unicodeBuilder.append(cArr5[i8 / 10000]);
            int i9 = i8 % 10000;
            unicodeBuilder.append(cArr5[i9 / 1000]);
            int i10 = i9 % 1000;
            unicodeBuilder.append(cArr5[i10 / 100]);
            int i11 = i10 % 100;
            unicodeBuilder.append(cArr5[i11 / 10]);
            unicodeBuilder.append(cArr5[i11 % 10]);
            return unicodeBuilder;
        }
        if (i < 10000000) {
            char[] cArr6 = f102872d;
            unicodeBuilder.append(cArr6[i / 1000000]);
            int i12 = i % 1000000;
            unicodeBuilder.append(cArr6[i12 / 100000]);
            int i13 = i12 % 100000;
            unicodeBuilder.append(cArr6[i13 / 10000]);
            int i14 = i13 % 10000;
            unicodeBuilder.append(cArr6[i14 / 1000]);
            int i15 = i14 % 1000;
            unicodeBuilder.append(cArr6[i15 / 100]);
            int i16 = i15 % 100;
            unicodeBuilder.append(cArr6[i16 / 10]);
            unicodeBuilder.append(cArr6[i16 % 10]);
            return unicodeBuilder;
        }
        if (i < 100000000) {
            char[] cArr7 = f102872d;
            unicodeBuilder.append(cArr7[i / 10000000]);
            int i17 = i % 10000000;
            unicodeBuilder.append(cArr7[i17 / 1000000]);
            int i18 = i17 % 1000000;
            unicodeBuilder.append(cArr7[i18 / 100000]);
            int i19 = i18 % 100000;
            unicodeBuilder.append(cArr7[i19 / 10000]);
            int i20 = i19 % 10000;
            unicodeBuilder.append(cArr7[i20 / 1000]);
            int i21 = i20 % 1000;
            unicodeBuilder.append(cArr7[i21 / 100]);
            int i22 = i21 % 100;
            unicodeBuilder.append(cArr7[i22 / 10]);
            unicodeBuilder.append(cArr7[i22 % 10]);
            return unicodeBuilder;
        }
        if (i < 1000000000) {
            char[] cArr8 = f102872d;
            unicodeBuilder.append(cArr8[i / HwmfPicture.DEFAULT_MAX_RECORD_LENGTH]);
            int i23 = i % HwmfPicture.DEFAULT_MAX_RECORD_LENGTH;
            unicodeBuilder.append(cArr8[i23 / 10000000]);
            int i24 = i23 % 10000000;
            unicodeBuilder.append(cArr8[i24 / 1000000]);
            int i25 = i24 % 1000000;
            unicodeBuilder.append(cArr8[i25 / 100000]);
            int i26 = i25 % 100000;
            unicodeBuilder.append(cArr8[i26 / 10000]);
            int i27 = i26 % 10000;
            unicodeBuilder.append(cArr8[i27 / 1000]);
            int i28 = i27 % 1000;
            unicodeBuilder.append(cArr8[i28 / 100]);
            int i29 = i28 % 100;
            unicodeBuilder.append(cArr8[i29 / 10]);
            unicodeBuilder.append(cArr8[i29 % 10]);
            return unicodeBuilder;
        }
        char[] cArr9 = f102872d;
        unicodeBuilder.append(cArr9[i / 1000000000]);
        int i30 = i % 1000000000;
        unicodeBuilder.append(cArr9[i30 / HwmfPicture.DEFAULT_MAX_RECORD_LENGTH]);
        int i31 = i30 % HwmfPicture.DEFAULT_MAX_RECORD_LENGTH;
        unicodeBuilder.append(cArr9[i31 / 10000000]);
        int i32 = i31 % 10000000;
        unicodeBuilder.append(cArr9[i32 / 1000000]);
        int i33 = i32 % 1000000;
        unicodeBuilder.append(cArr9[i33 / 100000]);
        int i34 = i33 % 100000;
        unicodeBuilder.append(cArr9[i34 / 10000]);
        int i35 = i34 % 10000;
        unicodeBuilder.append(cArr9[i35 / 1000]);
        int i36 = i35 % 1000;
        unicodeBuilder.append(cArr9[i36 / 100]);
        int i37 = i36 % 100;
        unicodeBuilder.append(cArr9[i37 / 10]);
        unicodeBuilder.append(cArr9[i37 % 10]);
        return unicodeBuilder;
    }

    /* renamed from: b */
    public static void m64667b(UnicodeBuilder unicodeBuilder, int i, long j, int i2) {
        BigInteger bigInteger;
        int intValue;
        boolean z;
        boolean z2;
        int i3 = i - i2;
        BigInteger shiftLeft = BigInteger.valueOf(j).shiftLeft(Math.max(i3, 0));
        BigInteger bigInteger2 = BigInteger.ONE;
        BigInteger shiftLeft2 = bigInteger2.shiftLeft(Math.max(0, -i3));
        BigInteger shiftLeft3 = bigInteger2.shiftLeft(Math.max(i3, 0));
        if (j == (1 << (i2 - 1))) {
            bigInteger = shiftLeft3.shiftLeft(1);
            shiftLeft = shiftLeft.shiftLeft(1);
            shiftLeft2 = shiftLeft2.shiftLeft(1);
        } else {
            bigInteger = shiftLeft3;
        }
        int i4 = 0;
        while (true) {
            BigInteger add = shiftLeft2.add(f102882n);
            BigInteger bigInteger3 = f102881m;
            if (shiftLeft.compareTo(add.divide(bigInteger3)) >= 0) {
                break;
            }
            i4--;
            shiftLeft = shiftLeft.multiply(bigInteger3);
            shiftLeft3 = shiftLeft3.multiply(bigInteger3);
            bigInteger = bigInteger.multiply(bigInteger3);
        }
        while (shiftLeft.shiftLeft(1).add(bigInteger).compareTo(shiftLeft2.shiftLeft(1)) >= 0) {
            shiftLeft2 = shiftLeft2.multiply(f102881m);
            i4++;
        }
        int i5 = i4;
        boolean z3 = true;
        while (i5 < 0) {
            if (z3) {
                unicodeBuilder.append("0.");
            }
            unicodeBuilder.append('0');
            i5++;
            z3 = false;
        }
        while (true) {
            i4--;
            BigInteger bigInteger4 = f102881m;
            BigInteger multiply = shiftLeft.multiply(bigInteger4);
            intValue = multiply.divide(shiftLeft2).intValue();
            shiftLeft = multiply.mod(shiftLeft2);
            shiftLeft3 = shiftLeft3.multiply(bigInteger4);
            bigInteger = bigInteger.multiply(bigInteger4);
            BigInteger shiftLeft4 = shiftLeft.shiftLeft(1);
            z = shiftLeft4.compareTo(shiftLeft3) < 0;
            z2 = shiftLeft4.compareTo(shiftLeft2.shiftLeft(1).subtract(bigInteger)) > 0;
            if (z || z2) {
                break;
            }
            if (i4 == -1) {
                if (z3) {
                    unicodeBuilder.append('0');
                }
                unicodeBuilder.append('.');
            }
            unicodeBuilder.append(f102872d[intValue]);
            z3 = false;
        }
        if (z2 && (!z || shiftLeft.shiftLeft(1).compareTo(shiftLeft2) > 0)) {
            intValue++;
        }
        if (i4 == -1) {
            if (z3) {
                unicodeBuilder.append('0');
            }
            unicodeBuilder.append('.');
        }
        unicodeBuilder.append(f102872d[intValue]);
        for (int i6 = 0; i6 < i4; i6++) {
            unicodeBuilder.append('0');
        }
    }

    /* renamed from: c */
    public static void m64668c(UnicodeBuilder unicodeBuilder, int i, long j, int i2) {
        BigInteger bigInteger;
        int intValue;
        boolean z;
        boolean z2;
        int i3 = i - i2;
        BigInteger shiftLeft = BigInteger.valueOf(j).shiftLeft(Math.max(i3, 0));
        BigInteger bigInteger2 = BigInteger.ONE;
        BigInteger shiftLeft2 = bigInteger2.shiftLeft(Math.max(0, -i3));
        BigInteger shiftLeft3 = bigInteger2.shiftLeft(Math.max(i3, 0));
        if (j == (1 << (i2 - 1))) {
            bigInteger = shiftLeft3.shiftLeft(1);
            shiftLeft = shiftLeft.shiftLeft(1);
            shiftLeft2 = shiftLeft2.shiftLeft(1);
        } else {
            bigInteger = shiftLeft3;
        }
        int i4 = 0;
        while (true) {
            BigInteger add = shiftLeft2.add(f102882n);
            BigInteger bigInteger3 = f102881m;
            if (shiftLeft.compareTo(add.divide(bigInteger3)) >= 0) {
                break;
            }
            i4--;
            shiftLeft = shiftLeft.multiply(bigInteger3);
            shiftLeft3 = shiftLeft3.multiply(bigInteger3);
            bigInteger = bigInteger.multiply(bigInteger3);
        }
        while (shiftLeft.shiftLeft(1).add(bigInteger).compareTo(shiftLeft2.shiftLeft(1)) >= 0) {
            shiftLeft2 = shiftLeft2.multiply(f102881m);
            i4++;
        }
        int i5 = i4 - 1;
        boolean z3 = false;
        boolean z4 = true;
        while (true) {
            BigInteger bigInteger4 = f102881m;
            BigInteger multiply = shiftLeft.multiply(bigInteger4);
            intValue = multiply.divide(shiftLeft2).intValue();
            shiftLeft = multiply.mod(shiftLeft2);
            shiftLeft3 = shiftLeft3.multiply(bigInteger4);
            bigInteger = bigInteger.multiply(bigInteger4);
            BigInteger shiftLeft4 = shiftLeft.shiftLeft(1);
            z = shiftLeft4.compareTo(shiftLeft3) < 0;
            z2 = shiftLeft4.compareTo(shiftLeft2.shiftLeft(1).subtract(bigInteger)) > 0;
            if (z || z2) {
                break;
            }
            unicodeBuilder.append(f102872d[intValue]);
            if (z4) {
                unicodeBuilder.append('.');
                z3 = true;
            }
            z4 = false;
        }
        if (z2 && (!z || shiftLeft.shiftLeft(1).compareTo(shiftLeft2) > 0)) {
            intValue++;
        }
        unicodeBuilder.append(f102872d[intValue]);
        if (!z3) {
            unicodeBuilder.append(".0");
        }
        unicodeBuilder.append('E');
        appendInt(unicodeBuilder, i5);
    }

    public static UnicodeString convertDouble(double d, boolean z) {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(32);
        if (d == Double.NEGATIVE_INFINITY) {
            unicodeBuilder.appendLatin(f102869a);
        } else if (d == Double.POSITIVE_INFINITY) {
            unicodeBuilder.appendLatin(f102870b);
        } else if (Double.isNaN(d)) {
            unicodeBuilder.appendLatin("NaN");
        } else if (d == 0.0d) {
            if ((Double.doubleToLongBits(d) & Long.MIN_VALUE) != 0) {
                unicodeBuilder.append('-');
            }
            unicodeBuilder.append('0');
            if (z) {
                unicodeBuilder.append(".0E0");
            }
        } else if (d == Double.MAX_VALUE) {
            unicodeBuilder.append("1.7976931348623157E308");
        } else if (d == -1.7976931348623157E308d) {
            unicodeBuilder.append("-1.7976931348623157E308");
        } else if (d == Double.MIN_VALUE) {
            unicodeBuilder.append("4.9E-324");
        } else if (d == -4.9E-324d) {
            unicodeBuilder.append("-4.9E-324");
        } else {
            if (d < 0.0d) {
                unicodeBuilder.append('-');
                d = -d;
            }
            long doubleToLongBits = Double.doubleToLongBits(d);
            long j = (4503599627370495L & doubleToLongBits) | 4503599627370496L;
            long j2 = (doubleToLongBits & 9218868437227405312L) >> 52;
            int i = ((int) j2) - 1023;
            if (j2 == 0) {
                unicodeBuilder.append(Double.toString(d));
                return unicodeBuilder.toUnicodeString();
            }
            if (z || d >= 1000000.0d || d < 1.0E-6d) {
                m64668c(unicodeBuilder, i, j, 52);
            } else if (d <= 0.01d) {
                m64667b(unicodeBuilder, i, j, 52);
            } else {
                m64666a(unicodeBuilder, i, j, 52);
            }
        }
        return unicodeBuilder.toUnicodeString();
    }
}
