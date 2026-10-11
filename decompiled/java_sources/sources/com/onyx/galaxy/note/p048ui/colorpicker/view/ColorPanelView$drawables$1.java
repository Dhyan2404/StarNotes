package com.onyx.galaxy.note.p048ui.colorpicker.view;

import android.graphics.drawable.Drawable;
import com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvAlphaDrawable;
import com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvAlphaMarkDrawable;
import com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvHueDrawable;
import com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvPanelDrawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00001\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\"\u0010\u001b\u001a\u00020\u001a8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006!"}, m61528d2 = {"com/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1", "", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;", "a", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;", "getPanelDrawable", "()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;", "panelDrawable", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvHueDrawable;", "b", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvHueDrawable;", "getHueDrawable", "()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvHueDrawable;", "hueDrawable", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;", "c", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;", "getAlphaDrawable", "()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;", "alphaDrawable", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;", "d", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;", "getAlphaMarkDrawable", "()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;", "alphaMarkDrawable", "Landroid/graphics/drawable/Drawable;", "screenPickerDrawable", "Landroid/graphics/drawable/Drawable;", "getScreenPickerDrawable", "()Landroid/graphics/drawable/Drawable;", "setScreenPickerDrawable", "(Landroid/graphics/drawable/Drawable;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ColorPanelView$drawables$1 {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final HsvPanelDrawable panelDrawable;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final HsvHueDrawable hueDrawable;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final HsvAlphaDrawable alphaDrawable;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final HsvAlphaMarkDrawable alphaMarkDrawable;
    public Drawable screenPickerDrawable;

    public ColorPanelView$drawables$1(ColorPanelView colorPanelView) {
        float[] fArr;
        float[] fArr2;
        fArr = colorPanelView.hsv;
        this.panelDrawable = new HsvPanelDrawable(fArr);
        this.hueDrawable = new HsvHueDrawable();
        fArr2 = colorPanelView.hsv;
        this.alphaDrawable = new HsvAlphaDrawable(fArr2);
        this.alphaMarkDrawable = new HsvAlphaMarkDrawable();
    }

    @NotNull
    public final HsvAlphaDrawable getAlphaDrawable() {
        return this.alphaDrawable;
    }

    @NotNull
    public final HsvAlphaMarkDrawable getAlphaMarkDrawable() {
        return this.alphaMarkDrawable;
    }

    @NotNull
    public final HsvHueDrawable getHueDrawable() {
        return this.hueDrawable;
    }

    @NotNull
    public final HsvPanelDrawable getPanelDrawable() {
        return this.panelDrawable;
    }

    @NotNull
    public final Drawable getScreenPickerDrawable() {
        Drawable drawable = this.screenPickerDrawable;
        if (drawable != null) {
            return drawable;
        }
        Intrinsics.throwUninitializedPropertyAccessException("screenPickerDrawable");
        return null;
    }

    public final void setScreenPickerDrawable(@NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "<set-?>");
        this.screenPickerDrawable = drawable;
    }
}
