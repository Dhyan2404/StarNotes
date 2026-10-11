package com.onyx.android.sdk.reader.plugins.ppt;

import android.graphics.Rect;
import android.graphics.RectF;
import java.awt.Dimension;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002¨\u0006\u0005"}, m61528d2 = {"toRect", "Landroid/graphics/Rect;", "Ljava/awt/Dimension;", "toRectF", "Landroid/graphics/RectF;", "sdk-readercore_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DimensionKt {
    @NotNull
    public static final Rect toRect(@NotNull Dimension dimension) {
        Intrinsics.checkNotNullParameter(dimension, "<this>");
        return new Rect(0, 0, dimension.width, dimension.height);
    }

    @NotNull
    public static final RectF toRectF(@NotNull Dimension dimension) {
        Intrinsics.checkNotNullParameter(dimension, "<this>");
        return new RectF(0.0f, 0.0f, dimension.width, dimension.height);
    }
}
