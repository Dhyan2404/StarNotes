package com.onyx.android.sdk.base.data;

import android.graphics.Path;
import android.graphics.RectF;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0006\u0010\u0014\u001a\u00020\u0005J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/FontPathRect;", "", "path", "Landroid/graphics/Path;", "pathRect", "Landroid/graphics/RectF;", "glyphRect", "(Landroid/graphics/Path;Landroid/graphics/RectF;Landroid/graphics/RectF;)V", "getGlyphRect", "()Landroid/graphics/RectF;", "getPath", "()Landroid/graphics/Path;", "getPathRect", "component1", "component2", "component3", "copy", "equals", "", Constants.ATTRVAL_OTHER, "getFontRect", "hashCode", "", "toString", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class FontPathRect {

    @NotNull
    private final RectF glyphRect;

    @NotNull
    private final Path path;

    @NotNull
    private final RectF pathRect;

    public FontPathRect(@NotNull Path path, @NotNull RectF pathRect, @NotNull RectF glyphRect) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(pathRect, "pathRect");
        Intrinsics.checkNotNullParameter(glyphRect, "glyphRect");
        this.path = path;
        this.pathRect = pathRect;
        this.glyphRect = glyphRect;
    }

    public static /* synthetic */ FontPathRect copy$default(FontPathRect fontPathRect, Path path, RectF rectF, RectF rectF2, int i, Object obj) {
        if ((i & 1) != 0) {
            path = fontPathRect.path;
        }
        if ((i & 2) != 0) {
            rectF = fontPathRect.pathRect;
        }
        if ((i & 4) != 0) {
            rectF2 = fontPathRect.glyphRect;
        }
        return fontPathRect.copy(path, rectF, rectF2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final Path getPath() {
        return this.path;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final RectF getPathRect() {
        return this.pathRect;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final RectF getGlyphRect() {
        return this.glyphRect;
    }

    @NotNull
    public final FontPathRect copy(@NotNull Path path, @NotNull RectF pathRect, @NotNull RectF glyphRect) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(pathRect, "pathRect");
        Intrinsics.checkNotNullParameter(glyphRect, "glyphRect");
        return new FontPathRect(path, pathRect, glyphRect);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FontPathRect)) {
            return false;
        }
        FontPathRect fontPathRect = (FontPathRect) other;
        return Intrinsics.areEqual(this.path, fontPathRect.path) && Intrinsics.areEqual(this.pathRect, fontPathRect.pathRect) && Intrinsics.areEqual(this.glyphRect, fontPathRect.glyphRect);
    }

    @NotNull
    public final RectF getFontRect() {
        RectF rectF = new RectF();
        RectF rectF2 = this.pathRect;
        float f = rectF2.left;
        RectF rectF3 = this.glyphRect;
        float f2 = f - rectF3.left;
        rectF.left = f2;
        rectF.right = f2 + rectF3.right;
        rectF.top = rectF2.top;
        rectF.bottom = rectF2.bottom;
        return rectF;
    }

    @NotNull
    public final RectF getGlyphRect() {
        return this.glyphRect;
    }

    @NotNull
    public final Path getPath() {
        return this.path;
    }

    @NotNull
    public final RectF getPathRect() {
        return this.pathRect;
    }

    public int hashCode() {
        return (((this.path.hashCode() * 31) + this.pathRect.hashCode()) * 31) + this.glyphRect.hashCode();
    }

    @NotNull
    public String toString() {
        return "FontPathRect(path=" + this.path + ", pathRect=" + this.pathRect + ", glyphRect=" + this.glyphRect + ')';
    }
}
