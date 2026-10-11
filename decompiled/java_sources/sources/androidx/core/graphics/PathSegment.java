package androidx.core.graphics;

import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;

/* loaded from: classes3.dex */
public final class PathSegment {

    /* renamed from: a */
    public final PointF f5396a;

    /* renamed from: b */
    public final float f5397b;

    /* renamed from: c */
    public final PointF f5398c;

    /* renamed from: d */
    public final float f5399d;

    public PathSegment(@NonNull PointF pointF, float f, @NonNull PointF pointF2, float f2) {
        this.f5396a = (PointF) Preconditions.checkNotNull(pointF, "start == null");
        this.f5397b = f;
        this.f5398c = (PointF) Preconditions.checkNotNull(pointF2, "end == null");
        this.f5399d = f2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PathSegment)) {
            return false;
        }
        PathSegment pathSegment = (PathSegment) obj;
        return Float.compare(this.f5397b, pathSegment.f5397b) == 0 && Float.compare(this.f5399d, pathSegment.f5399d) == 0 && this.f5396a.equals(pathSegment.f5396a) && this.f5398c.equals(pathSegment.f5398c);
    }

    @NonNull
    public PointF getEnd() {
        return this.f5398c;
    }

    public float getEndFraction() {
        return this.f5399d;
    }

    @NonNull
    public PointF getStart() {
        return this.f5396a;
    }

    public float getStartFraction() {
        return this.f5397b;
    }

    public int hashCode() {
        int hashCode = this.f5396a.hashCode() * 31;
        float f = this.f5397b;
        int floatToIntBits = (((hashCode + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31) + this.f5398c.hashCode()) * 31;
        float f2 = this.f5399d;
        return floatToIntBits + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0);
    }

    public String toString() {
        return "PathSegment{start=" + this.f5396a + ", startFraction=" + this.f5397b + ", end=" + this.f5398c + ", endFraction=" + this.f5399d + '}';
    }
}
