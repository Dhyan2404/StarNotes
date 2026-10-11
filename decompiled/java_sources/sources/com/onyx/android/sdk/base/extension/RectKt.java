package com.onyx.android.sdk.base.extension;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.MotionEvent;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.SizeF;
import com.onyx.android.sdk.base.lite.extension.RectFKt;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt__RangesKt;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0004\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0000\u001a\u00020\u0003*\u00020\u0004\u001a\u001a\u0010\u0005\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\t*\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004\u001a\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r\u001a\u0012\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\r\u001a*\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r\u001a\u0012\u0010\u000f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0003\u001a\u001a\u0010\u000f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0003\u001a*\u0010\u000f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0003\u001a\n\u0010\u001b\u001a\u00020\u0003*\u00020\u0004\u001a\n\u0010\u001c\u001a\u00020\u001d*\u00020\u0004\u001a\"\u0010\u001e\u001a\u00020\u001f*\u00020\u00042\u0006\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0003\u001a\u0012\u0010#\u001a\u00020$*\u00020\u00042\u0006\u0010%\u001a\u00020\u0004\u001a\u0014\u0010&\u001a\u0004\u0018\u00010\u0004*\u00020\u00042\u0006\u0010'\u001a\u00020\u0004\u001a\u0014\u0010(\u001a\u00020\u001f*\u00020\u00042\b\b\u0002\u0010)\u001a\u00020\u0003\u001a\u0014\u0010*\u001a\u00020\u001f*\u00020\u00042\b\b\u0002\u0010)\u001a\u00020\u0003\u001a\n\u0010+\u001a\u00020\u001f*\u00020\u0004\u001a\n\u0010,\u001a\u00020\u001f*\u00020\u0004\u001a\u001d\u0010-\u001a\u00020\u001f*\u0004\u0018\u00010\u0002\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a\u001d\u0010-\u001a\u00020\u001f*\u0004\u0018\u00010\u0004\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a\n\u0010.\u001a\u00020\u001f*\u00020\u0004\u001a\n\u0010/\u001a\u00020\u0003*\u00020\u0004\u001a\n\u00100\u001a\u00020$*\u00020\u0004\u001a\f\u00101\u001a\u00020\u0004*\u0004\u0018\u00010\u0004\u001a\n\u00102\u001a\u00020\u0001*\u00020\u0004\u001a\n\u00103\u001a\u00020\u0001*\u00020\u0004\u001a\n\u00104\u001a\u00020\u0001*\u00020\u0004\u001a\n\u00105\u001a\u00020\u0003*\u00020\u0004\u001a\u0010\u00106\u001a\b\u0012\u0004\u0012\u00020\u000307*\u00020\u0004\u001a\u0010\u00108\u001a\b\u0012\u0004\u0012\u00020\u000307*\u00020\u0004\u001a.\u00109\u001a&\u0012\f\u0012\n ;*\u0004\u0018\u00010\u00030\u0003 ;*\u0012\u0012\f\u0012\n ;*\u0004\u0018\u00010\u00030\u0003\u0018\u00010:0:*\u00020\u0004\u001a.\u0010<\u001a&\u0012\f\u0012\n ;*\u0004\u0018\u00010\u00030\u0003 ;*\u0012\u0012\f\u0012\n ;*\u0004\u0018\u00010\u00030\u0003\u0018\u00010:0:*\u00020\u0004\u001a\u000e\u0010=\u001a\u0004\u0018\u00010\u0002*\u0004\u0018\u00010\u0004\u001a\u000e\u0010>\u001a\u0004\u0018\u00010\u0004*\u0004\u0018\u00010\u0002\u001a\n\u0010?\u001a\u00020\u0002*\u00020\u0004\u001a\n\u0010@\u001a\u00020A*\u00020\u0004\u001a\n\u0010B\u001a\u00020C*\u00020\u0004\u001a\n\u0010D\u001a\u00020\u0004*\u00020\u0004\u001a\u0014\u0010E\u001a\u00020\u001f*\u00020\u00022\b\u0010F\u001a\u0004\u0018\u00010G¨\u0006H"}, m61528d2 = {"area", "", "Landroid/graphics/Rect;", "", "Landroid/graphics/RectF;", "copyAndOffset", "dx", "dy", "createRectanglesWithHole", "", "smallRectF", "ensureMinimumSize", "minWidth", "", "minHeight", "expand", "value", "l", "r", "t", "b", "paddingLeftRight", "paddingTopBottom", "paddingLeft", "paddingTop", "paddingRight", "paddingBottom", "getAspectRatio", "getOrientation", "Lcom/onyx/android/sdk/base/data/Orientation;", "hitTest", "", "x", "y", Constant.PADDING_TAG, "inset", "", "rectF", "intersectRectF", "r2", "isEmptyInDocument", "epsilon", "isEmptyOnScreen", "isLandscape", "isNaN", "isNullOrEmpty", "isPortrait", "longerSize", "offsetToLeftTopFloor", "orEmpty", "roundArea", "roundHeight", "roundWidth", "shorterSize", "toClosedRangeX", "Lkotlin/ranges/ClosedFloatingPointRange;", "toClosedRangeY", "toRangeX", "Lorg/apache/commons/lang3/Range;", "kotlin.jvm.PlatformType", "toRangeY", "toRect", "toRectF", "toRectNonNull", "toSize", "Lcom/onyx/android/sdk/base/data/Size;", "toSizeF", "Lcom/onyx/android/sdk/base/data/SizeF;", "toZeroOriginRoundRectF", "touchDownOutside", "ev", "Landroid/view/MotionEvent;", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nRect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Rect.kt\ncom/onyx/android/sdk/base/extension/RectKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,230:1\n766#2:231\n857#2,2:232\n1#3:234\n*S KotlinDebug\n*F\n+ 1 Rect.kt\ncom/onyx/android/sdk/base/extension/RectKt\n*L\n198#1:231\n198#1:232,2\n*E\n"})
/* loaded from: classes7.dex */
public final class RectKt {
    public static final int area(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        return rect.width() * rect.height();
    }

    @NotNull
    public static final RectF copyAndOffset(@NotNull RectF rectF, float f, float f2) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        RectF copy = RectFKt.copy(rectF);
        copy.offset(f, f2);
        return copy;
    }

    @NotNull
    public static final List<RectF> createRectanglesWithHole(@NotNull RectF rectF, @NotNull RectF smallRectF) {
        int roundToInt;
        int roundToInt2;
        int roundToInt3;
        int roundToInt4;
        int roundToInt5;
        int roundToInt6;
        int roundToInt7;
        int roundToInt8;
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(smallRectF, "smallRectF");
        ArrayList arrayList = new ArrayList();
        roundToInt = MathKt__MathJVMKt.roundToInt(smallRectF.left);
        roundToInt2 = MathKt__MathJVMKt.roundToInt(rectF.left);
        if (roundToInt >= roundToInt2) {
            roundToInt3 = MathKt__MathJVMKt.roundToInt(smallRectF.top);
            roundToInt4 = MathKt__MathJVMKt.roundToInt(rectF.top);
            if (roundToInt3 >= roundToInt4) {
                roundToInt5 = MathKt__MathJVMKt.roundToInt(smallRectF.right);
                roundToInt6 = MathKt__MathJVMKt.roundToInt(rectF.right);
                if (roundToInt5 <= roundToInt6) {
                    roundToInt7 = MathKt__MathJVMKt.roundToInt(smallRectF.bottom);
                    roundToInt8 = MathKt__MathJVMKt.roundToInt(rectF.bottom);
                    if (roundToInt7 <= roundToInt8) {
                        arrayList.add(new RectF(rectF.left, rectF.top, smallRectF.left, smallRectF.top));
                        arrayList.add(new RectF(smallRectF.left, rectF.top, smallRectF.right, smallRectF.top));
                        arrayList.add(new RectF(smallRectF.right, rectF.top, rectF.right, smallRectF.top));
                        arrayList.add(new RectF(rectF.left, smallRectF.top, smallRectF.left, smallRectF.bottom));
                        arrayList.add(new RectF(smallRectF.right, smallRectF.top, rectF.right, smallRectF.bottom));
                        arrayList.add(new RectF(rectF.left, smallRectF.bottom, smallRectF.left, rectF.bottom));
                        arrayList.add(new RectF(smallRectF.left, smallRectF.bottom, smallRectF.right, rectF.bottom));
                        arrayList.add(new RectF(smallRectF.right, smallRectF.bottom, rectF.right, rectF.bottom));
                    }
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!((RectF) obj).isEmpty()) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    @NotNull
    public static final RectF ensureMinimumSize(@NotNull RectF rectF, @NotNull Number minWidth, @NotNull Number minHeight) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(minWidth, "minWidth");
        Intrinsics.checkNotNullParameter(minHeight, "minHeight");
        if (rectF.width() >= minWidth.floatValue() && rectF.height() >= minHeight.floatValue()) {
            return rectF;
        }
        RectF copy = RectFKt.copy(rectF);
        float centerX = rectF.centerX();
        float centerY = rectF.centerY();
        if (rectF.width() < minWidth.floatValue()) {
            float f = 2;
            copy.left = centerX - (minWidth.floatValue() / f);
            copy.right = centerX + (minWidth.floatValue() / f);
        }
        if (rectF.height() < minHeight.floatValue()) {
            float f2 = 2;
            copy.top = centerY - (minHeight.floatValue() / f2);
            copy.bottom = centerY + (minHeight.floatValue() / f2);
        }
        return copy;
    }

    @NotNull
    public static final Rect expand(@NotNull Rect rect, @NotNull Number value) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        return expand(rect, value, value, value, value);
    }

    public static final float getAspectRatio(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        if (rectF.isEmpty()) {
            return 1.0f;
        }
        return rectF.width() / rectF.height();
    }

    @NotNull
    public static final Orientation getOrientation(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return isPortrait(rectF) ? Orientation.PORTRAIT : Orientation.LANDSCAPE;
    }

    public static final boolean hitTest(@NotNull RectF rectF, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        RectF rectF2 = new RectF(rectF);
        expand(rectF2, f3);
        return rectF2.contains(f, f2);
    }

    public static final void inset(@NotNull RectF rectF, @NotNull RectF rectF2) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(rectF2, "rectF");
        rectF.left += rectF2.left;
        rectF.top += rectF2.top;
        rectF.right -= rectF2.right;
        rectF.bottom -= rectF2.bottom;
    }

    @Nullable
    public static final RectF intersectRectF(@NotNull RectF rectF, @NotNull RectF r2) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(r2, "r2");
        RectF rectF2 = new RectF();
        if (rectF2.setIntersect(rectF, r2)) {
            return rectF2;
        }
        return null;
    }

    public static final boolean isEmptyInDocument(@NotNull RectF rectF, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return rectF.width() < f || rectF.height() < f;
    }

    public static /* synthetic */ boolean isEmptyInDocument$default(RectF rectF, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.1f;
        }
        return isEmptyInDocument(rectF, f);
    }

    public static final boolean isEmptyOnScreen(@NotNull RectF rectF, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return rectF.width() < f || rectF.height() < f;
    }

    public static /* synthetic */ boolean isEmptyOnScreen$default(RectF rectF, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        return isEmptyOnScreen(rectF, f);
    }

    public static final boolean isLandscape(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return rectF.width() > rectF.height();
    }

    public static final boolean isNaN(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return Float.isNaN(rectF.width()) || Float.isNaN(rectF.height());
    }

    public static final boolean isNullOrEmpty(@Nullable Rect rect) {
        return rect == null || rect.isEmpty();
    }

    public static final boolean isPortrait(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return rectF.width() <= rectF.height();
    }

    public static final float longerSize(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return Float.max(rectF.width(), rectF.height());
    }

    public static final void offsetToLeftTopFloor(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        rectF.offsetTo(FloatKt.floor(rectF.left), FloatKt.floor(rectF.top));
    }

    @NotNull
    public static final RectF orEmpty(@Nullable RectF rectF) {
        return rectF == null ? new RectF() : rectF;
    }

    public static final int roundArea(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return (int) (rectF.width() * rectF.height());
    }

    public static final int roundHeight(@NotNull RectF rectF) {
        int roundToInt;
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        roundToInt = MathKt__MathJVMKt.roundToInt(rectF.height());
        return roundToInt;
    }

    public static final int roundWidth(@NotNull RectF rectF) {
        int roundToInt;
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        roundToInt = MathKt__MathJVMKt.roundToInt(rectF.width());
        return roundToInt;
    }

    public static final float shorterSize(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return Float.min(rectF.width(), rectF.height());
    }

    @NotNull
    public static final ClosedFloatingPointRange<Float> toClosedRangeX(@NotNull RectF rectF) {
        ClosedFloatingPointRange<Float> rangeTo;
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        rangeTo = RangesKt__RangesKt.rangeTo(rectF.left, rectF.right);
        return rangeTo;
    }

    @NotNull
    public static final ClosedFloatingPointRange<Float> toClosedRangeY(@NotNull RectF rectF) {
        ClosedFloatingPointRange<Float> rangeTo;
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        rangeTo = RangesKt__RangesKt.rangeTo(rectF.top, rectF.bottom);
        return rangeTo;
    }

    public static final Range<Float> toRangeX(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return Range.between(Float.valueOf(rectF.left), Float.valueOf(rectF.right));
    }

    public static final Range<Float> toRangeY(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return Range.between(Float.valueOf(rectF.top), Float.valueOf(rectF.bottom));
    }

    @Nullable
    public static final Rect toRect(@Nullable RectF rectF) {
        if (rectF == null) {
            return null;
        }
        return new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    @Nullable
    public static final RectF toRectF(@Nullable Rect rect) {
        if (rect == null) {
            return null;
        }
        return new RectF(rect.left, rect.top, rect.right, rect.bottom);
    }

    @NotNull
    public static final Rect toRectNonNull(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    @NotNull
    public static final Size toSize(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return new Size((int) rectF.width(), (int) rectF.height());
    }

    @NotNull
    public static final SizeF toSizeF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return new SizeF(rectF.width(), rectF.height());
    }

    @NotNull
    public static final RectF toZeroOriginRoundRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return new RectF(0.0f, 0.0f, FloatKt.roundToIntFloat(rectF.width()), FloatKt.roundToIntFloat(rectF.height()));
    }

    public static final boolean touchDownOutside(@NotNull Rect rect, @Nullable MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        return (motionEvent != null && motionEvent.getAction() == 0) && !rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    public static final float area(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return rectF.width() * rectF.height();
    }

    @NotNull
    public static final Rect expand(@NotNull Rect rect, @NotNull Number l, @NotNull Number r, @NotNull Number t, @NotNull Number b) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        Intrinsics.checkNotNullParameter(l, "l");
        Intrinsics.checkNotNullParameter(r, "r");
        Intrinsics.checkNotNullParameter(t, "t");
        Intrinsics.checkNotNullParameter(b, "b");
        rect.left -= l.intValue();
        rect.right += r.intValue();
        rect.top -= t.intValue();
        rect.bottom += b.intValue();
        return rect;
    }

    public static final boolean isNullOrEmpty(@Nullable RectF rectF) {
        return rectF == null || rectF.isEmpty();
    }

    @NotNull
    public static final RectF expand(@NotNull RectF rectF, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return expand(rectF, f, f);
    }

    @NotNull
    public static final RectF expand(@NotNull RectF rectF, float f, float f2) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        rectF.set(rectF.left - f, rectF.top - f2, rectF.right + f, rectF.bottom + f2);
        return rectF;
    }

    @NotNull
    public static final RectF expand(@NotNull RectF rectF, float f, float f2, float f3, float f4) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        rectF.set(rectF.left - f, rectF.top - f2, rectF.right + f3, rectF.bottom + f4);
        return rectF;
    }
}
