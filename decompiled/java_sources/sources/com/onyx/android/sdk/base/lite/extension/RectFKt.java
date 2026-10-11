package com.onyx.android.sdk.base.lite.extension;

import android.graphics.PointF;
import android.graphics.RectF;
import androidx.core.graphics.MatrixKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0002*\u00020\u0002\u001a&\u0010\u0004\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010\n\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010\u000b\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010\f\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u0007¨\u0006\r"}, m61528d2 = {"centerPoint", "Landroid/graphics/PointF;", "Landroid/graphics/RectF;", "copy", "rotate", "", "degrees", "", ExtUnits.UNIT_PX, "py", "rotateSize", "rotated", "rotatedSize", "sdk-baselite_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nRectF.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RectF.kt\ncom/onyx/android/sdk/base/lite/extension/RectFKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,30:1\n1#2:31\n*E\n"})
/* loaded from: classes7.dex */
public final class RectFKt {
    @NotNull
    public static final PointF centerPoint(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return new PointF(rectF.centerX(), rectF.centerY());
    }

    @NotNull
    public static final RectF copy(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return new RectF(rectF);
    }

    public static final void rotate(@NotNull RectF rectF, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        MatrixKt.rotationMatrix(f, f2, f3).mapRect(rectF);
    }

    public static /* synthetic */ void rotate$default(RectF rectF, float f, float f2, float f3, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = rectF.centerX();
        }
        if ((i & 4) != 0) {
            f3 = rectF.centerY();
        }
        rotate(rectF, f, f2, f3);
    }

    public static final void rotateSize(@NotNull RectF rectF, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        rotate(rectF, f, f2, f3);
        rectF.offsetTo(0.0f, 0.0f);
    }

    public static /* synthetic */ void rotateSize$default(RectF rectF, float f, float f2, float f3, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = rectF.centerX();
        }
        if ((i & 4) != 0) {
            f3 = rectF.centerY();
        }
        rotateSize(rectF, f, f2, f3);
    }

    @NotNull
    public static final RectF rotated(@NotNull RectF rectF, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        RectF copy = copy(rectF);
        rotate(copy, f, f2, f3);
        return copy;
    }

    public static /* synthetic */ RectF rotated$default(RectF rectF, float f, float f2, float f3, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = rectF.centerX();
        }
        if ((i & 4) != 0) {
            f3 = rectF.centerY();
        }
        return rotated(rectF, f, f2, f3);
    }

    @NotNull
    public static final RectF rotatedSize(@NotNull RectF rectF, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        RectF copy = copy(rectF);
        rotateSize(copy, f, f2, f3);
        return copy;
    }

    public static /* synthetic */ RectF rotatedSize$default(RectF rectF, float f, float f2, float f3, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = rectF.centerX();
        }
        if ((i & 4) != 0) {
            f3 = rectF.centerY();
        }
        return rotatedSize(rectF, f, f2, f3);
    }
}
