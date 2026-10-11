package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes4.dex */
public final class CodaBarReader extends OneDReader {

    /* renamed from: d */
    public static final float f38524d = 2.0f;

    /* renamed from: e */
    public static final float f38525e = 1.5f;

    /* renamed from: i */
    public static final int f38529i = 3;

    /* renamed from: a */
    public final StringBuilder f38531a = new StringBuilder(20);

    /* renamed from: b */
    public int[] f38532b = new int[80];

    /* renamed from: c */
    public int f38533c = 0;

    /* renamed from: f */
    public static final String f38526f = "0123456789-$:/.+ABCD";

    /* renamed from: g */
    public static final char[] f38527g = f38526f.toCharArray();

    /* renamed from: h */
    public static final int[] f38528h = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};

    /* renamed from: j */
    public static final char[] f38530j = {'A', 'B', 'C', 'D'};

    /* renamed from: b */
    public static boolean m30606b(char[] cArr, char c) {
        if (cArr != null) {
            for (char c2 : cArr) {
                if (c2 == c) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: c */
    public final void m30607c(int i) {
        int[] iArr = this.f38532b;
        int i2 = this.f38533c;
        iArr[i2] = i;
        int i3 = i2 + 1;
        this.f38533c = i3;
        if (i3 >= iArr.length) {
            int[] iArr2 = new int[i3 << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            this.f38532b = iArr2;
        }
    }

    /* renamed from: d */
    public final int m30608d() throws NotFoundException {
        for (int i = 1; i < this.f38533c; i += 2) {
            int m30610f = m30610f(i);
            if (m30610f != -1 && m30606b(f38530j, f38527g[m30610f])) {
                int i2 = 0;
                for (int i3 = i; i3 < i + 7; i3++) {
                    i2 += this.f38532b[i3];
                }
                if (i == 1 || this.f38532b[i - 1] >= i2 / 2) {
                    return i;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        Arrays.fill(this.f38532b, 0);
        m30609e(bitArray);
        int m30608d = m30608d();
        this.f38531a.setLength(0);
        int i2 = m30608d;
        do {
            int m30610f = m30610f(i2);
            if (m30610f == -1) {
                throw NotFoundException.getNotFoundInstance();
            }
            this.f38531a.append((char) m30610f);
            i2 += 8;
            if (this.f38531a.length() > 1 && m30606b(f38530j, f38527g[m30610f])) {
                break;
            }
        } while (i2 < this.f38533c);
        int i3 = i2 - 1;
        int i4 = this.f38532b[i3];
        int i5 = 0;
        for (int i6 = -8; i6 < -1; i6++) {
            i5 += this.f38532b[i2 + i6];
        }
        if (i2 < this.f38533c && i4 < i5 / 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        m30611g(m30608d);
        for (int i7 = 0; i7 < this.f38531a.length(); i7++) {
            StringBuilder sb = this.f38531a;
            sb.setCharAt(i7, f38527g[sb.charAt(i7)]);
        }
        char charAt = this.f38531a.charAt(0);
        char[] cArr = f38530j;
        if (!m30606b(cArr, charAt)) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb2 = this.f38531a;
        if (!m30606b(cArr, sb2.charAt(sb2.length() - 1))) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (this.f38531a.length() <= 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (map == null || !map.containsKey(DecodeHintType.RETURN_CODABAR_START_END)) {
            StringBuilder sb3 = this.f38531a;
            sb3.deleteCharAt(sb3.length() - 1);
            this.f38531a.deleteCharAt(0);
        }
        int i8 = 0;
        for (int i9 = 0; i9 < m30608d; i9++) {
            i8 += this.f38532b[i9];
        }
        float f = i8;
        while (m30608d < i3) {
            i8 += this.f38532b[m30608d];
            m30608d++;
        }
        float f2 = i;
        return new Result(this.f38531a.toString(), null, new ResultPoint[]{new ResultPoint(f, f2), new ResultPoint(i8, f2)}, BarcodeFormat.CODABAR);
    }

    /* renamed from: e */
    public final void m30609e(BitArray bitArray) throws NotFoundException {
        int i = 0;
        this.f38533c = 0;
        int nextUnset = bitArray.getNextUnset(0);
        int size = bitArray.getSize();
        if (nextUnset >= size) {
            throw NotFoundException.getNotFoundInstance();
        }
        boolean z = true;
        while (nextUnset < size) {
            if (bitArray.get(nextUnset) ^ z) {
                i++;
            } else {
                m30607c(i);
                z = !z;
                i = 1;
            }
            nextUnset++;
        }
        m30607c(i);
    }

    /* renamed from: f */
    public final int m30610f(int i) {
        int i2 = i + 7;
        if (i2 >= this.f38533c) {
            return -1;
        }
        int[] iArr = this.f38532b;
        int i3 = Integer.MAX_VALUE;
        int i4 = 0;
        int i5 = Integer.MAX_VALUE;
        int i6 = 0;
        for (int i7 = i; i7 < i2; i7 += 2) {
            int i8 = iArr[i7];
            if (i8 < i5) {
                i5 = i8;
            }
            if (i8 > i6) {
                i6 = i8;
            }
        }
        int i9 = (i5 + i6) / 2;
        int i10 = 0;
        for (int i11 = i + 1; i11 < i2; i11 += 2) {
            int i12 = iArr[i11];
            if (i12 < i3) {
                i3 = i12;
            }
            if (i12 > i10) {
                i10 = i12;
            }
        }
        int i13 = (i3 + i10) / 2;
        int i14 = 128;
        int i15 = 0;
        for (int i16 = 0; i16 < 7; i16++) {
            i14 >>= 1;
            if (iArr[i + i16] > ((i16 & 1) == 0 ? i9 : i13)) {
                i15 |= i14;
            }
        }
        while (true) {
            int[] iArr2 = f38528h;
            if (i4 >= iArr2.length) {
                return -1;
            }
            if (iArr2[i4] == i15) {
                return i4;
            }
            i4++;
        }
    }

    /* renamed from: g */
    public final void m30611g(int i) throws NotFoundException {
        int i2 = 0;
        int[] iArr = {0, 0, 0, 0};
        int[] iArr2 = {0, 0, 0, 0};
        int length = this.f38531a.length() - 1;
        int i3 = i;
        int i4 = 0;
        while (true) {
            int i5 = f38528h[this.f38531a.charAt(i4)];
            for (int i6 = 6; i6 >= 0; i6--) {
                int i7 = (i6 & 1) + ((i5 & 1) << 1);
                iArr[i7] = iArr[i7] + this.f38532b[i3 + i6];
                iArr2[i7] = iArr2[i7] + 1;
                i5 >>= 1;
            }
            if (i4 >= length) {
                break;
            }
            i3 += 8;
            i4++;
        }
        float[] fArr = new float[4];
        float[] fArr2 = new float[4];
        for (int i8 = 0; i8 < 2; i8++) {
            fArr2[i8] = 0.0f;
            int i9 = i8 + 2;
            int i10 = iArr[i9];
            int i11 = iArr2[i9];
            float f = ((iArr[i8] / iArr2[i8]) + (i10 / i11)) / 2.0f;
            fArr2[i9] = f;
            fArr[i8] = f;
            fArr[i9] = ((i10 * 2.0f) + 1.5f) / i11;
        }
        loop3: while (true) {
            int i12 = f38528h[this.f38531a.charAt(i2)];
            for (int i13 = 6; i13 >= 0; i13--) {
                int i14 = (i13 & 1) + ((i12 & 1) << 1);
                float f2 = this.f38532b[i + i13];
                if (f2 < fArr2[i14] || f2 > fArr[i14]) {
                    break loop3;
                }
                i12 >>= 1;
            }
            if (i2 >= length) {
                return;
            }
            i += 8;
            i2++;
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
