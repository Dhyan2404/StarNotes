package com.onyx.android.sdk.base.extension;

import android.graphics.Path;
import android.graphics.RectF;
import com.onegravity.colorpicker.ColorPicker;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0002*\u00020\u0002¨\u0006\u0006"}, m61528d2 = {"computeBounds", "Landroid/graphics/RectF;", "Landroid/graphics/Path;", ColorPicker.f39840p, "", "copy", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PathKt {
    @NotNull
    public static final RectF computeBounds(@NotNull Path path, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        RectF rectF = new RectF();
        path.computeBounds(rectF, z);
        return rectF;
    }

    public static /* synthetic */ RectF computeBounds$default(Path path, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return computeBounds(path, z);
    }

    @NotNull
    public static final Path copy(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Path path2 = new Path();
        path2.addPath(path);
        return path2;
    }
}
