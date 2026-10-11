package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* loaded from: classes6.dex */
public final class MarkerEdgeTreatment extends EdgeTreatment {

    /* renamed from: e */
    public final float f32203e;

    public MarkerEdgeTreatment(float f) {
        this.f32203e = f - 0.001f;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    /* renamed from: a */
    public boolean mo24708a() {
        return true;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f2, float f3, @NonNull ShapePath shapePath) {
        float sqrt = (float) ((this.f32203e * Math.sqrt(2.0d)) / 2.0d);
        float sqrt2 = (float) Math.sqrt(Math.pow(this.f32203e, 2.0d) - Math.pow(sqrt, 2.0d));
        shapePath.reset(f2 - sqrt, ((float) (-((this.f32203e * Math.sqrt(2.0d)) - this.f32203e))) + sqrt2);
        shapePath.lineTo(f2, (float) (-((this.f32203e * Math.sqrt(2.0d)) - this.f32203e)));
        shapePath.lineTo(f2 + sqrt, ((float) (-((this.f32203e * Math.sqrt(2.0d)) - this.f32203e))) + sqrt2);
    }
}
