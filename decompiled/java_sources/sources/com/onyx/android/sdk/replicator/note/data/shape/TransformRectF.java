package com.onyx.android.sdk.replicator.note.data.shape;

import android.graphics.RectF;
import com.alibaba.fastjson2.annotation.JSONField;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\b\u0010\u0015\u001a\u00020\u0005H\u0007J\b\u0010\u0016\u001a\u00020\u0005H\u0007J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;", "", "originRectF", "Landroid/graphics/RectF;", "angle", "", "(Landroid/graphics/RectF;F)V", "getAngle", "()F", "setAngle", "(F)V", "getOriginRectF", "()Landroid/graphics/RectF;", "setOriginRectF", "(Landroid/graphics/RectF;)V", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "getOriginCenterX", "getOriginCenterY", "hashCode", "", "toString", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class TransformRectF {
    private float angle;

    @NotNull
    private RectF originRectF;

    /* JADX WARN: Multi-variable type inference failed */
    public TransformRectF() {
        this(null, 0.0f, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ TransformRectF copy$default(TransformRectF transformRectF, RectF rectF, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            rectF = transformRectF.originRectF;
        }
        if ((i & 2) != 0) {
            f = transformRectF.angle;
        }
        return transformRectF.copy(rectF, f);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final RectF getOriginRectF() {
        return this.originRectF;
    }

    /* renamed from: component2, reason: from getter */
    public final float getAngle() {
        return this.angle;
    }

    @NotNull
    public final TransformRectF copy(@NotNull RectF originRectF, float angle) {
        Intrinsics.checkNotNullParameter(originRectF, "originRectF");
        return new TransformRectF(originRectF, angle);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TransformRectF)) {
            return false;
        }
        TransformRectF transformRectF = (TransformRectF) other;
        return Intrinsics.areEqual(this.originRectF, transformRectF.originRectF) && Float.compare(this.angle, transformRectF.angle) == 0;
    }

    public final float getAngle() {
        return this.angle;
    }

    @JSONField(deserialize = false, serialize = false)
    public final float getOriginCenterX() {
        return this.originRectF.centerX();
    }

    @JSONField(deserialize = false, serialize = false)
    public final float getOriginCenterY() {
        return this.originRectF.centerY();
    }

    @NotNull
    public final RectF getOriginRectF() {
        return this.originRectF;
    }

    public int hashCode() {
        return (this.originRectF.hashCode() * 31) + Float.hashCode(this.angle);
    }

    public final void setAngle(float f) {
        this.angle = f;
    }

    public final void setOriginRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.originRectF = rectF;
    }

    @NotNull
    public String toString() {
        return "TransformRectF(originRectF=" + this.originRectF + ", angle=" + this.angle + ')';
    }

    public TransformRectF(@NotNull RectF originRectF, float f) {
        Intrinsics.checkNotNullParameter(originRectF, "originRectF");
        this.originRectF = originRectF;
        this.angle = f;
    }

    public /* synthetic */ TransformRectF(RectF rectF, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new RectF() : rectF, (i & 2) != 0 ? 0.0f : f);
    }
}
