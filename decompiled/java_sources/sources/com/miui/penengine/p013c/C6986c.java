package com.miui.penengine.p013c;

import android.graphics.PointF;
import android.graphics.RectF;

/* renamed from: com.miui.penengine.c.c */
/* loaded from: classes7.dex */
public class C6986c {
    /* renamed from: a */
    public static float m31273a(float f, float f2) {
        return (float) Math.toDegrees(Math.atan2(f, f2));
    }

    /* renamed from: b */
    public static float m31278b(float f, float f2) {
        return 0.0f;
    }

    /* renamed from: a */
    public static double m31272a(float f, float f2, float f3, float f4) {
        return Math.sqrt(Math.pow(f2 - f4, 2.0d) + Math.pow(f - f3, 2.0d));
    }

    /* renamed from: b */
    public static PointF[] m31280b(RectF rectF) {
        return new PointF[]{new PointF(rectF.left, rectF.top), new PointF(rectF.right, rectF.top), new PointF(rectF.right, rectF.bottom), new PointF(rectF.left, rectF.bottom)};
    }

    /* renamed from: a */
    public static float[] m31277a(RectF rectF) {
        float f = rectF.left;
        float f2 = rectF.top;
        float f3 = rectF.right;
        float f4 = rectF.bottom;
        return new float[]{f, f2, f3, f2, f3, f4, f, f4};
    }

    /* renamed from: b */
    public static float m31279b(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        double asin = (Math.asin(Math.abs(f6 / Math.sqrt((f6 * f6) + (f5 * f5)))) / 3.141592653589793d) * 180.0d;
        if (f5 > 0.0f && f6 < 0.0f) {
            asin = -asin;
        } else if (f5 < 0.0f && f6 < 0.0f) {
            asin -= 180.0d;
        }
        if (f5 < 0.0f && f6 > 0.0f) {
            asin = 180.0d - asin;
        }
        return (float) asin;
    }

    /* renamed from: a */
    public static PointF m31275a(PointF pointF, PointF pointF2) {
        if (pointF == null || pointF2 == null) {
            return null;
        }
        return new PointF((pointF.x + pointF2.x) / 2.0f, (pointF.y + pointF2.y) / 2.0f);
    }

    /* renamed from: a */
    public static float m31274a(float f, float f2, float f3) {
        if (Float.isNaN(f3)) {
            return f2;
        }
        float min = Math.min(f, f2);
        float max = Math.max(f, f2);
        if (f3 > 1.0f) {
            f3 = 1.0f / f3;
        }
        return ((max - min) * f3) + min;
    }

    /* renamed from: a */
    public static boolean m31276a(float f, float f2, float f3, float f4, float f5, float f6) {
        return m31272a(f, f2, f4, f5) < ((double) (f3 + f6));
    }
}
