package com.onyx.android.sdk.neohwr.layout;

import android.graphics.Path;
import android.graphics.RectF;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/neohwr/layout/FontPathLoadResult;", "", "()V", "glyphRect", "Landroid/graphics/RectF;", "getGlyphRect", "()Landroid/graphics/RectF;", "setGlyphRect", "(Landroid/graphics/RectF;)V", "path", "Landroid/graphics/Path;", "getPath", "()Landroid/graphics/Path;", "setPath", "(Landroid/graphics/Path;)V", "getGlyphRectArea", "", "sdk-neohwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FontPathLoadResult {

    @NotNull
    private Path path = new Path();

    @NotNull
    private RectF glyphRect = new RectF();

    @NotNull
    public final RectF getGlyphRect() {
        return this.glyphRect;
    }

    public final float getGlyphRectArea() {
        RectF rectF = this.glyphRect;
        return (rectF.right - rectF.left) * (rectF.top - rectF.bottom);
    }

    @NotNull
    public final Path getPath() {
        return this.path;
    }

    public final void setGlyphRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.glyphRect = rectF;
    }

    public final void setPath(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "<set-?>");
        this.path = path;
    }
}
