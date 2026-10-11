package com.onyx.android.sdk.base.extension;

import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0002¨\u0006\b"}, m61528d2 = {"areApproximatelyEqual", "", "Landroid/util/Size;", "size", "toRect", "Landroid/graphics/Rect;", "toRectF", "Landroid/graphics/RectF;", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SizeKt {
    public static final boolean areApproximatelyEqual(@NotNull Size size, @NotNull Size size2) {
        Intrinsics.checkNotNullParameter(size, "<this>");
        Intrinsics.checkNotNullParameter(size2, "size");
        return (size.getWidth() >= size2.getWidth() - 1 && size.getWidth() <= size2.getWidth() + 1) && (size.getHeight() >= size2.getHeight() - 1 && size.getHeight() <= size2.getHeight() + 1);
    }

    @NotNull
    public static final Rect toRect(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<this>");
        return new Rect(0, 0, size.getWidth(), size.getHeight());
    }

    @NotNull
    public static final RectF toRectF(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<this>");
        return new RectF(0.0f, 0.0f, size.getWidth(), size.getHeight());
    }
}
