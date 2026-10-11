package com.onyx.galaxy.note.p048ui.colorpicker.view;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0011\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b$*\u0001\u0000\b\n\u0018\u00002\u00020\u0001R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR\"\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\"\u0010%\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0004\u001a\u0004\b#\u0010\u0006\"\u0004\b$\u0010\b¨\u0006&"}, m61528d2 = {"com/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$bounds$1", "", "Landroid/graphics/RectF;", "a", "Landroid/graphics/RectF;", "getColorPanel", "()Landroid/graphics/RectF;", "setColorPanel", "(Landroid/graphics/RectF;)V", "colorPanel", "b", "getHueSlideBar", "setHueSlideBar", "hueSlideBar", "c", "getAlphaSlideBar", "setAlphaSlideBar", "alphaSlideBar", "d", "getPickBlock", "setPickBlock", "pickBlock", "e", "getHueSlideBlock", "setHueSlideBlock", "hueSlideBlock", C6997f.f39671c, "getAlphaSlideBlock", "setAlphaSlideBlock", "alphaSlideBlock", C6998g.f39679a, "getScreenPicker", "setScreenPicker", "screenPicker", C6999h.f39688c, "getScreenPickerIcon", "setScreenPickerIcon", "screenPickerIcon", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ColorPanelView$bounds$1 {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public RectF colorPanel = new RectF();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public RectF hueSlideBar = new RectF();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public RectF alphaSlideBar = new RectF();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public RectF pickBlock = new RectF();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public RectF hueSlideBlock = new RectF();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public RectF alphaSlideBlock = new RectF();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public RectF screenPicker = new RectF();

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public RectF screenPickerIcon = new RectF();

    @NotNull
    public final RectF getAlphaSlideBar() {
        return this.alphaSlideBar;
    }

    @NotNull
    public final RectF getAlphaSlideBlock() {
        return this.alphaSlideBlock;
    }

    @NotNull
    public final RectF getColorPanel() {
        return this.colorPanel;
    }

    @NotNull
    public final RectF getHueSlideBar() {
        return this.hueSlideBar;
    }

    @NotNull
    public final RectF getHueSlideBlock() {
        return this.hueSlideBlock;
    }

    @NotNull
    public final RectF getPickBlock() {
        return this.pickBlock;
    }

    @NotNull
    public final RectF getScreenPicker() {
        return this.screenPicker;
    }

    @NotNull
    public final RectF getScreenPickerIcon() {
        return this.screenPickerIcon;
    }

    public final void setAlphaSlideBar(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.alphaSlideBar = rectF;
    }

    public final void setAlphaSlideBlock(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.alphaSlideBlock = rectF;
    }

    public final void setColorPanel(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.colorPanel = rectF;
    }

    public final void setHueSlideBar(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.hueSlideBar = rectF;
    }

    public final void setHueSlideBlock(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.hueSlideBlock = rectF;
    }

    public final void setPickBlock(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.pickBlock = rectF;
    }

    public final void setScreenPicker(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.screenPicker = rectF;
    }

    public final void setScreenPickerIcon(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.screenPickerIcon = rectF;
    }
}
