package com.sunia.HTREnginev2;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.detector.AlignmentPattern;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.sunia.HTREnginev2.u9 */
/* loaded from: classes4.dex */
public final class C14494u9 {

    /* renamed from: a */
    public final BitMatrix f86219a;

    /* renamed from: c */
    public final int f86221c;

    /* renamed from: d */
    public final int f86222d;

    /* renamed from: e */
    public final int f86223e;

    /* renamed from: f */
    public final int f86224f;

    /* renamed from: g */
    public final float f86225g;

    /* renamed from: i */
    public final ResultPointCallback f86227i;

    /* renamed from: b */
    public final List<AlignmentPattern> f86220b = new ArrayList(5);

    /* renamed from: h */
    public final int[] f86226h = new int[3];

    public C14494u9(BitMatrix bitMatrix, int i, int i2, int i3, int i4, float f, ResultPointCallback resultPointCallback) {
        this.f86219a = bitMatrix;
        this.f86221c = i;
        this.f86222d = i2;
        this.f86223e = i3;
        this.f86224f = i4;
        this.f86225g = f;
        this.f86227i = resultPointCallback;
    }

    /* renamed from: a */
    public static float m57558a(int[] iArr, int i) {
        return (i - iArr[2]) - (iArr[1] / 2.0f);
    }

    /* renamed from: b */
    public final float m57559b(int i, int i2, int i3, int i4) {
        BitMatrix bitMatrix = this.f86219a;
        int height = bitMatrix.getHeight();
        int[] iArr = this.f86226h;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        int i5 = i;
        while (i5 >= 0 && bitMatrix.get(i2, i5)) {
            int i6 = iArr[1];
            if (i6 > i3) {
                break;
            }
            iArr[1] = i6 + 1;
            i5--;
        }
        if (i5 >= 0 && iArr[1] <= i3) {
            while (i5 >= 0 && !bitMatrix.get(i2, i5)) {
                int i7 = iArr[0];
                if (i7 > i3) {
                    break;
                }
                iArr[0] = i7 + 1;
                i5--;
            }
            if (iArr[0] > i3) {
                return Float.NaN;
            }
            int i8 = i + 1;
            while (i8 < height && bitMatrix.get(i2, i8)) {
                int i9 = iArr[1];
                if (i9 > i3) {
                    break;
                }
                iArr[1] = i9 + 1;
                i8++;
            }
            if (i8 != height && iArr[1] <= i3) {
                while (i8 < height && !bitMatrix.get(i2, i8)) {
                    int i10 = iArr[2];
                    if (i10 > i3) {
                        break;
                    }
                    iArr[2] = i10 + 1;
                    i8++;
                }
                int i11 = iArr[2];
                if (i11 <= i3 && Math.abs(((iArr[0] + iArr[1]) + i11) - i4) * 5 < i4 * 2 && m57561d(iArr)) {
                    return m57558a(iArr, i8);
                }
            }
        }
        return Float.NaN;
    }

    /* renamed from: c */
    public AlignmentPattern m57560c() throws NotFoundException {
        AlignmentPattern m57562e;
        AlignmentPattern m57562e2;
        int i = this.f86221c;
        int i2 = this.f86224f;
        int i3 = this.f86223e + i;
        int i4 = this.f86222d + (i2 / 2);
        int[] iArr = new int[3];
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = ((i5 & 1) == 0 ? (i5 + 1) / 2 : -((i5 + 1) / 2)) + i4;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i7 = i;
            while (i7 < i3 && !this.f86219a.get(i7, i6)) {
                i7++;
            }
            int i8 = 0;
            while (i7 < i3) {
                if (!this.f86219a.get(i7, i6)) {
                    if (i8 == 1) {
                        i8++;
                    }
                    iArr[i8] = iArr[i8] + 1;
                } else if (i8 == 1) {
                    iArr[1] = iArr[1] + 1;
                } else if (i8 != 2) {
                    i8++;
                    iArr[i8] = iArr[i8] + 1;
                } else {
                    if (m57561d(iArr) && (m57562e2 = m57562e(iArr, i6, i7)) != null) {
                        return m57562e2;
                    }
                    iArr[0] = iArr[2];
                    iArr[1] = 1;
                    iArr[2] = 0;
                    i8 = 1;
                }
                i7++;
            }
            if (m57561d(iArr) && (m57562e = m57562e(iArr, i6, i3)) != null) {
                return m57562e;
            }
        }
        if (this.f86220b.isEmpty()) {
            throw NotFoundException.getNotFoundInstance();
        }
        return this.f86220b.get(0);
    }

    /* renamed from: d */
    public final boolean m57561d(int[] iArr) {
        float f = this.f86225g;
        float f2 = f / 2.0f;
        for (int i = 0; i < 3; i++) {
            if (Math.abs(f - iArr[i]) >= f2) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    public final AlignmentPattern m57562e(int[] iArr, int i, int i2) {
        int i3 = iArr[0] + iArr[1] + iArr[2];
        float m57558a = m57558a(iArr, i2);
        float m57559b = m57559b(i, (int) m57558a, iArr[1] * 2, i3);
        if (Float.isNaN(m57559b)) {
            return null;
        }
        float f = ((iArr[0] + iArr[1]) + iArr[2]) / 3.0f;
        for (AlignmentPattern alignmentPattern : this.f86220b) {
            if (alignmentPattern.m30766b(f, m57559b, m57558a)) {
                return alignmentPattern.m30767c(m57559b, m57558a, f);
            }
        }
        AlignmentPattern alignmentPattern2 = new AlignmentPattern(m57558a, m57559b, f);
        this.f86220b.add(alignmentPattern2);
        ResultPointCallback resultPointCallback = this.f86227i;
        if (resultPointCallback == null) {
            return null;
        }
        resultPointCallback.foundPossibleResultPoint(alignmentPattern2);
        return null;
    }
}
