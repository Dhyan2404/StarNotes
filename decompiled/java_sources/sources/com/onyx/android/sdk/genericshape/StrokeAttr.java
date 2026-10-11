package com.onyx.android.sdk.genericshape;

import com.onegravity.colorpicker.OpacityBar;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010!\u001a\u00020\u0000R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0019\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u000f\"\u0004\b\u001b\u0010\u0011R\u001a\u0010\u001c\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/StrokeAttr;", "", "()V", "color", "", "getColor", "()I", "setColor", "(I)V", "colorTransformMode", "getColorTransformMode", "setColorTransformMode", "enableColor", "", "getEnableColor", Constants.BOOLEAN_VALUE_SIG, "setEnableColor", "(Z)V", OpacityBar.f39917J, "", "getOpacity", "()Ljava/lang/Float;", "setOpacity", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "roundCorner", "getRoundCorner", "setRoundCorner", "width", "getWidth", "()F", "setWidth", "(F)V", "copy", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class StrokeAttr {
    private int colorTransformMode;

    @Nullable
    private Float opacity;
    private float width = 2.0f;
    private int color = -16777216;
    private boolean enableColor = true;
    private boolean roundCorner = true;

    @NotNull
    public final StrokeAttr copy() {
        StrokeAttr strokeAttr = new StrokeAttr();
        strokeAttr.width = this.width;
        strokeAttr.color = this.color;
        strokeAttr.enableColor = this.enableColor;
        strokeAttr.opacity = this.opacity;
        strokeAttr.colorTransformMode = this.colorTransformMode;
        strokeAttr.roundCorner = this.roundCorner;
        return strokeAttr;
    }

    public final int getColor() {
        return this.color;
    }

    public final int getColorTransformMode() {
        return this.colorTransformMode;
    }

    public final boolean getEnableColor() {
        return this.enableColor;
    }

    @Nullable
    public final Float getOpacity() {
        return this.opacity;
    }

    public final boolean getRoundCorner() {
        return this.roundCorner;
    }

    public final float getWidth() {
        return this.width;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setColorTransformMode(int i) {
        this.colorTransformMode = i;
    }

    public final void setEnableColor(boolean z) {
        this.enableColor = z;
    }

    public final void setOpacity(@Nullable Float f) {
        this.opacity = f;
    }

    public final void setRoundCorner(boolean z) {
        this.roundCorner = z;
    }

    public final void setWidth(float f) {
        this.width = f;
    }
}
