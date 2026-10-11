package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Map;

/* loaded from: classes4.dex */
public final class ITFReader extends OneDReader {

    /* renamed from: b */
    public static final float f38586b = 0.38f;

    /* renamed from: c */
    public static final float f38587c = 0.78f;

    /* renamed from: d */
    public static final int f38588d = 3;

    /* renamed from: e */
    public static final int f38589e = 1;

    /* renamed from: f */
    public static final int[] f38590f = {6, 8, 10, 12, 14};

    /* renamed from: g */
    public static final int[] f38591g = {1, 1, 1, 1};

    /* renamed from: h */
    public static final int[] f38592h = {1, 1, 3};

    /* renamed from: i */
    public static final int[][] f38593i = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    /* renamed from: a */
    public int f38594a = -1;

    /* renamed from: b */
    public static int m30631b(int[] iArr) throws NotFoundException {
        int length = f38593i.length;
        float f = 0.38f;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            float patternMatchVariance = OneDReader.patternMatchVariance(iArr, f38593i[i2], 0.78f);
            if (patternMatchVariance < f) {
                i = i2;
                f = patternMatchVariance;
            }
        }
        if (i >= 0) {
            return i;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* renamed from: d */
    public static void m30632d(BitArray bitArray, int i, int i2, StringBuilder sb) throws NotFoundException {
        int[] iArr = new int[10];
        int[] iArr2 = new int[5];
        int[] iArr3 = new int[5];
        while (i < i2) {
            OneDReader.recordPattern(bitArray, i, iArr);
            for (int i3 = 0; i3 < 5; i3++) {
                int i4 = i3 * 2;
                iArr2[i3] = iArr[i4];
                iArr3[i3] = iArr[i4 + 1];
            }
            sb.append((char) (m30631b(iArr2) + 48));
            sb.append((char) (m30631b(iArr3) + 48));
            for (int i5 = 0; i5 < 10; i5++) {
                i += iArr[i5];
            }
        }
    }

    /* renamed from: f */
    public static int[] m30633f(BitArray bitArray, int i, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int size = bitArray.getSize();
        int i2 = i;
        boolean z = false;
        int i3 = 0;
        while (i < size) {
            if (bitArray.get(i) ^ z) {
                iArr2[i3] = iArr2[i3] + 1;
            } else {
                int i4 = length - 1;
                if (i3 != i4) {
                    i3++;
                } else {
                    if (OneDReader.patternMatchVariance(iArr2, iArr, 0.78f) < 0.38f) {
                        return new int[]{i2, i};
                    }
                    i2 += iArr2[0] + iArr2[1];
                    int i5 = length - 2;
                    System.arraycopy(iArr2, 2, iArr2, 0, i5);
                    iArr2[i5] = 0;
                    iArr2[i4] = 0;
                    i3--;
                }
                iArr2[i3] = 1;
                z = !z;
            }
            i++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* renamed from: g */
    public static int m30634g(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        if (nextSet != size) {
            return nextSet;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* renamed from: c */
    public final int[] m30635c(BitArray bitArray) throws NotFoundException {
        bitArray.reverse();
        try {
            int[] m30633f = m30633f(bitArray, m30634g(bitArray), f38592h);
            m30637h(bitArray, m30633f[0]);
            int i = m30633f[0];
            m30633f[0] = bitArray.getSize() - m30633f[1];
            m30633f[1] = bitArray.getSize() - i;
            return m30633f;
        } finally {
            bitArray.reverse();
        }
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws FormatException, NotFoundException {
        boolean z;
        int[] m30636e = m30636e(bitArray);
        int[] m30635c = m30635c(bitArray);
        StringBuilder sb = new StringBuilder(20);
        m30632d(bitArray, m30636e[1], m30635c[0], sb);
        String sb2 = sb.toString();
        int[] iArr = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_LENGTHS) : null;
        if (iArr == null) {
            iArr = f38590f;
        }
        int length = sb2.length();
        int length2 = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= length2) {
                z = false;
                break;
            }
            int i4 = iArr[i2];
            if (length == i4) {
                z = true;
                break;
            }
            if (i4 > i3) {
                i3 = i4;
            }
            i2++;
        }
        if (!z && length > i3) {
            z = true;
        }
        if (!z) {
            throw FormatException.getFormatInstance();
        }
        float f = i;
        return new Result(sb2, null, new ResultPoint[]{new ResultPoint(m30636e[1], f), new ResultPoint(m30635c[0], f)}, BarcodeFormat.ITF);
    }

    /* renamed from: e */
    public final int[] m30636e(BitArray bitArray) throws NotFoundException {
        int[] m30633f = m30633f(bitArray, m30634g(bitArray), f38591g);
        int i = m30633f[1];
        int i2 = m30633f[0];
        this.f38594a = (i - i2) / 4;
        m30637h(bitArray, i2);
        return m30633f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001b, code lost:
    
        return;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m30637h(com.google.zxing.common.BitArray r2, int r3) throws com.google.zxing.NotFoundException {
        /*
            r1 = this;
            int r1 = r1.f38594a
            int r1 = r1 * 10
            if (r1 >= r3) goto L7
            goto L8
        L7:
            r1 = r3
        L8:
            int r3 = r3 + (-1)
        La:
            if (r1 <= 0) goto L19
            if (r3 < 0) goto L19
            boolean r0 = r2.get(r3)
            if (r0 != 0) goto L19
            int r1 = r1 + (-1)
            int r3 = r3 + (-1)
            goto La
        L19:
            if (r1 != 0) goto L1c
            return
        L1c:
            com.google.zxing.NotFoundException r1 = com.google.zxing.NotFoundException.getNotFoundInstance()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.ITFReader.m30637h(com.google.zxing.common.BitArray, int):void");
    }
}
