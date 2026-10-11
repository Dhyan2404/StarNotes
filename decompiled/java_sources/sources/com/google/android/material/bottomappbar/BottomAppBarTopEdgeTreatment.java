package com.google.android.material.bottomappbar;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.ShapePath;

/* loaded from: classes6.dex */
public class BottomAppBarTopEdgeTreatment extends EdgeTreatment implements Cloneable {

    /* renamed from: k */
    public static final int f30427k = 90;

    /* renamed from: l */
    public static final int f30428l = 180;

    /* renamed from: m */
    public static final int f30429m = 270;

    /* renamed from: n */
    public static final int f30430n = 180;

    /* renamed from: o */
    public static final float f30431o = 1.75f;

    /* renamed from: e */
    public float f30432e;

    /* renamed from: f */
    public float f30433f;

    /* renamed from: g */
    public float f30434g;

    /* renamed from: h */
    public float f30435h;

    /* renamed from: i */
    public float f30436i;

    /* renamed from: j */
    public float f30437j = -1.0f;

    public BottomAppBarTopEdgeTreatment(float f, float f2, float f3) {
        this.f30433f = f;
        this.f30432e = f2;
        m23140e(f3);
        this.f30436i = 0.0f;
    }

    /* renamed from: b */
    public float m23137b() {
        return this.f30435h;
    }

    /* renamed from: c */
    public float m23138c() {
        return this.f30433f;
    }

    /* renamed from: d */
    public float m23139d() {
        return this.f30432e;
    }

    /* renamed from: e */
    public void m23140e(@FloatRange(from = 0.0d) float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.f30435h = f;
    }

    /* renamed from: f */
    public void m23141f(float f) {
        this.f30433f = f;
    }

    /* renamed from: g */
    public void m23142g(float f) {
        this.f30432e = f;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f2, float f3, @NonNull ShapePath shapePath) {
        float f4;
        float f5;
        float f6 = this.f30434g;
        if (f6 == 0.0f) {
            shapePath.lineTo(f, 0.0f);
            return;
        }
        float f7 = ((this.f30433f * 2.0f) + f6) / 2.0f;
        float f8 = f3 * this.f30432e;
        float f9 = f2 + this.f30436i;
        float f10 = (this.f30435h * f3) + ((1.0f - f3) * f7);
        if (f10 / f7 >= 1.0f) {
            shapePath.lineTo(f, 0.0f);
            return;
        }
        float f11 = this.f30437j;
        float f12 = f11 * f3;
        boolean z = f11 == -1.0f || Math.abs((f11 * 2.0f) - f6) < 0.1f;
        if (z) {
            f4 = f10;
            f5 = 0.0f;
        } else {
            f5 = 1.75f;
            f4 = 0.0f;
        }
        float f13 = f7 + f8;
        float f14 = f4 + f8;
        float sqrt = (float) Math.sqrt((f13 * f13) - (f14 * f14));
        float f15 = f9 - sqrt;
        float f16 = f9 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f14));
        float f17 = (90.0f - degrees) + f5;
        shapePath.lineTo(f15, 0.0f);
        float f18 = f8 * 2.0f;
        shapePath.addArc(f15 - f8, 0.0f, f15 + f8, f18, 270.0f, degrees);
        if (z) {
            shapePath.addArc(f9 - f7, (-f7) - f4, f9 + f7, f7 - f4, 180.0f - f17, (f17 * 2.0f) - 180.0f);
        } else {
            float f19 = this.f30433f;
            float f20 = f12 * 2.0f;
            float f21 = f9 - f7;
            shapePath.addArc(f21, -(f12 + f19), f21 + f19 + f20, f19 + f12, 180.0f - f17, ((f17 * 2.0f) - 180.0f) / 2.0f);
            float f22 = f9 + f7;
            float f23 = this.f30433f;
            shapePath.lineTo(f22 - ((f23 / 2.0f) + f12), f23 + f12);
            float f24 = this.f30433f;
            shapePath.addArc(f22 - (f20 + f24), -(f12 + f24), f22, f24 + f12, 90.0f, f17 - 90.0f);
        }
        shapePath.addArc(f16 - f8, 0.0f, f16 + f8, f18, 270.0f - degrees, degrees);
        shapePath.lineTo(f, 0.0f);
    }

    public float getFabCornerRadius() {
        return this.f30437j;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getFabDiameter() {
        return this.f30434g;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getHorizontalOffset() {
        return this.f30436i;
    }

    /* renamed from: h */
    public void m23143h(float f) {
        this.f30436i = f;
    }

    public void setFabCornerSize(float f) {
        this.f30437j = f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setFabDiameter(float f) {
        this.f30434g = f;
    }
}
