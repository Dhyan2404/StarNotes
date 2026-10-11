package com.onyx.android.sdk.pen;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0017\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000J\u0006\u0010\u0006\u001a\u00020\u0005J\t\u0010\u0007\u001a\u00020\u0005HÆ\u0003J\t\u0010\b\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u0005HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\"\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0017\u0010\u0015\"\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/PenPrecision;", "", "penPrecision", "", "isValid", "", "getOptimizedScale", "component1", "component2", "precision", "precisionScale", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "F", "getPrecision", "()F", "b", "getPrecisionScale", "setPrecisionScale", "(F)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(FF)V", "Companion", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class PenPrecision {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final float precision;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public float precisionScale;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/PenPrecision$Companion;", "", "()V", "minPenPrecision", "Lcom/onyx/android/sdk/pen/PenPrecision;", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PenPrecision minPenPrecision() {
            return new PenPrecision(1.0f, 0.01f);
        }

        public Companion() {
        }
    }

    public PenPrecision(float f, float f2) {
        this.precision = f;
        this.precisionScale = f2;
    }

    public static /* synthetic */ PenPrecision copy$default(PenPrecision penPrecision, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = penPrecision.precision;
        }
        if ((i & 2) != 0) {
            f2 = penPrecision.precisionScale;
        }
        return penPrecision.copy(f, f2);
    }

    /* renamed from: component1, reason: from getter */
    public final float getPrecision() {
        return this.precision;
    }

    /* renamed from: component2, reason: from getter */
    public final float getPrecisionScale() {
        return this.precisionScale;
    }

    @NotNull
    public final PenPrecision copy(float precision, float precisionScale) {
        return new PenPrecision(precision, precisionScale);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PenPrecision)) {
            return false;
        }
        PenPrecision penPrecision = (PenPrecision) other;
        return Float.compare(this.precision, penPrecision.precision) == 0 && Float.compare(this.precisionScale, penPrecision.precisionScale) == 0;
    }

    public final float getOptimizedScale() {
        return this.precision <= 1.0f ? this.precisionScale * 1.5f : this.precisionScale;
    }

    public final float getPrecision() {
        return this.precision;
    }

    public final float getPrecisionScale() {
        return this.precisionScale;
    }

    public int hashCode() {
        return (Float.hashCode(this.precision) * 31) + Float.hashCode(this.precisionScale);
    }

    public final boolean isValid(@NotNull PenPrecision penPrecision) {
        Intrinsics.checkNotNullParameter(penPrecision, "penPrecision");
        return this.precision >= penPrecision.precision && penPrecision.precisionScale / this.precisionScale <= 3.0f;
    }

    public final void setPrecisionScale(float f) {
        this.precisionScale = f;
    }

    @NotNull
    public String toString() {
        return "PenPrecision(precision=" + this.precision + ", precisionScale=" + this.precisionScale + ')';
    }
}
