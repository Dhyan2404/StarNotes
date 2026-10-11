package com.sunia.HTREnginev2;

import java.util.Arrays;

/* loaded from: classes3.dex */
public class q0o {

    /* renamed from: d */
    public static final int f81496d = 20;

    /* renamed from: e */
    public static final int f81497e = 40;

    /* renamed from: f */
    public static final int f81498f = 100;

    /* renamed from: a */
    public long[] f81499a;

    /* renamed from: b */
    public float[] f81500b = new float[20];

    /* renamed from: c */
    public int f81501c = 0;

    public q0o() {
        long[] jArr = new long[20];
        this.f81499a = jArr;
        Arrays.fill(jArr, Long.MIN_VALUE);
    }

    /* renamed from: a */
    public void m56568a(long j, float f) {
        int i = (this.f81501c + 1) % 20;
        this.f81501c = i;
        this.f81499a[i] = j;
        this.f81500b[i] = f;
    }

    /* renamed from: b */
    public float m56569b() {
        int i = this.f81501c;
        if (i == 0 && this.f81499a[i] == Long.MIN_VALUE) {
            return 0.0f;
        }
        long j = this.f81499a[i];
        int i2 = 0;
        long j2 = j;
        while (true) {
            long j3 = this.f81499a[i];
            if (j3 == Long.MIN_VALUE) {
                break;
            }
            float f = (float) (j - j3);
            float abs = (float) Math.abs(j3 - j2);
            if (f > 100.0f || abs > 40.0f) {
                break;
            }
            if (i == 0) {
                i = 20;
            }
            i--;
            i2++;
            if (i2 >= 20) {
                break;
            }
            j2 = j3;
        }
        if (i2 < 2) {
            return 0.0f;
        }
        if (i2 == 2) {
            int i3 = this.f81501c;
            int i4 = i3 == 0 ? 19 : i3 - 1;
            long[] jArr = this.f81499a;
            float f2 = (float) (jArr[i3] - jArr[i4]);
            if (f2 == 0.0f) {
                return 0.0f;
            }
            float[] fArr = this.f81500b;
            return ((fArr[i3] - fArr[i4]) / f2) * 1000.0f;
        }
        int i5 = this.f81501c;
        int i6 = (((i5 - i2) + 20) + 1) % 20;
        int i7 = ((i5 + 1) + 20) % 20;
        long j4 = this.f81499a[i6];
        float f3 = this.f81500b[i6];
        int i8 = i6 + 1;
        float f4 = 0.0f;
        for (int i9 = i8 % 20; i9 != i7; i9 = (i9 + 1) % 20) {
            long j5 = this.f81499a[i9];
            float f5 = (float) (j5 - j4);
            if (f5 != 0.0f) {
                float f6 = this.f81500b[i9];
                float f7 = (f6 - f3) / f5;
                f4 += (f7 - m56570c(f4)) * Math.abs(f7);
                if (i9 == i8) {
                    f4 *= 0.5f;
                }
                f3 = f6;
                j4 = j5;
            }
        }
        return m56570c(f4) * 1000.0f;
    }

    /* renamed from: c */
    public final float m56570c(float f) {
        return (float) (Math.signum(f) * Math.sqrt(Math.abs(f) * 2.0f));
    }

    /* renamed from: d */
    public void m56571d() {
        this.f81501c = 0;
        Arrays.fill(this.f81499a, Long.MIN_VALUE);
        Arrays.fill(this.f81500b, 0.0f);
    }
}
