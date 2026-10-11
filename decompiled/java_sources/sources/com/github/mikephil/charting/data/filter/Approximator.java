package com.github.mikephil.charting.data.filter;

import android.annotation.TargetApi;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class Approximator {

    /* renamed from: com.github.mikephil.charting.data.filter.Approximator$a */
    /* loaded from: classes4.dex */
    public class C4595a {

        /* renamed from: a */
        public float[] f21639a;

        /* renamed from: b */
        public float f21640b;

        /* renamed from: c */
        public float f21641c;

        /* renamed from: d */
        public float f21642d;

        /* renamed from: e */
        public float f21643e;

        /* renamed from: f */
        public float f21644f;

        public C4595a(float f, float f2, float f3, float f4) {
            this.f21642d = f - f3;
            this.f21643e = f2 - f4;
            this.f21640b = f * f4;
            this.f21641c = f3 * f2;
            this.f21644f = (float) Math.sqrt((r3 * r3) + (r0 * r0));
            this.f21639a = new float[]{f, f2, f3, f4};
        }

        /* renamed from: a */
        public float m17363a(float f, float f2) {
            return Math.abs((((this.f21643e * f) - (this.f21642d * f2)) + this.f21640b) - this.f21641c) / this.f21644f;
        }

        /* renamed from: b */
        public float[] m17364b() {
            return this.f21639a;
        }
    }

    /* renamed from: a */
    public float[] m17362a(float[]... fArr) {
        int i = 0;
        for (float[] fArr2 : fArr) {
            i += fArr2.length;
        }
        float[] fArr3 = new float[i];
        int i2 = 0;
        for (float[] fArr4 : fArr) {
            for (float f : fArr4) {
                fArr3[i2] = f;
                i2++;
            }
        }
        return fArr3;
    }

    @TargetApi(9)
    public float[] reduceWithDouglasPeucker(float[] fArr, float f) {
        C4595a c4595a = new C4595a(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1]);
        float f2 = 0.0f;
        int i = 0;
        for (int i2 = 2; i2 < fArr.length - 2; i2 += 2) {
            float m17363a = c4595a.m17363a(fArr[i2], fArr[i2 + 1]);
            if (m17363a > f2) {
                i = i2;
                f2 = m17363a;
            }
        }
        if (f2 <= f) {
            return c4595a.m17364b();
        }
        float[] reduceWithDouglasPeucker = reduceWithDouglasPeucker(Arrays.copyOfRange(fArr, 0, i + 2), f);
        float[] reduceWithDouglasPeucker2 = reduceWithDouglasPeucker(Arrays.copyOfRange(fArr, i, fArr.length), f);
        return m17362a(reduceWithDouglasPeucker, Arrays.copyOfRange(reduceWithDouglasPeucker2, 2, reduceWithDouglasPeucker2.length));
    }
}
