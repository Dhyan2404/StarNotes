package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* loaded from: classes6.dex */
public class TriangleEdgeTreatment extends EdgeTreatment {

    /* renamed from: e */
    public final float f32333e;

    /* renamed from: f */
    public final boolean f32334f;

    public TriangleEdgeTreatment(float f, boolean z) {
        this.f32333e = f;
        this.f32334f = z;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f2, float f3, @NonNull ShapePath shapePath) {
        if (!this.f32334f) {
            float f4 = this.f32333e;
            shapePath.lineTo(f2 - (f4 * f3), 0.0f, f2, (-f4) * f3);
            shapePath.lineTo(f2 + (this.f32333e * f3), 0.0f, f, 0.0f);
        } else {
            shapePath.lineTo(f2 - (this.f32333e * f3), 0.0f);
            float f5 = this.f32333e;
            shapePath.lineTo(f2, f5 * f3, (f5 * f3) + f2, 0.0f);
            shapePath.lineTo(f, 0.0f);
        }
    }
}
