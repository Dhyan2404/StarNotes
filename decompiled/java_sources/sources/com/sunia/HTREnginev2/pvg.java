package com.sunia.HTREnginev2;

import android.opengl.Matrix;
import com.google.android.exoplayer2.util.TimedValueQueue;

/* loaded from: classes5.dex */
public final class pvg {

    /* renamed from: a */
    public final float[] f81274a = new float[16];

    /* renamed from: b */
    public final float[] f81275b = new float[16];

    /* renamed from: c */
    public final TimedValueQueue<float[]> f81276c = new TimedValueQueue<>();

    /* renamed from: d */
    public boolean f81277d;

    /* renamed from: a */
    public static void m56387a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float f = fArr2[10];
        float f2 = fArr2[8];
        float sqrt = (float) Math.sqrt((f * f) + (f2 * f2));
        float f3 = fArr2[10];
        fArr[0] = f3 / sqrt;
        float f4 = fArr2[8];
        fArr[2] = f4 / sqrt;
        fArr[8] = (-f4) / sqrt;
        fArr[10] = f3 / sqrt;
    }

    /* renamed from: b */
    public static void m56388b(float[] fArr, float[] fArr2) {
        float f = fArr2[0];
        float f2 = -fArr2[1];
        float f3 = -fArr2[2];
        float length = Matrix.length(f, f2, f3);
        if (length != 0.0f) {
            Matrix.setRotateM(fArr, 0, (float) Math.toDegrees(length), f / length, f2 / length, f3 / length);
        } else {
            Matrix.setIdentityM(fArr, 0);
        }
    }

    /* renamed from: c */
    public boolean m56389c(float[] fArr, long j) {
        float[] pollFloor = this.f81276c.pollFloor(j);
        if (pollFloor == null) {
            return false;
        }
        m56388b(this.f81275b, pollFloor);
        if (!this.f81277d) {
            m56387a(this.f81274a, this.f81275b);
            this.f81277d = true;
        }
        Matrix.multiplyMM(fArr, 0, this.f81274a, 0, this.f81275b, 0);
        return true;
    }

    /* renamed from: d */
    public void m56390d() {
        this.f81276c.clear();
        this.f81277d = false;
    }

    /* renamed from: e */
    public void m56391e(long j, float[] fArr) {
        this.f81276c.add(j, fArr);
    }
}
