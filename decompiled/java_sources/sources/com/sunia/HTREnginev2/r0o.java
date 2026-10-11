package com.sunia.HTREnginev2;

import android.view.MotionEvent;
import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public class r0o {

    /* renamed from: f */
    public static final long f82615f = 100;

    /* renamed from: g */
    public static final int f82616g = 20;

    /* renamed from: h */
    public static final long f82617h = 40;

    /* renamed from: a */
    public final float[] f82618a = new float[20];

    /* renamed from: b */
    public final long[] f82619b = new long[20];

    /* renamed from: c */
    public float f82620c = 0.0f;

    /* renamed from: d */
    public int f82621d = 0;

    /* renamed from: e */
    public int f82622e = 0;

    /* renamed from: g */
    public static float m56869g(float f) {
        return (f < 0.0f ? -1.0f : 1.0f) * ((float) Math.sqrt(Math.abs(f) * 2.0f));
    }

    /* renamed from: a */
    public void m56870a(@NonNull MotionEvent motionEvent) {
        long eventTime = motionEvent.getEventTime();
        if (this.f82621d != 0 && eventTime - this.f82619b[this.f82622e] > 40) {
            m56871b();
        }
        int i = (this.f82622e + 1) % 20;
        this.f82622e = i;
        int i2 = this.f82621d;
        if (i2 != 20) {
            this.f82621d = i2 + 1;
        }
        this.f82618a[i] = motionEvent.getAxisValue(26);
        this.f82619b[this.f82622e] = eventTime;
    }

    /* renamed from: b */
    public final void m56871b() {
        this.f82621d = 0;
        this.f82620c = 0.0f;
    }

    /* renamed from: c */
    public void m56872c(int i) {
        m56873d(i, Float.MAX_VALUE);
    }

    /* renamed from: d */
    public void m56873d(int i, float f) {
        float m56875f = m56875f() * i;
        this.f82620c = m56875f;
        if (m56875f < (-Math.abs(f))) {
            this.f82620c = -Math.abs(f);
        } else if (this.f82620c > Math.abs(f)) {
            this.f82620c = Math.abs(f);
        }
    }

    /* renamed from: e */
    public float m56874e(int i) {
        if (i != 26) {
            return 0.0f;
        }
        return this.f82620c;
    }

    /* renamed from: f */
    public final float m56875f() {
        long[] jArr;
        long j;
        int i = this.f82621d;
        if (i < 2) {
            return 0.0f;
        }
        int i2 = this.f82622e;
        int i3 = ((i2 + 20) - (i - 1)) % 20;
        long j2 = this.f82619b[i2];
        while (true) {
            jArr = this.f82619b;
            j = jArr[i3];
            if (j2 - j <= 100) {
                break;
            }
            this.f82621d--;
            i3 = (i3 + 1) % 20;
        }
        int i4 = this.f82621d;
        if (i4 < 2) {
            return 0.0f;
        }
        if (i4 == 2) {
            int i5 = (i3 + 1) % 20;
            long j3 = jArr[i5];
            if (j == j3) {
                return 0.0f;
            }
            return this.f82618a[i5] / ((float) (j3 - j));
        }
        float f = 0.0f;
        int i6 = 0;
        for (int i7 = 0; i7 < this.f82621d - 1; i7++) {
            int i8 = i7 + i3;
            long[] jArr2 = this.f82619b;
            long j4 = jArr2[i8 % 20];
            int i9 = (i8 + 1) % 20;
            if (jArr2[i9] != j4) {
                i6++;
                float m56869g = m56869g(f);
                float f2 = this.f82618a[i9] / ((float) (this.f82619b[i9] - j4));
                f += (f2 - m56869g) * Math.abs(f2);
                if (i6 == 1) {
                    f *= 0.5f;
                }
            }
        }
        return m56869g(f);
    }
}
