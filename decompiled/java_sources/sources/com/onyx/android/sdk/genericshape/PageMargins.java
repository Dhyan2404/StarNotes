package com.onyx.android.sdk.genericshape;

import android.graphics.RectF;
import com.onyx.android.sdk.data.common.cloud.Constant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0014\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\nJ\u0006\u0010!\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000eR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\f\"\u0004\b\u001d\u0010\u000e¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/PageMargins;", "", "()V", "layoutRect", "Landroid/graphics/RectF;", "getLayoutRect", "()Landroid/graphics/RectF;", "setLayoutRect", "(Landroid/graphics/RectF;)V", "paddingBottom", "", "getPaddingBottom", "()F", "setPaddingBottom", "(F)V", "paddingLeft", "getPaddingLeft", "setPaddingLeft", "paddingRight", "getPaddingRight", "setPaddingRight", "paddingTop", "getPaddingTop", "setPaddingTop", "pagePaddingRect", "getPagePaddingRect", "setPagePaddingRect", "spacing", "getSpacing", "setSpacing", "applyPadding", "", Constant.PADDING_TAG, "loadContentRect", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PageMargins {
    private float paddingBottom;
    private float paddingLeft;
    private float paddingRight;
    private float paddingTop;

    @NotNull
    private RectF layoutRect = new RectF();

    @NotNull
    private RectF pagePaddingRect = new RectF();
    private float spacing = 10.0f;

    public final void applyPadding(float padding) {
        this.paddingLeft = padding;
        this.paddingTop = padding;
        this.paddingRight = padding;
        this.paddingBottom = padding;
    }

    @NotNull
    public final RectF getLayoutRect() {
        return this.layoutRect;
    }

    public final float getPaddingBottom() {
        return this.paddingBottom;
    }

    public final float getPaddingLeft() {
        return this.paddingLeft;
    }

    public final float getPaddingRight() {
        return this.paddingRight;
    }

    public final float getPaddingTop() {
        return this.paddingTop;
    }

    @NotNull
    public final RectF getPagePaddingRect() {
        return this.pagePaddingRect;
    }

    public final float getSpacing() {
        return this.spacing;
    }

    @NotNull
    public final RectF loadContentRect() {
        RectF rectF = new RectF(this.layoutRect);
        rectF.left += this.paddingLeft;
        rectF.top += this.paddingTop;
        rectF.right -= this.paddingRight;
        rectF.bottom -= this.paddingBottom;
        return rectF;
    }

    public final void setLayoutRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.layoutRect = rectF;
    }

    public final void setPaddingBottom(float f) {
        this.paddingBottom = f;
    }

    public final void setPaddingLeft(float f) {
        this.paddingLeft = f;
    }

    public final void setPaddingRight(float f) {
        this.paddingRight = f;
    }

    public final void setPaddingTop(float f) {
        this.paddingTop = f;
    }

    public final void setPagePaddingRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.pagePaddingRect = rectF;
    }

    public final void setSpacing(float f) {
        this.spacing = f;
    }
}
