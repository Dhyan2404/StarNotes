package com.onyx.galaxy.note.editor.view.magnifier;

import android.graphics.RectF;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003\u001a\u0016\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003¨\u0006\u0006"}, m61528d2 = {"containsInX", "", "rect1", "Landroid/graphics/RectF;", "rect2", "containsInY", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class MagnifierViewportHandlerKt {
    public static final boolean containsInX(@NotNull RectF rect1, @NotNull RectF rect2) {
        Intrinsics.checkNotNullParameter(rect1, "rect1");
        Intrinsics.checkNotNullParameter(rect2, "rect2");
        return rect1.left < rect2.right && rect1.right > rect2.left;
    }

    public static final boolean containsInY(@NotNull RectF rect1, @NotNull RectF rect2) {
        Intrinsics.checkNotNullParameter(rect1, "rect1");
        Intrinsics.checkNotNullParameter(rect2, "rect2");
        return rect1.top < rect2.bottom && rect1.bottom > rect2.top;
    }
}
