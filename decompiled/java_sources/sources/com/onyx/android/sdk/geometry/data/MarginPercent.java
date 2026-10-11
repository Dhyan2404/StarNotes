package com.onyx.android.sdk.geometry.data;

import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0012\u001a\u00020\u0000J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004J\u000e\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u001dR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "", "()V", "bottom", "", "getBottom", "()F", "setBottom", "(F)V", "left", "getLeft", "setLeft", gon.f71288n0, "getRight", "setRight", OneDriverConstants.TOP, "getTop", "setTop", "copy", "hasMargin", "", "rotate", "", "degrees", "", "rotated", "toMarginPixel", "Lcom/onyx/android/sdk/geometry/data/MarginPixel;", "rectF", "Landroid/graphics/RectF;", "width", "height", "toRectFWithMargin", "originRectF", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nMargin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Margin.kt\ncom/onyx/android/sdk/geometry/data/MarginPercent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,131:1\n1#2:132\n*E\n"})
/* loaded from: classes7.dex */
public final class MarginPercent {
    private float bottom;
    private float left;
    private float right;
    private float top;

    @NotNull
    public final MarginPercent copy() {
        MarginPercent marginPercent = new MarginPercent();
        marginPercent.left = this.left;
        marginPercent.top = this.top;
        marginPercent.right = this.right;
        marginPercent.bottom = this.bottom;
        return marginPercent;
    }

    public final float getBottom() {
        return this.bottom;
    }

    public final float getLeft() {
        return this.left;
    }

    public final float getRight() {
        return this.right;
    }

    public final float getTop() {
        return this.top;
    }

    public final boolean hasMargin() {
        if (!(this.left == 0.0f)) {
            return true;
        }
        if (!(this.top == 0.0f)) {
            return true;
        }
        if (this.right == 0.0f) {
            return !((this.bottom > 0.0f ? 1 : (this.bottom == 0.0f ? 0 : -1)) == 0);
        }
        return true;
    }

    public final void rotate(int degrees) {
        int i = (((degrees % 360) + 360) % 360) / 90;
        for (int i2 = 0; i2 < i; i2++) {
            float f = this.left;
            this.left = this.bottom;
            this.bottom = this.right;
            this.right = this.top;
            this.top = f;
        }
    }

    @NotNull
    public final MarginPercent rotated(int degrees) {
        MarginPercent copy = copy();
        copy.rotate(degrees);
        return copy;
    }

    public final void setBottom(float f) {
        this.bottom = f;
    }

    public final void setLeft(float f) {
        this.left = f;
    }

    public final void setRight(float f) {
        this.right = f;
    }

    public final void setTop(float f) {
        this.top = f;
    }

    @NotNull
    public final MarginPixel toMarginPixel(float width, float height) {
        MarginPixel marginPixel = new MarginPixel();
        ((RectF) marginPixel).left = this.left * width;
        ((RectF) marginPixel).top = this.top * height;
        ((RectF) marginPixel).right = this.right * width;
        ((RectF) marginPixel).bottom = this.bottom * height;
        return marginPixel;
    }

    @NotNull
    public final RectF toRectFWithMargin(@NotNull RectF originRectF) {
        Intrinsics.checkNotNullParameter(originRectF, "originRectF");
        MarginPixel marginPixel = toMarginPixel(originRectF);
        RectF copy = RectFKt.copy(originRectF);
        copy.left -= ((RectF) marginPixel).left;
        copy.top -= ((RectF) marginPixel).top;
        copy.right += ((RectF) marginPixel).right;
        copy.bottom += ((RectF) marginPixel).bottom;
        if (RectKt.isEmptyInDocument$default(copy, 0.0f, 1, null)) {
            copy.set(originRectF);
            Debug.INSTANCE.m32037d("toRectFWithMargin expected not empty, reset");
        }
        return copy;
    }

    @NotNull
    public final MarginPixel toMarginPixel(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        return toMarginPixel(rectF.width(), rectF.height());
    }
}
