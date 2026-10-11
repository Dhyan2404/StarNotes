package com.onyx.android.sdk.hwr.data.bean;

import android.graphics.PointF;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\f\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fR\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u001a\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0011\u001a\u0004\b\u0018\u0010\u0013\"\u0004\b\u0019\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0011\u001a\u0004\b\u001c\u0010\u0013\"\u0004\b\u001d\u0010\u0015¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;", "", "", "x", "convertXToPageCoordinates", "y", "convertYToPageCoordinates", "convertXToScreenCoordinates", "convertYToScreenCoordinates", "Landroid/graphics/PointF;", "pointF", "convertToPageCoordinates", "convertToScreenCoordinates", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "input", "Landroid/graphics/RectF;", "a", "F", "getPageScale", "()F", "setPageScale", "(F)V", "pageScale", "b", "getOffsetX", "setOffsetX", "offsetX", "c", "getOffsetY", "setOffsetY", "offsetY", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PageViewport {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    public float pageScale = 1.0f;

    /* renamed from: b, reason: from kotlin metadata */
    public float offsetX;

    /* renamed from: c, reason: from kotlin metadata */
    public float offsetY;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/PageViewport$Companion;", "", "()V", "createByNormalizeScale", "Lcom/onyx/android/sdk/hwr/data/bean/PageViewport;", "normalizeScale", "", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PageViewport createByNormalizeScale(float normalizeScale) {
            PageViewport pageViewport = new PageViewport();
            pageViewport.setPageScale(1 / normalizeScale);
            pageViewport.setOffsetX(0.0f);
            pageViewport.setOffsetY(0.0f);
            return pageViewport;
        }

        public Companion() {
        }
    }

    @NotNull
    public final PointF convertToPageCoordinates(@NotNull PointF pointF) {
        Intrinsics.checkNotNullParameter(pointF, "pointF");
        return new PointF(convertXToPageCoordinates(pointF.x), convertYToPageCoordinates(pointF.y));
    }

    @NotNull
    public final PointF convertToScreenCoordinates(@NotNull PointF pointF) {
        Intrinsics.checkNotNullParameter(pointF, "pointF");
        return new PointF(convertXToScreenCoordinates(pointF.x), convertYToScreenCoordinates(pointF.y));
    }

    public final float convertXToPageCoordinates(float x) {
        return (x - this.offsetX) / this.pageScale;
    }

    public final float convertXToScreenCoordinates(float x) {
        return (x * this.pageScale) + this.offsetX;
    }

    public final float convertYToPageCoordinates(float y) {
        return (y - this.offsetY) / this.pageScale;
    }

    public final float convertYToScreenCoordinates(float y) {
        return (y * this.pageScale) + this.offsetY;
    }

    public final float getOffsetX() {
        return this.offsetX;
    }

    public final float getOffsetY() {
        return this.offsetY;
    }

    public final float getPageScale() {
        return this.pageScale;
    }

    public final void setOffsetX(float f) {
        this.offsetX = f;
    }

    public final void setOffsetY(float f) {
        this.offsetY = f;
    }

    public final void setPageScale(float f) {
        this.pageScale = f;
    }

    @NotNull
    public final TouchPoint convertToPageCoordinates(@NotNull TouchPoint input) {
        Intrinsics.checkNotNullParameter(input, "input");
        TouchPoint touchPoint = new TouchPoint(input);
        touchPoint.setX(convertXToPageCoordinates(input.getX()));
        touchPoint.setY(convertYToPageCoordinates(input.getY()));
        return touchPoint;
    }

    @NotNull
    public final TouchPoint convertToScreenCoordinates(@NotNull TouchPoint input) {
        Intrinsics.checkNotNullParameter(input, "input");
        TouchPoint touchPoint = new TouchPoint(input);
        touchPoint.setX(convertXToScreenCoordinates(input.getX()));
        touchPoint.setY(convertYToScreenCoordinates(input.getY()));
        return touchPoint;
    }

    @NotNull
    public final RectF convertToPageCoordinates(@NotNull RectF input) {
        Intrinsics.checkNotNullParameter(input, "input");
        RectF rectF = new RectF();
        rectF.left = convertXToPageCoordinates(input.left);
        rectF.top = convertYToPageCoordinates(input.top);
        rectF.right = convertXToPageCoordinates(input.right);
        rectF.bottom = convertYToPageCoordinates(input.bottom);
        return rectF;
    }

    @NotNull
    public final RectF convertToScreenCoordinates(@NotNull RectF input) {
        Intrinsics.checkNotNullParameter(input, "input");
        RectF rectF = new RectF();
        rectF.left = convertXToScreenCoordinates(input.left);
        rectF.top = convertYToScreenCoordinates(input.top);
        rectF.right = convertXToScreenCoordinates(input.right);
        rectF.bottom = convertYToScreenCoordinates(input.bottom);
        return rectF;
    }
}
