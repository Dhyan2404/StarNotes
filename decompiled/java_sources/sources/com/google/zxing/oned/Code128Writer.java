package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

/* loaded from: classes4.dex */
public final class Code128Writer extends OneDimensionalCodeWriter {

    /* renamed from: a */
    public static final int f38554a = 104;

    /* renamed from: b */
    public static final int f38555b = 105;

    /* renamed from: c */
    public static final int f38556c = 100;

    /* renamed from: d */
    public static final int f38557d = 99;

    /* renamed from: e */
    public static final int f38558e = 106;

    /* renamed from: f */
    public static final char f38559f = 241;

    /* renamed from: g */
    public static final char f38560g = 242;

    /* renamed from: h */
    public static final char f38561h = 243;

    /* renamed from: i */
    public static final char f38562i = 244;

    /* renamed from: j */
    public static final int f38563j = 102;

    /* renamed from: k */
    public static final int f38564k = 97;

    /* renamed from: l */
    public static final int f38565l = 96;

    /* renamed from: m */
    public static final int f38566m = 100;

    /* loaded from: classes4.dex */
    public enum CType {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    /* renamed from: b */
    public static int m30614b(CharSequence charSequence, int i, int i2) {
        CType cType;
        CType m30615c;
        CType m30615c2;
        CType m30615c3 = m30615c(charSequence, i);
        CType cType2 = CType.UNCODABLE;
        if (m30615c3 != cType2 && m30615c3 != (cType = CType.ONE_DIGIT)) {
            if (i2 == 99) {
                return i2;
            }
            if (i2 == 100) {
                CType cType3 = CType.FNC_1;
                if (m30615c3 == cType3 || (m30615c = m30615c(charSequence, i + 2)) == cType2 || m30615c == cType) {
                    return i2;
                }
                if (m30615c == cType3) {
                    return m30615c(charSequence, i + 3) == CType.TWO_DIGITS ? 99 : 100;
                }
                int i3 = i + 4;
                while (true) {
                    m30615c2 = m30615c(charSequence, i3);
                    if (m30615c2 != CType.TWO_DIGITS) {
                        break;
                    }
                    i3 += 2;
                }
                return m30615c2 == CType.ONE_DIGIT ? 100 : 99;
            }
            if (m30615c3 == CType.FNC_1) {
                m30615c3 = m30615c(charSequence, i + 1);
            }
            if (m30615c3 == CType.TWO_DIGITS) {
                return 99;
            }
        }
        return 100;
    }

    /* renamed from: c */
    public static CType m30615c(CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i >= length) {
            return CType.UNCODABLE;
        }
        char charAt = charSequence.charAt(i);
        if (charAt == 241) {
            return CType.FNC_1;
        }
        if (charAt < '0' || charAt > '9') {
            return CType.UNCODABLE;
        }
        int i2 = i + 1;
        if (i2 >= length) {
            return CType.ONE_DIGIT;
        }
        char charAt2 = charSequence.charAt(i2);
        return (charAt2 < '0' || charAt2 > '9') ? CType.ONE_DIGIT : CType.TWO_DIGITS;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_128) {
            return super.encode(str, barcodeFormat, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_128, but got " + barcodeFormat);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006d, code lost:
    
        r4 = r4 + 1;
     */
    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean[] encode(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.Code128Writer.encode(java.lang.String):boolean[]");
    }
}
