package com.onyx.galaxy.note.p048ui.colorpicker.drawable;

import android.graphics.RectF;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0011\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014*\u0001\u0000\b\n\u0018\u00002\u00020\u0001R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0016"}, m61528d2 = {"com/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1", "", "Landroid/graphics/RectF;", "a", "Landroid/graphics/RectF;", "getColorFill", "()Landroid/graphics/RectF;", "setColorFill", "(Landroid/graphics/RectF;)V", "colorFill", "b", "getSlimBorder", "setSlimBorder", "slimBorder", "c", "getThickBorder", "setThickBorder", "thickBorder", "d", "getOpaquePreview", "setOpaquePreview", "opaquePreview", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ColorCellDrawable$rects$1 {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public RectF colorFill = new RectF();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public RectF slimBorder = new RectF();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public RectF thickBorder = new RectF();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public RectF opaquePreview = new RectF();

    @NotNull
    public final RectF getColorFill() {
        return this.colorFill;
    }

    @NotNull
    public final RectF getOpaquePreview() {
        return this.opaquePreview;
    }

    @NotNull
    public final RectF getSlimBorder() {
        return this.slimBorder;
    }

    @NotNull
    public final RectF getThickBorder() {
        return this.thickBorder;
    }

    public final void setColorFill(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.colorFill = rectF;
    }

    public final void setOpaquePreview(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.opaquePreview = rectF;
    }

    public final void setSlimBorder(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.slimBorder = rectF;
    }

    public final void setThickBorder(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.thickBorder = rectF;
    }
}
