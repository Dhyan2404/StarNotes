package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.sunia.HTREnginev2.rve;
import java.util.Arrays;
import java.util.Map;
import net.p110sf.saxon.om.StandardNames;

/* loaded from: classes4.dex */
public final class Code39Reader extends OneDReader {

    /* renamed from: e */
    public static final String f38567e = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%";

    /* renamed from: f */
    public static final String f38568f = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%";

    /* renamed from: g */
    public static final int[] f38569g;

    /* renamed from: h */
    public static final int f38570h;

    /* renamed from: a */
    public final boolean f38571a;

    /* renamed from: b */
    public final boolean f38572b;

    /* renamed from: c */
    public final StringBuilder f38573c;

    /* renamed from: d */
    public final int[] f38574d;

    static {
        int[] iArr = {52, 289, 97, DataBinderMapperImpl.f53082N5, 49, 304, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, DataBinderMapperImpl.f53213h4, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, StandardNames.XML_BASE, 193, 448, 145, 400, 208, 133, StandardNames.XML_ID, 196, 148, 168, 162, 138, 42};
        f38569g = iArr;
        f38570h = iArr[39];
    }

    public Code39Reader() {
        this(false);
    }

    /* renamed from: b */
    public static String m30616b(CharSequence charSequence) throws FormatException {
        int i;
        char c;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (charAt == '+' || charAt == '$' || charAt == '%' || charAt == '/') {
                i2++;
                char charAt2 = charSequence.charAt(i2);
                if (charAt != '$') {
                    if (charAt != '%') {
                        if (charAt != '+') {
                            if (charAt != '/') {
                                c = 0;
                            } else if (charAt2 >= 'A' && charAt2 <= 'O') {
                                i = charAt2 - ' ';
                            } else {
                                if (charAt2 != 'Z') {
                                    throw FormatException.getFormatInstance();
                                }
                                c = ':';
                            }
                            sb.append(c);
                        } else {
                            if (charAt2 < 'A' || charAt2 > 'Z') {
                                throw FormatException.getFormatInstance();
                            }
                            i = charAt2 + ' ';
                        }
                    } else if (charAt2 >= 'A' && charAt2 <= 'E') {
                        i = charAt2 - '&';
                    } else {
                        if (charAt2 < 'F' || charAt2 > 'W') {
                            throw FormatException.getFormatInstance();
                        }
                        i = charAt2 + rve.f83537f;
                    }
                } else {
                    if (charAt2 < 'A' || charAt2 > 'Z') {
                        throw FormatException.getFormatInstance();
                    }
                    i = charAt2 - '@';
                }
                c = (char) i;
                sb.append(c);
            } else {
                sb.append(charAt);
            }
            i2++;
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static int[] m30617c(BitArray bitArray, int[] iArr) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        int length = iArr.length;
        boolean z = false;
        int i = 0;
        int i2 = nextSet;
        while (nextSet < size) {
            if (bitArray.get(nextSet) ^ z) {
                iArr[i] = iArr[i] + 1;
            } else {
                int i3 = length - 1;
                if (i != i3) {
                    i++;
                } else {
                    if (m30619e(iArr) == f38570h && bitArray.isRange(Math.max(0, i2 - ((nextSet - i2) / 2)), i2, false)) {
                        return new int[]{i2, nextSet};
                    }
                    i2 += iArr[0] + iArr[1];
                    int i4 = length - 2;
                    System.arraycopy(iArr, 2, iArr, 0, i4);
                    iArr[i4] = 0;
                    iArr[i3] = 0;
                    i--;
                }
                iArr[i] = 1;
                z = !z;
            }
            nextSet++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* renamed from: d */
    public static char m30618d(int i) throws NotFoundException {
        int i2 = 0;
        while (true) {
            int[] iArr = f38569g;
            if (i2 >= iArr.length) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (iArr[i2] == i) {
                return f38567e.charAt(i2);
            }
            i2++;
        }
    }

    /* renamed from: e */
    public static int m30619e(int[] iArr) {
        int length = iArr.length;
        int i = 0;
        while (true) {
            int i2 = Integer.MAX_VALUE;
            for (int i3 : iArr) {
                if (i3 < i2 && i3 > i) {
                    i2 = i3;
                }
            }
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < length; i7++) {
                int i8 = iArr[i7];
                if (i8 > i2) {
                    i5 |= 1 << ((length - 1) - i7);
                    i4++;
                    i6 += i8;
                }
            }
            if (i4 == 3) {
                for (int i9 = 0; i9 < length && i4 > 0; i9++) {
                    int i10 = iArr[i9];
                    if (i10 > i2) {
                        i4--;
                        if ((i10 << 1) >= i6) {
                            return -1;
                        }
                    }
                }
                return i5;
            }
            if (i4 <= 3) {
                return -1;
            }
            i = i2;
        }
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int[] iArr = this.f38574d;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.f38573c;
        sb.setLength(0);
        int nextSet = bitArray.getNextSet(m30617c(bitArray, iArr)[1]);
        int size = bitArray.getSize();
        while (true) {
            OneDReader.recordPattern(bitArray, nextSet, iArr);
            int m30619e = m30619e(iArr);
            if (m30619e < 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            char m30618d = m30618d(m30619e);
            sb.append(m30618d);
            int i2 = nextSet;
            for (int i3 : iArr) {
                i2 += i3;
            }
            int nextSet2 = bitArray.getNextSet(i2);
            if (m30618d == '*') {
                sb.setLength(sb.length() - 1);
                int i4 = 0;
                for (int i5 : iArr) {
                    i4 += i5;
                }
                int i6 = (nextSet2 - nextSet) - i4;
                if (nextSet2 != size && (i6 << 1) < i4) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (this.f38571a) {
                    int length = sb.length() - 1;
                    int i7 = 0;
                    for (int i8 = 0; i8 < length; i8++) {
                        i7 += f38568f.indexOf(this.f38573c.charAt(i8));
                    }
                    if (sb.charAt(length) != f38568f.charAt(i7 % 43)) {
                        throw ChecksumException.getChecksumInstance();
                    }
                    sb.setLength(length);
                }
                if (sb.length() == 0) {
                    throw NotFoundException.getNotFoundInstance();
                }
                float f = i;
                return new Result(this.f38572b ? m30616b(sb) : sb.toString(), null, new ResultPoint[]{new ResultPoint((r2[1] + r2[0]) / 2.0f, f), new ResultPoint(nextSet + (i4 / 2.0f), f)}, BarcodeFormat.CODE_39);
            }
            nextSet = nextSet2;
        }
    }

    public Code39Reader(boolean z) {
        this(z, false);
    }

    public Code39Reader(boolean z, boolean z2) {
        this.f38571a = z;
        this.f38572b = z2;
        this.f38573c = new StringBuilder(20);
        this.f38574d = new int[9];
    }
}
