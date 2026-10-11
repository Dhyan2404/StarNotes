package com.google.zxing;

import com.google.android.material.motion.MotionUtils;
import com.google.zxing.common.detector.MathUtils;

/* loaded from: classes4.dex */
public class ResultPoint {

    /* renamed from: a */
    public final float f38224a;

    /* renamed from: b */
    public final float f38225b;

    public ResultPoint(float f, float f2) {
        this.f38224a = f;
        this.f38225b = f2;
    }

    /* renamed from: a */
    public static float m30419a(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        float f = resultPoint2.f38224a;
        float f2 = resultPoint2.f38225b;
        return ((resultPoint3.f38224a - f) * (resultPoint.f38225b - f2)) - ((resultPoint3.f38225b - f2) * (resultPoint.f38224a - f));
    }

    public static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.distance(resultPoint.f38224a, resultPoint.f38225b, resultPoint2.f38224a, resultPoint2.f38225b);
    }

    public static void orderBestPatterns(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        float distance = distance(resultPointArr[0], resultPointArr[1]);
        float distance2 = distance(resultPointArr[1], resultPointArr[2]);
        float distance3 = distance(resultPointArr[0], resultPointArr[2]);
        if (distance2 >= distance && distance2 >= distance3) {
            resultPoint = resultPointArr[0];
            resultPoint2 = resultPointArr[1];
            resultPoint3 = resultPointArr[2];
        } else if (distance3 < distance2 || distance3 < distance) {
            resultPoint = resultPointArr[2];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[1];
        } else {
            resultPoint = resultPointArr[1];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[2];
        }
        if (m30419a(resultPoint2, resultPoint, resultPoint3) < 0.0f) {
            ResultPoint resultPoint4 = resultPoint3;
            resultPoint3 = resultPoint2;
            resultPoint2 = resultPoint4;
        }
        resultPointArr[0] = resultPoint2;
        resultPointArr[1] = resultPoint;
        resultPointArr[2] = resultPoint3;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ResultPoint) {
            ResultPoint resultPoint = (ResultPoint) obj;
            if (this.f38224a == resultPoint.f38224a && this.f38225b == resultPoint.f38225b) {
                return true;
            }
        }
        return false;
    }

    public final float getX() {
        return this.f38224a;
    }

    public final float getY() {
        return this.f38225b;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.f38224a) * 31) + Float.floatToIntBits(this.f38225b);
    }

    public final String toString() {
        return MotionUtils.f31761c + this.f38224a + ',' + this.f38225b + ')';
    }
}
