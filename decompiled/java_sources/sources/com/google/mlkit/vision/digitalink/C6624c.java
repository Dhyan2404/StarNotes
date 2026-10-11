package com.google.mlkit.vision.digitalink;

import androidx.annotation.Nullable;
import com.google.mlkit.vision.digitalink.Ink;

/* renamed from: com.google.mlkit.vision.digitalink.c */
/* loaded from: classes6.dex */
public final class C6624c extends Ink.Point {

    /* renamed from: a */
    public final float f36760a;

    /* renamed from: b */
    public final float f36761b;

    /* renamed from: c */
    public final Long f36762c;

    public C6624c(float f, float f2, @Nullable Long l) {
        this.f36760a = f;
        this.f36761b = f2;
        this.f36762c = l;
    }

    public final boolean equals(Object obj) {
        Long l;
        if (obj == this) {
            return true;
        }
        if (obj instanceof Ink.Point) {
            Ink.Point point = (Ink.Point) obj;
            if (Float.floatToIntBits(this.f36760a) == Float.floatToIntBits(point.getX()) && Float.floatToIntBits(this.f36761b) == Float.floatToIntBits(point.getY()) && ((l = this.f36762c) != null ? l.equals(point.getTimestamp()) : point.getTimestamp() == null)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.mlkit.vision.digitalink.Ink.Point
    @Nullable
    public final Long getTimestamp() {
        return this.f36762c;
    }

    @Override // com.google.mlkit.vision.digitalink.Ink.Point
    public final float getX() {
        return this.f36760a;
    }

    @Override // com.google.mlkit.vision.digitalink.Ink.Point
    public final float getY() {
        return this.f36761b;
    }

    public final int hashCode() {
        int floatToIntBits = ((Float.floatToIntBits(this.f36760a) ^ 1000003) * 1000003) ^ Float.floatToIntBits(this.f36761b);
        Long l = this.f36762c;
        return (l == null ? 0 : l.hashCode()) ^ (floatToIntBits * 1000003);
    }

    public final String toString() {
        return "Point{x=" + this.f36760a + ", y=" + this.f36761b + ", timestamp=" + this.f36762c + "}";
    }
}
