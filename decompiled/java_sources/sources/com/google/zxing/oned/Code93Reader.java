package com.google.zxing.oned;

import com.google.android.exoplayer2.extractor.p007ts.C4756a;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.common.base.Ascii;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
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

/* loaded from: classes4.dex */
public final class Code93Reader extends OneDReader {

    /* renamed from: c */
    public static final String f38575c = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*";

    /* renamed from: d */
    public static final char[] f38576d = f38575c.toCharArray();

    /* renamed from: e */
    public static final int[] f38577e;

    /* renamed from: f */
    public static final int f38578f;

    /* renamed from: a */
    public final StringBuilder f38579a = new StringBuilder(20);

    /* renamed from: b */
    public final int[] f38580b = new int[6];

    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, 290, 336, 274, 266, 424, 420, 418, 404, 402, 394, 360, 356, DataBinderMapperImpl.f53096P5, 308, 282, DataBinderMapperImpl.f53026F5, 332, 326, 300, 278, 436, C4756a.f24690c, 428, 422, 406, 410, 364, 358, 310, 314, 302, 468, 466, 458, 366, 374, 430, 294, 474, FloatingActionButton.f31318y, 306, DataBinderMapperImpl.f53068L5};
        f38577e = iArr;
        f38578f = iArr[47];
    }

    /* renamed from: b */
    public static void m30621b(CharSequence charSequence) throws ChecksumException {
        int length = charSequence.length();
        m30622c(charSequence, length - 2, 20);
        m30622c(charSequence, length - 1, 15);
    }

    /* renamed from: c */
    public static void m30622c(CharSequence charSequence, int i, int i2) throws ChecksumException {
        int i3 = 0;
        int i4 = 1;
        for (int i5 = i - 1; i5 >= 0; i5--) {
            i3 += f38575c.indexOf(charSequence.charAt(i5)) * i4;
            i4++;
            if (i4 > i2) {
                i4 = 1;
            }
        }
        if (charSequence.charAt(i) != f38576d[i3 % 47]) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0029. Please report as an issue. */
    /* renamed from: d */
    public static String m30623d(CharSequence charSequence) throws FormatException {
        int i;
        char c;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (charAt < 'a' || charAt > 'd') {
                sb.append(charAt);
            } else {
                if (i2 >= length - 1) {
                    throw FormatException.getFormatInstance();
                }
                i2++;
                char charAt2 = charSequence.charAt(i2);
                switch (charAt) {
                    case 'a':
                        if (charAt2 >= 'A' && charAt2 <= 'Z') {
                            i = charAt2 - '@';
                            c = (char) i;
                            sb.append(c);
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 'b':
                        if (charAt2 >= 'A' && charAt2 <= 'E') {
                            i = charAt2 - '&';
                        } else if (charAt2 >= 'F' && charAt2 <= 'J') {
                            i = charAt2 + rve.f83537f;
                        } else if (charAt2 >= 'K' && charAt2 <= 'O') {
                            i = charAt2 + 16;
                        } else if (charAt2 >= 'P' && charAt2 <= 'S') {
                            i = charAt2 + PhoneNumberUtil.f36455s;
                        } else if (charAt2 >= 'T' && charAt2 <= 'Z') {
                            c = Ascii.MAX;
                            sb.append(c);
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        c = (char) i;
                        sb.append(c);
                        break;
                    case 'c':
                        if (charAt2 >= 'A' && charAt2 <= 'O') {
                            i = charAt2 - ' ';
                            c = (char) i;
                            sb.append(c);
                        } else {
                            if (charAt2 != 'Z') {
                                throw FormatException.getFormatInstance();
                            }
                            c = ':';
                            sb.append(c);
                            break;
                        }
                    case 'd':
                        if (charAt2 >= 'A' && charAt2 <= 'Z') {
                            i = charAt2 + ' ';
                            c = (char) i;
                            sb.append(c);
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    default:
                        c = 0;
                        sb.append(c);
                        break;
                }
            }
            i2++;
        }
        return sb.toString();
    }

    /* renamed from: f */
    public static char m30624f(int i) throws NotFoundException {
        int i2 = 0;
        while (true) {
            int[] iArr = f38577e;
            if (i2 >= iArr.length) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (iArr[i2] == i) {
                return f38576d[i2];
            }
            i2++;
        }
    }

    /* renamed from: g */
    public static int m30625g(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        int length = iArr.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            int round = Math.round((iArr[i4] * 9.0f) / i);
            if (round <= 0 || round > 4) {
                return -1;
            }
            if ((i4 & 1) == 0) {
                for (int i5 = 0; i5 < round; i5++) {
                    i3 = (i3 << 1) | 1;
                }
            } else {
                i3 <<= round;
            }
        }
        return i3;
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int nextSet = bitArray.getNextSet(m30626e(bitArray)[1]);
        int size = bitArray.getSize();
        int[] iArr = this.f38580b;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.f38579a;
        sb.setLength(0);
        while (true) {
            OneDReader.recordPattern(bitArray, nextSet, iArr);
            int m30625g = m30625g(iArr);
            if (m30625g < 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            char m30624f = m30624f(m30625g);
            sb.append(m30624f);
            int i2 = nextSet;
            for (int i3 : iArr) {
                i2 += i3;
            }
            int nextSet2 = bitArray.getNextSet(i2);
            if (m30624f == '*') {
                sb.deleteCharAt(sb.length() - 1);
                int i4 = 0;
                for (int i5 : iArr) {
                    i4 += i5;
                }
                if (nextSet2 == size || !bitArray.get(nextSet2)) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (sb.length() < 2) {
                    throw NotFoundException.getNotFoundInstance();
                }
                m30621b(sb);
                sb.setLength(sb.length() - 2);
                float f = i;
                return new Result(m30623d(sb), null, new ResultPoint[]{new ResultPoint((r13[1] + r13[0]) / 2.0f, f), new ResultPoint(nextSet + (i4 / 2.0f), f)}, BarcodeFormat.CODE_93);
            }
            nextSet = nextSet2;
        }
    }

    /* renamed from: e */
    public final int[] m30626e(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        Arrays.fill(this.f38580b, 0);
        int[] iArr = this.f38580b;
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
                    if (m30625g(iArr) == f38578f) {
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
}
