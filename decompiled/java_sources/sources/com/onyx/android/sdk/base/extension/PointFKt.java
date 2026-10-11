package com.onyx.android.sdk.base.extension;

import android.graphics.PointF;
import android.graphics.RectF;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\u001a\n\u0010\u0001\u001a\u00020\u0000*\u00020\u0000\u001a\u0014\u0010\u0003\u001a\u00020\u0004*\u0004\u0018\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002\u001a\u0012\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002\u001a\u001a\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002\u001a\u0012\u0010\u000b\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000\u001a\u0012\u0010\f\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000\"\u0017\u0010\u0011\u001a\u00020\u00008\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, m61528d2 = {"Landroid/graphics/PointF;", "copy", "", "scale", "", "expand", "Landroid/graphics/RectF;", "toRect", "expandX", "expandY", Constants.ATTRVAL_OTHER, "getAngle", "getDistance", "a", "Landroid/graphics/PointF;", "getEMPTY_POINTF", "()Landroid/graphics/PointF;", "EMPTY_POINTF", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PointFKt {

    /* renamed from: a */
    @NotNull
    public static final PointF f40744a = new PointF();

    @NotNull
    public static final PointF copy(@NotNull PointF pointF) {
        Intrinsics.checkNotNullParameter(pointF, "<this>");
        return new PointF(pointF.x, pointF.y);
    }

    public static final float getAngle(@NotNull PointF pointF, @NotNull PointF other) {
        Intrinsics.checkNotNullParameter(pointF, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return (float) Math.toDegrees(Math.atan2(other.y - pointF.y, other.x - pointF.x));
    }

    public static final float getDistance(@NotNull PointF pointF, @NotNull PointF other) {
        Intrinsics.checkNotNullParameter(pointF, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        double d = 2.0f;
        return (float) Math.sqrt(((float) Math.pow(other.x - pointF.x, d)) + ((float) Math.pow(other.y - pointF.y, d)));
    }

    @NotNull
    public static final PointF getEMPTY_POINTF() {
        return f40744a;
    }

    public static final void scale(@Nullable PointF pointF, float f) {
        if (pointF == null) {
            return;
        }
        pointF.x *= f;
        pointF.y *= f;
    }

    @NotNull
    public static final RectF toRect(@NotNull PointF pointF, float f) {
        Intrinsics.checkNotNullParameter(pointF, "<this>");
        float f2 = pointF.x;
        float f3 = pointF.y;
        return new RectF(f2 - f, f3 - f, f2 + f, f3 + f);
    }

    @NotNull
    public static final RectF toRect(@NotNull PointF pointF, float f, float f2) {
        Intrinsics.checkNotNullParameter(pointF, "<this>");
        float f3 = pointF.x;
        float f4 = pointF.y;
        return new RectF(f3 - f, f4 - f2, f3 + f, f4 + f2);
    }
}
