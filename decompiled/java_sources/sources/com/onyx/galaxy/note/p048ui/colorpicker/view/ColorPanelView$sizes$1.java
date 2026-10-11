package com.onyx.galaxy.note.p048ui.colorpicker.view;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0011\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\bH*\u0001\u0000\b\n\u0018\u00002\u00020\u0001R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR\"\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\"\u0010%\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0004\u001a\u0004\b#\u0010\u0006\"\u0004\b$\u0010\bR\"\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0004\u001a\u0004\b'\u0010\u0006\"\u0004\b(\u0010\bR\"\u0010-\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0004\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\"\u00101\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\u0004\u001a\u0004\b/\u0010\u0006\"\u0004\b0\u0010\bR\"\u00105\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010\u0004\u001a\u0004\b3\u0010\u0006\"\u0004\b4\u0010\bR\"\u00109\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010\u0004\u001a\u0004\b7\u0010\u0006\"\u0004\b8\u0010\bR\"\u0010=\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010\u0004\u001a\u0004\b;\u0010\u0006\"\u0004\b<\u0010\bR\"\u0010A\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u0010\u0004\u001a\u0004\b?\u0010\u0006\"\u0004\b@\u0010\bR\"\u0010E\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010\u0004\u001a\u0004\bC\u0010\u0006\"\u0004\bD\u0010\bR\"\u0010I\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010\u0004\u001a\u0004\bG\u0010\u0006\"\u0004\bH\u0010\b¨\u0006J"}, m61528d2 = {"com/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$sizes$1", "", "", "a", "F", "getViewWidth", "()F", "setViewWidth", "(F)V", "viewWidth", "b", "getViewHeight", "setViewHeight", "viewHeight", "c", "getBarHeight", "setBarHeight", "barHeight", "d", "getPickBlock", "setPickBlock", "pickBlock", "e", "getSlideBlock", "setSlideBlock", "slideBlock", C6997f.f39671c, "getSlideBlockShadowSize", "setSlideBlockShadowSize", "slideBlockShadowSize", C6998g.f39679a, "getScreenPicker", "setScreenPicker", "screenPicker", C6999h.f39688c, "getPickBlockStroke", "setPickBlockStroke", "pickBlockStroke", "i", "getSlideBlockStroke", "setSlideBlockStroke", "slideBlockStroke", "j", "getScreenPickerStroke", "setScreenPickerStroke", "screenPickerStroke", C4921e.f26537n, "getMinPanelX", "setMinPanelX", "minPanelX", "l", "getMaxPanelX", "setMaxPanelX", "maxPanelX", "m", "getMinPanelY", "setMinPanelY", "minPanelY", GoogleApiAvailabilityLight.f29016b, "getMaxPanelY", "setMaxPanelY", "maxPanelY", C4921e.f26528e, "getMinBarX", "setMinBarX", "minBarX", "p", "getMaxBarX", "setMaxBarX", "maxBarX", "q", "getCaptureIconPaddingPercent", "setCaptureIconPaddingPercent", "captureIconPaddingPercent", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ColorPanelView$sizes$1 {

    /* renamed from: a, reason: from kotlin metadata */
    public float viewWidth;

    /* renamed from: b, reason: from kotlin metadata */
    public float viewHeight;

    /* renamed from: c, reason: from kotlin metadata */
    public float barHeight;

    /* renamed from: d, reason: from kotlin metadata */
    public float pickBlock;

    /* renamed from: e, reason: from kotlin metadata */
    public float slideBlock;

    /* renamed from: f, reason: from kotlin metadata */
    public float slideBlockShadowSize;

    /* renamed from: g, reason: from kotlin metadata */
    public float screenPicker;

    /* renamed from: h, reason: from kotlin metadata */
    public float pickBlockStroke;

    /* renamed from: i, reason: from kotlin metadata */
    public float slideBlockStroke;

    /* renamed from: j, reason: from kotlin metadata */
    public float screenPickerStroke;

    /* renamed from: k, reason: from kotlin metadata */
    public float minPanelX;

    /* renamed from: l, reason: from kotlin metadata */
    public float maxPanelX;

    /* renamed from: m, reason: from kotlin metadata */
    public float minPanelY;

    /* renamed from: n, reason: from kotlin metadata */
    public float maxPanelY;

    /* renamed from: o, reason: from kotlin metadata */
    public float minBarX;

    /* renamed from: p, reason: from kotlin metadata */
    public float maxBarX;

    /* renamed from: q, reason: from kotlin metadata */
    public float captureIconPaddingPercent;

    public ColorPanelView$sizes$1() {
        ResManager resManager = ResManager.INSTANCE;
        this.slideBlockShadowSize = resManager.getDimension(C7384R.dimen.dp_2);
        this.captureIconPaddingPercent = resManager.getFraction(C10651R.fraction.capture_icon_padding_percent);
    }

    public final float getBarHeight() {
        return this.barHeight;
    }

    public final float getCaptureIconPaddingPercent() {
        return this.captureIconPaddingPercent;
    }

    public final float getMaxBarX() {
        return this.maxBarX;
    }

    public final float getMaxPanelX() {
        return this.maxPanelX;
    }

    public final float getMaxPanelY() {
        return this.maxPanelY;
    }

    public final float getMinBarX() {
        return this.minBarX;
    }

    public final float getMinPanelX() {
        return this.minPanelX;
    }

    public final float getMinPanelY() {
        return this.minPanelY;
    }

    public final float getPickBlock() {
        return this.pickBlock;
    }

    public final float getPickBlockStroke() {
        return this.pickBlockStroke;
    }

    public final float getScreenPicker() {
        return this.screenPicker;
    }

    public final float getScreenPickerStroke() {
        return this.screenPickerStroke;
    }

    public final float getSlideBlock() {
        return this.slideBlock;
    }

    public final float getSlideBlockShadowSize() {
        return this.slideBlockShadowSize;
    }

    public final float getSlideBlockStroke() {
        return this.slideBlockStroke;
    }

    public final float getViewHeight() {
        return this.viewHeight;
    }

    public final float getViewWidth() {
        return this.viewWidth;
    }

    public final void setBarHeight(float f) {
        this.barHeight = f;
    }

    public final void setCaptureIconPaddingPercent(float f) {
        this.captureIconPaddingPercent = f;
    }

    public final void setMaxBarX(float f) {
        this.maxBarX = f;
    }

    public final void setMaxPanelX(float f) {
        this.maxPanelX = f;
    }

    public final void setMaxPanelY(float f) {
        this.maxPanelY = f;
    }

    public final void setMinBarX(float f) {
        this.minBarX = f;
    }

    public final void setMinPanelX(float f) {
        this.minPanelX = f;
    }

    public final void setMinPanelY(float f) {
        this.minPanelY = f;
    }

    public final void setPickBlock(float f) {
        this.pickBlock = f;
    }

    public final void setPickBlockStroke(float f) {
        this.pickBlockStroke = f;
    }

    public final void setScreenPicker(float f) {
        this.screenPicker = f;
    }

    public final void setScreenPickerStroke(float f) {
        this.screenPickerStroke = f;
    }

    public final void setSlideBlock(float f) {
        this.slideBlock = f;
    }

    public final void setSlideBlockShadowSize(float f) {
        this.slideBlockShadowSize = f;
    }

    public final void setSlideBlockStroke(float f) {
        this.slideBlockStroke = f;
    }

    public final void setViewHeight(float f) {
        this.viewHeight = f;
    }

    public final void setViewWidth(float f) {
        this.viewWidth = f;
    }
}
