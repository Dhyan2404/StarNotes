package com.sunia.HTREnginev2;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

/* loaded from: classes4.dex */
public final class dtg {

    /* renamed from: c */
    public static final int f68218c = 21522;

    /* renamed from: d */
    public static final int[][] f68219d = {new int[]{21522, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{7399, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{2107, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};

    /* renamed from: a */
    public final ErrorCorrectionLevel f68220a;

    /* renamed from: b */
    public final byte f68221b;

    public dtg(int i) {
        this.f68220a = ErrorCorrectionLevel.forBits((i >> 3) & 3);
        this.f68221b = (byte) (i & 7);
    }

    /* renamed from: a */
    public static dtg m53705a(int i, int i2) {
        dtg m53706b = m53706b(i, i2);
        return m53706b != null ? m53706b : m53706b(i ^ 21522, i2 ^ 21522);
    }

    /* renamed from: b */
    public static dtg m53706b(int i, int i2) {
        int m53707e;
        int i3 = Integer.MAX_VALUE;
        int i4 = 0;
        for (int[] iArr : f68219d) {
            int i5 = iArr[0];
            if (i5 == i || i5 == i2) {
                return new dtg(iArr[1]);
            }
            int m53707e2 = m53707e(i, i5);
            if (m53707e2 < i3) {
                i4 = iArr[1];
                i3 = m53707e2;
            }
            if (i != i2 && (m53707e = m53707e(i2, i5)) < i3) {
                i4 = iArr[1];
                i3 = m53707e;
            }
        }
        if (i3 <= 3) {
            return new dtg(i4);
        }
        return null;
    }

    /* renamed from: e */
    public static int m53707e(int i, int i2) {
        return Integer.bitCount(i ^ i2);
    }

    /* renamed from: c */
    public byte m53708c() {
        return this.f68221b;
    }

    /* renamed from: d */
    public ErrorCorrectionLevel m53709d() {
        return this.f68220a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof dtg)) {
            return false;
        }
        dtg dtgVar = (dtg) obj;
        return this.f68220a == dtgVar.f68220a && this.f68221b == dtgVar.f68221b;
    }

    public int hashCode() {
        return this.f68221b | (this.f68220a.ordinal() << 3);
    }
}
