package com.sunia.HTREnginev2;

import com.google.mlkit.vision.common.PointF3D;

/* loaded from: classes6.dex */
public final class zep extends PointF3D {

    /* renamed from: a */
    public final float f91678a;

    /* renamed from: b */
    public final float f91679b;

    /* renamed from: c */
    public final float f91680c;

    public zep(float f, float f2, float f3) {
        this.f91678a = f;
        this.f91679b = f2;
        this.f91680c = f3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PointF3D) {
            PointF3D pointF3D = (PointF3D) obj;
            if (Float.floatToIntBits(this.f91678a) == Float.floatToIntBits(pointF3D.getX()) && Float.floatToIntBits(this.f91679b) == Float.floatToIntBits(pointF3D.getY()) && Float.floatToIntBits(this.f91680c) == Float.floatToIntBits(pointF3D.getZ())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.mlkit.vision.common.PointF3D
    public final float getX() {
        return this.f91678a;
    }

    @Override // com.google.mlkit.vision.common.PointF3D
    public final float getY() {
        return this.f91679b;
    }

    @Override // com.google.mlkit.vision.common.PointF3D
    public final float getZ() {
        return this.f91680c;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.f91680c) ^ ((((Float.floatToIntBits(this.f91678a) ^ 1000003) * 1000003) ^ Float.floatToIntBits(this.f91679b)) * 1000003);
    }

    public final String toString() {
        return "PointF3D{x=" + this.f91678a + ", y=" + this.f91679b + ", z=" + this.f91680c + "}";
    }
}
