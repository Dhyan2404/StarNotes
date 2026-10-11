package com.google.zxing.oned.rss;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.oned.OneDReader;

/* loaded from: classes4.dex */
public abstract class AbstractRSSReader extends OneDReader {

    /* renamed from: g */
    public static final float f38616g = 0.2f;

    /* renamed from: h */
    public static final float f38617h = 0.45f;

    /* renamed from: i */
    public static final float f38618i = 0.7916667f;

    /* renamed from: j */
    public static final float f38619j = 0.89285713f;

    /* renamed from: b */
    public final int[] f38621b;

    /* renamed from: e */
    public final int[] f38624e;

    /* renamed from: f */
    public final int[] f38625f;

    /* renamed from: a */
    public final int[] f38620a = new int[4];

    /* renamed from: c */
    public final float[] f38622c = new float[4];

    /* renamed from: d */
    public final float[] f38623d = new float[4];

    public AbstractRSSReader() {
        int[] iArr = new int[8];
        this.f38621b = iArr;
        this.f38624e = new int[iArr.length / 2];
        this.f38625f = new int[iArr.length / 2];
    }

    @Deprecated
    public static int count(int[] iArr) {
        return MathUtils.sum(iArr);
    }

    public static void decrement(int[] iArr, float[] fArr) {
        int i = 0;
        float f = fArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            float f2 = fArr[i2];
            if (f2 < f) {
                i = i2;
                f = f2;
            }
        }
        iArr[i] = iArr[i] - 1;
    }

    public static void increment(int[] iArr, float[] fArr) {
        int i = 0;
        float f = fArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            float f2 = fArr[i2];
            if (f2 > f) {
                i = i2;
                f = f2;
            }
        }
        iArr[i] = iArr[i] + 1;
    }

    public static boolean isFinderPattern(int[] iArr) {
        float f = (iArr[0] + iArr[1]) / ((iArr[2] + r1) + iArr[3]);
        if (f >= 0.7916667f && f <= 0.89285713f) {
            int i = Integer.MAX_VALUE;
            int i2 = Integer.MIN_VALUE;
            for (int i3 : iArr) {
                if (i3 > i2) {
                    i2 = i3;
                }
                if (i3 < i) {
                    i = i3;
                }
            }
            if (i2 < i * 10) {
                return true;
            }
        }
        return false;
    }

    public static int parseFinderValue(int[] iArr, int[][] iArr2) throws NotFoundException {
        for (int i = 0; i < iArr2.length; i++) {
            if (OneDReader.patternMatchVariance(iArr, iArr2[i], 0.45f) < 0.2f) {
                return i;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public final int[] getDataCharacterCounters() {
        return this.f38621b;
    }

    public final int[] getDecodeFinderCounters() {
        return this.f38620a;
    }

    public final int[] getEvenCounts() {
        return this.f38625f;
    }

    public final float[] getEvenRoundingErrors() {
        return this.f38623d;
    }

    public final int[] getOddCounts() {
        return this.f38624e;
    }

    public final float[] getOddRoundingErrors() {
        return this.f38622c;
    }
}
