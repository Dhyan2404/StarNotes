package com.sunia.HTREnginev2;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;

/* loaded from: classes3.dex */
public class hzk implements Interpolator {

    /* renamed from: c */
    public static final float f72724c = 0.002f;

    /* renamed from: a */
    public final float[] f72725a;

    /* renamed from: b */
    public final float[] f72726b;

    public hzk(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i = ((int) (length / 0.002f)) + 1;
        this.f72725a = new float[i];
        this.f72726b = new float[i];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < i; i2++) {
            pathMeasure.getPosTan((i2 * length) / (i - 1), fArr, null);
            this.f72725a[i2] = fArr[0];
            this.f72726b[i2] = fArr[1];
        }
    }

    /* renamed from: a */
    public static Path m54659a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        return path;
    }

    /* renamed from: b */
    public static Path m54660b(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
        return path;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int length = this.f72725a.length - 1;
        int i = 0;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.f72725a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.f72725a;
        float f2 = fArr[length];
        float f3 = fArr[i];
        float f4 = f2 - f3;
        if (f4 == 0.0f) {
            return this.f72726b[i];
        }
        float[] fArr2 = this.f72726b;
        float f5 = fArr2[i];
        return f5 + (((f - f3) / f4) * (fArr2[length] - f5));
    }

    public hzk(float f, float f2) {
        this(m54660b(f, f2));
    }

    public hzk(float f, float f2, float f3, float f4) {
        this(m54659a(f, f2, f3, f4));
    }
}
