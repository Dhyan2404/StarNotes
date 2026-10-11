package com.canhub.cropper;

import android.graphics.RectF;
import com.canhub.cropper.CropImageView;
import com.canhub.cropper.CropWindowMoveHandler;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b+\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bP\u0010QJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\u0016\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bJ\u0016\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bJ&\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004J\u000e\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u0002J\u0006\u0010\u001e\u001a\u00020\u001dJ0\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u001dJ*\u0010(\u001a\u0004\u0018\u00010'2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u001dH\u0002J\"\u0010)\u001a\u0004\u0018\u00010'2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u001dH\u0002J*\u0010*\u001a\u0004\u0018\u00010'2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u001dH\u0002J*\u0010+\u001a\u0004\u0018\u00010'2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u001dH\u0002J0\u0010.\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0002J(\u00103\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u00042\u0006\u00102\u001a\u00020\u0004H\u0002J8\u00106\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u00104\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0002J8\u00109\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u00042\u0006\u00108\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0002J8\u0010>\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u00042\u0006\u0010;\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\u00042\u0006\u0010=\u001a\u00020\u0004H\u0002J\b\u0010?\u001a\u00020\u001dH\u0002R\u0014\u0010A\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u0010@R\u0014\u0010B\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010D\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010CR\u0016\u0010E\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010CR\u0016\u0010F\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010CR\u0016\u0010G\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010CR\u0016\u0010H\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010CR\u0016\u0010I\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010CR\u0016\u0010J\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u0010CR\u0016\u0010K\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010CR\u0016\u0010M\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010CR\u0016\u0010O\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010C¨\u0006R"}, m61528d2 = {"Lcom/canhub/cropper/CropWindowHandler;", "", "Landroid/graphics/RectF;", "getRect", "", "getMinCropWidth", "getMinCropHeight", "getMaxCropWidth", "getMaxCropHeight", "getScaleFactorWidth", "getScaleFactorHeight", "", "minCropResultWidth", "minCropResultHeight", "", "setMinCropResultSize", "maxCropResultWidth", "maxCropResultHeight", "setMaxCropResultSize", "maxWidth", "maxHeight", "scaleFactorWidth", "scaleFactorHeight", "setCropWindowLimits", "Lcom/canhub/cropper/CropImageOptions;", "options", "setInitialAttributeValues", "rect", "setRect", "", "showGuidelines", "x", "y", "targetRadius", "Lcom/canhub/cropper/CropImageView$CropShape;", "cropShape", "isCenterMoveEnabled", "Lcom/canhub/cropper/CropWindowMoveHandler;", "getMoveHandler", "Lcom/canhub/cropper/CropWindowMoveHandler$Type;", "e", "c", C6997f.f39671c, "d", "handleX", "handleY", C6999h.f39688c, "x1", "y1", "x2", "y2", "a", "handleXStart", "handleXEnd", "i", "handleYStart", "handleYEnd", "j", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", C6998g.f39679a, "b", "Landroid/graphics/RectF;", "mEdges", "mGetEdges", "F", "mMinCropWindowWidth", "mMinCropWindowHeight", "mMaxCropWindowWidth", "mMaxCropWindowHeight", "mMinCropResultWidth", "mMinCropResultHeight", "mMaxCropResultWidth", "mMaxCropResultHeight", C4921e.f26537n, "mScaleFactorWidth", "l", "mScaleFactorHeight", Constants.CONSTRUCTOR_NAME, "()V", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class CropWindowHandler {

    /* renamed from: c, reason: from kotlin metadata */
    public float mMinCropWindowWidth;

    /* renamed from: d, reason: from kotlin metadata */
    public float mMinCropWindowHeight;

    /* renamed from: e, reason: from kotlin metadata */
    public float mMaxCropWindowWidth;

    /* renamed from: f, reason: from kotlin metadata */
    public float mMaxCropWindowHeight;

    /* renamed from: g, reason: from kotlin metadata */
    public float mMinCropResultWidth;

    /* renamed from: h, reason: from kotlin metadata */
    public float mMinCropResultHeight;

    /* renamed from: i, reason: from kotlin metadata */
    public float mMaxCropResultWidth;

    /* renamed from: j, reason: from kotlin metadata */
    public float mMaxCropResultHeight;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RectF mEdges = new RectF();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RectF mGetEdges = new RectF();

    /* renamed from: k, reason: from kotlin metadata */
    public float mScaleFactorWidth = 1.0f;

    /* renamed from: l, reason: from kotlin metadata */
    public float mScaleFactorHeight = 1.0f;

    @Metadata(m61529k = 3, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CropImageView.CropShape.values().length];
            try {
                iArr[CropImageView.CropShape.RECTANGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CropImageView.CropShape.OVAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CropImageView.CropShape.RECTANGLE_VERTICAL_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CropImageView.CropShape.RECTANGLE_HORIZONTAL_ONLY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: a */
    public final float m9268a(float x1, float y1, float x2, float y2) {
        return Math.max(Math.abs(x1 - x2), Math.abs(y1 - y2));
    }

    /* renamed from: b */
    public final boolean m9269b() {
        return !showGuidelines();
    }

    /* renamed from: c */
    public final CropWindowMoveHandler.Type m9270c(float x, float y, boolean isCenterMoveEnabled) {
        float f = 6;
        float width = this.mEdges.width() / f;
        RectF rectF = this.mEdges;
        float f2 = rectF.left;
        float f3 = f2 + width;
        float f4 = 5;
        float f5 = f2 + (width * f4);
        float height = rectF.height() / f;
        float f6 = this.mEdges.top;
        float f7 = f6 + height;
        float f8 = f6 + (f4 * height);
        if (x < f3) {
            return y < f7 ? CropWindowMoveHandler.Type.TOP_LEFT : y < f8 ? CropWindowMoveHandler.Type.LEFT : CropWindowMoveHandler.Type.BOTTOM_LEFT;
        }
        if (x >= f5) {
            return y < f7 ? CropWindowMoveHandler.Type.TOP_RIGHT : y < f8 ? CropWindowMoveHandler.Type.RIGHT : CropWindowMoveHandler.Type.BOTTOM_RIGHT;
        }
        if (y < f7) {
            return CropWindowMoveHandler.Type.TOP;
        }
        if (y >= f8) {
            return CropWindowMoveHandler.Type.BOTTOM;
        }
        if (isCenterMoveEnabled) {
            return CropWindowMoveHandler.Type.CENTER;
        }
        return null;
    }

    /* renamed from: d */
    public final CropWindowMoveHandler.Type m9271d(float x, float y, float targetRadius, boolean isCenterMoveEnabled) {
        RectF rectF = this.mEdges;
        if (m9268a(x, y, rectF.left, rectF.centerY()) <= targetRadius) {
            return CropWindowMoveHandler.Type.LEFT;
        }
        RectF rectF2 = this.mEdges;
        if (m9268a(x, y, rectF2.right, rectF2.centerY()) <= targetRadius) {
            return CropWindowMoveHandler.Type.RIGHT;
        }
        if (isCenterMoveEnabled) {
            RectF rectF3 = this.mEdges;
            if (m9274g(x, y, rectF3.left, rectF3.top, rectF3.right, rectF3.bottom)) {
                return CropWindowMoveHandler.Type.CENTER;
            }
        }
        return m9270c(x, y, isCenterMoveEnabled);
    }

    /* renamed from: e */
    public final CropWindowMoveHandler.Type m9272e(float x, float y, float targetRadius, boolean isCenterMoveEnabled) {
        RectF rectF = this.mEdges;
        if (m9275h(x, y, rectF.left, rectF.top, targetRadius)) {
            return CropWindowMoveHandler.Type.TOP_LEFT;
        }
        RectF rectF2 = this.mEdges;
        if (m9275h(x, y, rectF2.right, rectF2.top, targetRadius)) {
            return CropWindowMoveHandler.Type.TOP_RIGHT;
        }
        RectF rectF3 = this.mEdges;
        if (m9275h(x, y, rectF3.left, rectF3.bottom, targetRadius)) {
            return CropWindowMoveHandler.Type.BOTTOM_LEFT;
        }
        RectF rectF4 = this.mEdges;
        if (m9275h(x, y, rectF4.right, rectF4.bottom, targetRadius)) {
            return CropWindowMoveHandler.Type.BOTTOM_RIGHT;
        }
        if (isCenterMoveEnabled) {
            RectF rectF5 = this.mEdges;
            if (m9274g(x, y, rectF5.left, rectF5.top, rectF5.right, rectF5.bottom) && m9269b()) {
                return CropWindowMoveHandler.Type.CENTER;
            }
        }
        RectF rectF6 = this.mEdges;
        if (m9276i(x, y, rectF6.left, rectF6.right, rectF6.top, targetRadius)) {
            return CropWindowMoveHandler.Type.TOP;
        }
        RectF rectF7 = this.mEdges;
        if (m9276i(x, y, rectF7.left, rectF7.right, rectF7.bottom, targetRadius)) {
            return CropWindowMoveHandler.Type.BOTTOM;
        }
        RectF rectF8 = this.mEdges;
        if (m9277j(x, y, rectF8.left, rectF8.top, rectF8.bottom, targetRadius)) {
            return CropWindowMoveHandler.Type.LEFT;
        }
        RectF rectF9 = this.mEdges;
        if (m9277j(x, y, rectF9.right, rectF9.top, rectF9.bottom, targetRadius)) {
            return CropWindowMoveHandler.Type.RIGHT;
        }
        if (isCenterMoveEnabled) {
            RectF rectF10 = this.mEdges;
            if (m9274g(x, y, rectF10.left, rectF10.top, rectF10.right, rectF10.bottom) && !m9269b()) {
                return CropWindowMoveHandler.Type.CENTER;
            }
        }
        return m9270c(x, y, isCenterMoveEnabled);
    }

    /* renamed from: f */
    public final CropWindowMoveHandler.Type m9273f(float x, float y, float targetRadius, boolean isCenterMoveEnabled) {
        if (m9268a(x, y, this.mEdges.centerX(), this.mEdges.top) <= targetRadius) {
            return CropWindowMoveHandler.Type.TOP;
        }
        if (m9268a(x, y, this.mEdges.centerX(), this.mEdges.bottom) <= targetRadius) {
            return CropWindowMoveHandler.Type.BOTTOM;
        }
        if (isCenterMoveEnabled) {
            RectF rectF = this.mEdges;
            if (m9274g(x, y, rectF.left, rectF.top, rectF.right, rectF.bottom)) {
                return CropWindowMoveHandler.Type.CENTER;
            }
        }
        return m9270c(x, y, isCenterMoveEnabled);
    }

    /* renamed from: g */
    public final boolean m9274g(float x, float y, float left, float top, float right, float bottom) {
        return x > left && x < right && y > top && y < bottom;
    }

    public final float getMaxCropHeight() {
        float coerceAtMost;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(this.mMaxCropWindowHeight, this.mMaxCropResultHeight / this.mScaleFactorHeight);
        return coerceAtMost;
    }

    public final float getMaxCropWidth() {
        float coerceAtMost;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(this.mMaxCropWindowWidth, this.mMaxCropResultWidth / this.mScaleFactorWidth);
        return coerceAtMost;
    }

    public final float getMinCropHeight() {
        float coerceAtLeast;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(this.mMinCropWindowHeight, this.mMinCropResultHeight / this.mScaleFactorHeight);
        return coerceAtLeast;
    }

    public final float getMinCropWidth() {
        float coerceAtLeast;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(this.mMinCropWindowWidth, this.mMinCropResultWidth / this.mScaleFactorWidth);
        return coerceAtLeast;
    }

    @Nullable
    public final CropWindowMoveHandler getMoveHandler(float x, float y, float targetRadius, @NotNull CropImageView.CropShape cropShape, boolean isCenterMoveEnabled) {
        CropWindowMoveHandler.Type m9272e;
        Intrinsics.checkNotNullParameter(cropShape, "cropShape");
        int i = WhenMappings.$EnumSwitchMapping$0[cropShape.ordinal()];
        if (i == 1) {
            m9272e = m9272e(x, y, targetRadius, isCenterMoveEnabled);
        } else if (i == 2) {
            m9272e = m9270c(x, y, isCenterMoveEnabled);
        } else if (i == 3) {
            m9272e = m9273f(x, y, targetRadius, isCenterMoveEnabled);
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            m9272e = m9271d(x, y, targetRadius, isCenterMoveEnabled);
        }
        if (m9272e != null) {
            return new CropWindowMoveHandler(m9272e, this, x, y);
        }
        return null;
    }

    @NotNull
    public final RectF getRect() {
        this.mGetEdges.set(this.mEdges);
        return this.mGetEdges;
    }

    /* renamed from: getScaleFactorHeight, reason: from getter */
    public final float getMScaleFactorHeight() {
        return this.mScaleFactorHeight;
    }

    /* renamed from: getScaleFactorWidth, reason: from getter */
    public final float getMScaleFactorWidth() {
        return this.mScaleFactorWidth;
    }

    /* renamed from: h */
    public final boolean m9275h(float x, float y, float handleX, float handleY, float targetRadius) {
        return m9268a(x, y, handleX, handleY) <= targetRadius;
    }

    /* renamed from: i */
    public final boolean m9276i(float x, float y, float handleXStart, float handleXEnd, float handleY, float targetRadius) {
        return x > handleXStart && x < handleXEnd && Math.abs(y - handleY) <= targetRadius;
    }

    /* renamed from: j */
    public final boolean m9277j(float x, float y, float handleX, float handleYStart, float handleYEnd, float targetRadius) {
        return Math.abs(x - handleX) <= targetRadius && y > handleYStart && y < handleYEnd;
    }

    public final void setCropWindowLimits(float maxWidth, float maxHeight, float scaleFactorWidth, float scaleFactorHeight) {
        this.mMaxCropWindowWidth = maxWidth;
        this.mMaxCropWindowHeight = maxHeight;
        this.mScaleFactorWidth = scaleFactorWidth;
        this.mScaleFactorHeight = scaleFactorHeight;
    }

    public final void setInitialAttributeValues(@NotNull CropImageOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        this.mMinCropWindowWidth = options.minCropWindowWidth;
        this.mMinCropWindowHeight = options.minCropWindowHeight;
        this.mMinCropResultWidth = options.minCropResultWidth;
        this.mMinCropResultHeight = options.minCropResultHeight;
        this.mMaxCropResultWidth = options.maxCropResultWidth;
        this.mMaxCropResultHeight = options.maxCropResultHeight;
    }

    public final void setMaxCropResultSize(int maxCropResultWidth, int maxCropResultHeight) {
        this.mMaxCropResultWidth = maxCropResultWidth;
        this.mMaxCropResultHeight = maxCropResultHeight;
    }

    public final void setMinCropResultSize(int minCropResultWidth, int minCropResultHeight) {
        this.mMinCropResultWidth = minCropResultWidth;
        this.mMinCropResultHeight = minCropResultHeight;
    }

    public final void setRect(@NotNull RectF rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.mEdges.set(rect);
    }

    public final boolean showGuidelines() {
        return this.mEdges.width() >= 100.0f && this.mEdges.height() >= 100.0f;
    }
}
