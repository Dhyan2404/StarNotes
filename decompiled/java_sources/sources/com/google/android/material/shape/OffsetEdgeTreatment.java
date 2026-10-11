package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* loaded from: classes6.dex */
public final class OffsetEdgeTreatment extends EdgeTreatment {

    /* renamed from: e */
    public final EdgeTreatment f32256e;

    /* renamed from: f */
    public final float f32257f;

    public OffsetEdgeTreatment(@NonNull EdgeTreatment edgeTreatment, float f) {
        this.f32256e = edgeTreatment;
        this.f32257f = f;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    /* renamed from: a */
    public boolean mo24708a() {
        return this.f32256e.mo24708a();
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f2, float f3, @NonNull ShapePath shapePath) {
        this.f32256e.getEdgePath(f, f2 - this.f32257f, f3, shapePath);
    }
}
