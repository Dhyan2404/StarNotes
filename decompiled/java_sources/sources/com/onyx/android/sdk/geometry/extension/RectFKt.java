package com.onyx.android.sdk.geometry.extension;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.FloatKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.SizeKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0010\n\u0002\u0010\u0007\n\u0002\b\u0011\n\u0002\u0010\u0004\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0012\u0010\u0003\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u0012\u0010\u0005\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0000\u001a\u0012\u0010\u0007\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000\u001a\u0012\u0010\n\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000\u001a\u0012\u0010\u000b\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000\u001a\u0012\u0010\f\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000\u001a\u0012\u0010\r\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000\u001a\u0012\u0010\u000e\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000\u001a\u0012\u0010\u000f\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000\u001a\u0012\u0010\u0010\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000\u001a\u001a\u0010\u0012\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0000\u001a\u001a\u0010\u0013\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0000\u001a\u001a\u0010\u0014\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0000\u001a\u0012\u0010\u0015\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000\u001a\u0012\u0010\u0016\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000\u001a\u0012\u0010\u0017\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000\u001a\u0012\u0010\u0018\u001a\u00020\t*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0000\u001a\u001c\u0010\u001c\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u001c\u0010\u001d\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u001c\u0010\u001e\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u001a$\u0010 \u001a\u00020\t*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u00022\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u0012\u0010!\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u001a\u0010$\u001a\u00020\t*\u00020\u00002\u0006\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\u001a\u001a\u0012\u0010%\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u0012\u0010&\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u001c\u0010(\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010'\u001a\u00020\u001a\u001a\u0012\u0010)\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u0012\u0010*\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u0012\u0010+\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0000\u001a2\u00101\u001a\u00020\u0000*\u00020\u00002\b\b\u0002\u0010-\u001a\u00020,2\b\b\u0002\u0010.\u001a\u00020,2\b\b\u0002\u0010/\u001a\u00020,2\b\b\u0002\u00100\u001a\u00020,\u001a\u001c\u00103\u001a\u00020\u001a*\u00020\u00002\u0006\u00102\u001a\u00020\u001a2\u0006\u0010\u0001\u001a\u00020\u0000H\u0002\u001a\u001a\u00106\u001a\u00020\u0000*\u00020\u00002\u0006\u00104\u001a\u00020,2\u0006\u00105\u001a\u00020,\u001a\u0012\u00102\u001a\u00020\t*\u00020\u00002\u0006\u00102\u001a\u00020,\u001a\u0012\u00107\u001a\u00020\t*\u00020\u00002\u0006\u00102\u001a\u00020\u001a\u001a\u001a\u00107\u001a\u00020\t*\u00020\u00002\u0006\u00108\u001a\u00020\u001a2\u0006\u00109\u001a\u00020\u001a\u001a\n\u0010:\u001a\u00020\u0000*\u00020\u0000\u001a\n\u0010;\u001a\u00020\u0000*\u00020\u0000\u001a\n\u0010;\u001a\u00020<*\u00020<\u001a\n\u0010>\u001a\u00020=*\u00020<\u001a\u0018\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00000@*\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010?\u001a\u0016\u0010B\u001a\b\u0012\u0004\u0012\u00020<0@*\b\u0012\u0004\u0012\u00020<0?\u001a\u0014\u0010D\u001a\u00020\u0000*\u0004\u0018\u00010\u00002\u0006\u0010C\u001a\u00020\u0000\u001a\u0014\u0010G\u001a\u00020\u0000*\u00020\u00002\b\u0010F\u001a\u0004\u0018\u00010E\u001a\u001c\u0010I\u001a\u00020\u0002*\u00020\u00002\u0006\u0010H\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u001c\u0010J\u001a\u00020\u0002*\u00020\u00002\u0006\u0010H\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u001c\u0010I\u001a\u00020\u0002*\u00020\u00002\u0006\u0010K\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u001c\u0010J\u001a\u00020\u0002*\u00020\u00002\u0006\u0010L\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u001c\u0010O\u001a\u00020N*\u00020\u00002\u0006\u0010M\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u001c\u0010P\u001a\u00020N*\u00020\u00002\u0006\u0010M\u001a\u00020\u00002\b\b\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u0010\u0010\u0011\u001a\u00020\u0000*\b\u0012\u0004\u0012\u00020\u00000?\u001a\u0012\u0010S\u001a\u00020\t*\u00020\u00002\u0006\u0010R\u001a\u00020Q\u001a\u0018\u0010U\u001a\b\u0012\u0004\u0012\u00020\u00000@*\u00020\u00002\u0006\u0010T\u001a\u00020Q\u001a\u0012\u0010W\u001a\u00020\u0002*\u00020\u00002\u0006\u0010V\u001a\u00020\u0000\u001a\u0018\u0010Z\u001a\u00020\u0000*\u00020\u00002\f\u0010Y\u001a\b\u0012\u0004\u0012\u00020\u00000X\u001a\u0012\u0010\\\u001a\u00020\u0002*\u00020\u00002\u0006\u0010[\u001a\u00020\u0000\u001a \u0010_\u001a\u00020\u0002*\u0004\u0018\u00010\u00002\b\u0010]\u001a\u0004\u0018\u00010\u00002\b\b\u0002\u0010^\u001a\u00020\u001a\u001a\u0018\u0010a\u001a\b\u0012\u0004\u0012\u00020\u00000?*\u00020\u00002\u0006\u0010`\u001a\u00020\u0000\u001a)\u0010d\u001a\u00020\u0000*\u00020\u00002\u0016\u0010c\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010E0b\"\u0004\u0018\u00010E¢\u0006\u0004\bd\u0010e\u001a\u0012\u0010g\u001a\u00020\u0000*\u00020\u00002\u0006\u0010f\u001a\u00020\u001a\u001a\n\u0010h\u001a\u00020\u001a*\u00020\u0000\u001a\n\u0010i\u001a\u00020\u0000*\u00020\u0000\u001a\u0012\u0010k\u001a\u00020\u001a*\u00020\u00002\u0006\u0010R\u001a\u00020j\u001a\n\u0010l\u001a\u00020\u0000*\u00020\u0000\u001a\u0012\u0010o\u001a\u00020n*\u00020\u00002\u0006\u0010m\u001a\u00020\u0000\u001a\u0012\u0010p\u001a\u00020\t*\u00020\u00002\u0006\u0010[\u001a\u00020\u0000\u001a\n\u0010r\u001a\u00020q*\u00020\u0000\u001a\u001c\u0010t\u001a\u00020\u0002*\u00020\u00002\u0006\u0010V\u001a\u00020\u00002\b\b\u0002\u0010s\u001a\u00020\u001a¨\u0006u"}, m61528d2 = {"Landroid/graphics/RectF;", "parent", "", "rebound", "limitRect", "limit", "limitRectF", "limitAndResize", "referenceRect", "", "alignOrigin", "centerAlign", "alignCenterHorizontal", "alignCenterVertical", "alignCenterIf", "alignCenterHorizontalIf", "alignCenterVerticalIf", "boundingRectF", "limitAndCenterIf", "limitAndCenterHorizontalIf", "limitAndCenterVerticalIf", "leftAlign", "rightAlign", "topAlign", "bottomAlign", "lastRect", "", "gap", "moveToBelow", "moveToRight", "moveToLeft", "rtl", "moveToEnd", "translateCoordinates", "width", "height", "scaleToPageByOrientation", "scaleToPage", "scaleToArea", "aspectScaleThreshold", "scaleToPageWithAspectScaleCheck", "scaleToWidth", "scaleToHeight", "fitWithinRect", "", "leftOffset", "rightOffset", "topOffset", "bottomOffset", Constants.ELEMNAME_TRANSFORM_STRING, "scale", "a", "sx", "sy", "scaleFromCenter", "scaleRect", "scaleX", "scaleY", "offsetToOrigin", "copy", "Landroid/graphics/Rect;", "Landroid/graphics/Point;", "center", "", "", "copyRectFList", "copyRectList", "dst", "unionOrCopy", "Landroid/graphics/Matrix;", "matrix", "copyAndTransform", "b", "hasVerticalOverlapWith", "hasHorizontalOverlapWith", "y", "x", "another", "", "verCheck", "horCheck", "Lcom/onyx/android/sdk/base/data/Size;", "size", "resize", "sliceMaxSize", "split", Constants.ATTRVAL_OTHER, "isOutside", "Lkotlin/Function0;", "defaultValue", "ifEmpty", "rectF", "approximatelyTheSame", "target", "allowedMistakenRate", "approximatelyEqualsTo", "rectFB", "getNonIntersectRectFs", "", "matrixs", "concatTransform", "(Landroid/graphics/RectF;[Landroid/graphics/Matrix;)Landroid/graphics/RectF;", "degree", "rotate", "getDiagonalLength", "roundToExpand", "Landroid/util/Size;", "fitSafeRect", "createRectWithIntSize", "viewport", "Landroid/graphics/PointF;", "calculateOffsetToViewport", "unionRectByCorner", "Landroid/graphics/Path;", "toPath", "tolerance", "equalsWithTolerance", "sdk-geometry_release"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRectF.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RectF.kt\ncom/onyx/android/sdk/geometry/extension/RectFKt\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,595:1\n364#2:596\n364#2:602\n1#3:597\n1#3:603\n1855#4,2:598\n13309#5,2:600\n*S KotlinDebug\n*F\n+ 1 RectF.kt\ncom/onyx/android/sdk/geometry/extension/RectFKt\n*L\n380#1:596\n527#1:602\n380#1:597\n527#1:603\n413#1:598,2\n526#1:600,2\n*E\n"})
/* loaded from: classes7.dex */
public final class RectFKt {
    /* renamed from: a */
    public static final float m33280a(RectF rectF, float f, RectF rectF2) {
        if (!((Float.isInfinite(f) || Float.isNaN(f)) ? false : true)) {
            Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(rectF), "scaleToRect exception, scale = " + f + ", return default value", new Object[0]);
            return 1.0f;
        }
        float width = rectF.width() * f;
        float height = rectF.height() * f;
        float f2 = 2;
        float max = Math.max(0.0f, rectF2.left + ((rectF2.width() - width) / f2));
        float max2 = Math.max(0.0f, rectF2.top + ((rectF2.height() - height) / f2));
        rectF.left = max;
        rectF.top = max2;
        rectF.right = max + width;
        rectF.bottom = max2 + height;
        return f;
    }

    public static final void alignCenterHorizontal(@NotNull RectF rectF, @NotNull RectF referenceRect) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(referenceRect, "referenceRect");
        rectF.offsetTo(referenceRect.left + ((referenceRect.width() - rectF.width()) / 2), rectF.top);
    }

    public static final void alignCenterHorizontalIf(@NotNull RectF rectF, @NotNull RectF referenceRect) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(referenceRect, "referenceRect");
        if (RectKt.roundWidth(rectF) >= RectKt.roundWidth(referenceRect)) {
            alignCenterHorizontal(rectF, referenceRect);
        }
    }

    public static final void alignCenterIf(@NotNull RectF rectF, @NotNull RectF referenceRect) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(referenceRect, "referenceRect");
        if (RectKt.roundWidth(rectF) >= RectKt.roundWidth(referenceRect)) {
            alignCenterHorizontal(rectF, referenceRect);
        }
        if (RectKt.roundHeight(rectF) >= RectKt.roundHeight(referenceRect)) {
            alignCenterVertical(rectF, referenceRect);
        }
    }

    public static final void alignCenterVertical(@NotNull RectF rectF, @NotNull RectF referenceRect) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(referenceRect, "referenceRect");
        rectF.offsetTo(rectF.left, referenceRect.top + ((referenceRect.height() - rectF.height()) / 2));
    }

    public static final void alignCenterVerticalIf(@NotNull RectF rectF, @NotNull RectF referenceRect) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(referenceRect, "referenceRect");
        if (RectKt.roundHeight(rectF) >= RectKt.roundHeight(referenceRect)) {
            alignCenterVertical(rectF, referenceRect);
        }
    }

    public static final void alignOrigin(@NotNull RectF rectF, @NotNull RectF referenceRect) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(referenceRect, "referenceRect");
        rectF.offsetTo(referenceRect.left, referenceRect.top);
    }

    public static final boolean approximatelyEqualsTo(@Nullable RectF rectF, @Nullable RectF rectF2, float f) {
        int roundToInt;
        int roundToInt2;
        if (rectF == null && rectF2 == null) {
            return true;
        }
        if (RectKt.isNullOrEmpty(rectF) && RectKt.isNullOrEmpty(rectF2)) {
            return true;
        }
        if (rectF == null || rectF2 == null) {
            return false;
        }
        roundToInt = MathKt__MathJVMKt.roundToInt(rectF.width() / rectF2.width());
        if (roundToInt == 1) {
            roundToInt2 = MathKt__MathJVMKt.roundToInt(rectF.height() / rectF2.height());
            if (roundToInt2 == 1 && Math.abs(rectF.left - rectF2.left) / Math.min(rectF.width(), rectF2.width()) < f && Math.abs(rectF.top - rectF2.top) / Math.min(rectF.height(), rectF2.height()) < f) {
                return true;
            }
        }
        return false;
    }

    public static /* synthetic */ boolean approximatelyEqualsTo$default(RectF rectF, RectF rectF2, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.01f;
        }
        return approximatelyEqualsTo(rectF, rectF2, f);
    }

    public static final boolean approximatelyTheSame(@NotNull RectF rectF, @NotNull RectF rectF2) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(rectF2, "rectF");
        return ((int) Math.abs(rectF2.left - rectF.left)) == 0 && ((int) Math.abs(rectF2.top - rectF.top)) == 0 && ((int) Math.abs(rectF2.bottom - rectF.bottom)) == 0 && ((int) Math.abs(rectF2.right - rectF.right)) == 0;
    }

    public static final void bottomAlign(@NotNull RectF rectF, @NotNull RectF referenceRect) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(referenceRect, "referenceRect");
        rectF.offset(0.0f, referenceRect.bottom - rectF.bottom);
    }

    @NotNull
    public static final RectF boundingRectF(@NotNull List<? extends RectF> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        RectF rectF = new RectF();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            rectF = unionOrCopy(rectF, (RectF) it2.next());
        }
        return rectF;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0027  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.graphics.PointF calculateOffsetToViewport(@org.jetbrains.annotations.NotNull android.graphics.RectF r5, @org.jetbrains.annotations.NotNull android.graphics.RectF r6) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "viewport"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            float r0 = r5.right
            float r1 = r6.right
            int r2 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r3 = 0
            if (r2 <= 0) goto L15
        L13:
            float r0 = r0 - r1
            goto L1f
        L15:
            float r0 = r5.left
            float r1 = r6.left
            int r2 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r2 >= 0) goto L1e
            goto L13
        L1e:
            r0 = r3
        L1f:
            float r1 = r5.bottom
            float r2 = r6.bottom
            int r4 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r4 <= 0) goto L2a
            float r3 = r1 - r2
            goto L34
        L2a:
            float r5 = r5.top
            float r6 = r6.top
            int r1 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r1 >= 0) goto L34
            float r3 = r5 - r6
        L34:
            android.graphics.PointF r5 = new android.graphics.PointF
            r5.<init>(r0, r3)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.geometry.extension.RectFKt.calculateOffsetToViewport(android.graphics.RectF, android.graphics.RectF):android.graphics.PointF");
    }

    @NotNull
    public static final Point center(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        return new Point(rect.centerX(), rect.centerY());
    }

    public static final void centerAlign(@NotNull RectF rectF, @NotNull RectF referenceRect) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(referenceRect, "referenceRect");
        float f = 2;
        rectF.offsetTo(referenceRect.left + ((referenceRect.width() - rectF.width()) / f), referenceRect.top + ((referenceRect.height() - rectF.height()) / f));
    }

    @NotNull
    public static final RectF concatTransform(@NotNull RectF rectF, @NotNull Matrix... matrixs) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(matrixs, "matrixs");
        Matrix matrix = new Matrix();
        for (Matrix matrix2 : matrixs) {
            if (matrix2 == null) {
                matrix2 = new Matrix();
            }
            matrix.postConcat(matrix2);
        }
        RectF copy = copy(rectF);
        matrix.mapRect(copy);
        return copy;
    }

    @NotNull
    public static final RectF copy(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return new RectF(rectF);
    }

    @NotNull
    public static final RectF copyAndTransform(@NotNull RectF rectF, @Nullable Matrix matrix) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        RectF copy = copy(rectF);
        MatrixKt.nonNull(matrix).mapRect(copy);
        return copy;
    }

    @NotNull
    public static final List<RectF> copyRectFList(@Nullable List<? extends RectF> list) {
        Sequence asSequence;
        Sequence map;
        List<RectF> mutableList;
        if (list == null) {
            return new ArrayList();
        }
        asSequence = CollectionsKt___CollectionsKt.asSequence(list);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<RectF, RectF>() { // from class: com.onyx.android.sdk.geometry.extension.RectFKt$copyRectFList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final RectF invoke(@NotNull RectF it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return RectFKt.copy(it2);
            }
        });
        mutableList = SequencesKt___SequencesKt.toMutableList(map);
        return mutableList;
    }

    @NotNull
    public static final List<Rect> copyRectList(@NotNull List<Rect> list) {
        Sequence asSequence;
        Sequence map;
        List<Rect> mutableList;
        Intrinsics.checkNotNullParameter(list, "<this>");
        asSequence = CollectionsKt___CollectionsKt.asSequence(list);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<Rect, Rect>() { // from class: com.onyx.android.sdk.geometry.extension.RectFKt$copyRectList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Rect invoke(@NotNull Rect it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return RectFKt.copy(it2);
            }
        });
        mutableList = SequencesKt___SequencesKt.toMutableList(map);
        return mutableList;
    }

    @NotNull
    public static final RectF createRectWithIntSize(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        float f = rectF.left;
        return new RectF(f, rectF.top, ((int) rectF.width()) + f, rectF.top + ((int) rectF.height()));
    }

    public static final boolean equalsWithTolerance(@NotNull RectF rectF, @NotNull RectF other, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return Math.abs(rectF.left - other.left) < f && Math.abs(rectF.top - other.top) < f && Math.abs(rectF.right - other.right) < f && Math.abs(rectF.bottom - other.bottom) < f;
    }

    public static /* synthetic */ boolean equalsWithTolerance$default(RectF rectF, RectF rectF2, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.01f;
        }
        return equalsWithTolerance(rectF, rectF2, f);
    }

    public static final float fitSafeRect(@NotNull RectF rectF, @NotNull Size size) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(size, "size");
        if (rectF.width() <= size.getWidth() && rectF.height() <= size.getHeight()) {
            return 1.0f;
        }
        float width = (size.getWidth() * size.getHeight()) / (rectF.width() * rectF.height());
        if (width >= 1.0f) {
            return 1.0f;
        }
        return m33280a(rectF, width, SizeKt.toRectF(size));
    }

    public static final float fitWithinRect(@NotNull RectF rectF, @NotNull RectF limitRect) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(limitRect, "limitRect");
        if (rectF.width() <= limitRect.width() || rectF.height() <= limitRect.height()) {
            return 1.0f;
        }
        return limitRect.width() / rectF.width() > limitRect.height() / rectF.height() ? scaleToWidth(rectF, limitRect) : scaleToHeight(rectF, limitRect);
    }

    public static final float getDiagonalLength(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return (float) Math.sqrt((rectF.width() * rectF.width()) + (rectF.height() * rectF.height()));
    }

    @NotNull
    public static final List<RectF> getNonIntersectRectFs(@NotNull RectF rectF, @NotNull RectF rectFB) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(rectFB, "rectFB");
        ArrayList arrayList = new ArrayList();
        if (!RectF.intersects(rectF, rectFB)) {
            return arrayList;
        }
        RectF rectF2 = new RectF(rectF.left, rectF.top, rectFB.left, rectF.bottom);
        if (!rectF2.isEmpty()) {
            arrayList.add(rectF2);
        }
        RectF rectF3 = new RectF(rectFB.left, rectF.top, rectFB.right, rectFB.top);
        if (!rectF3.isEmpty()) {
            arrayList.add(rectF3);
        }
        RectF rectF4 = new RectF(rectFB.right, rectF.top, rectF.right, rectF.bottom);
        if (!rectF4.isEmpty()) {
            arrayList.add(rectF4);
        }
        RectF rectF5 = new RectF(rectFB.left, rectFB.bottom, rectFB.right, rectF.bottom);
        if (!rectF5.isEmpty()) {
            arrayList.add(rectF5);
        }
        return arrayList;
    }

    public static final boolean hasHorizontalOverlapWith(@NotNull RectF rectF, @NotNull RectF b, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(b, "b");
        return rectF.left < b.right && b.left < rectF.right + f;
    }

    public static /* synthetic */ boolean hasHorizontalOverlapWith$default(RectF rectF, RectF rectF2, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return hasHorizontalOverlapWith(rectF, rectF2, f);
    }

    public static final boolean hasVerticalOverlapWith(@NotNull RectF rectF, @NotNull RectF b, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(b, "b");
        return rectF.top < b.bottom && b.top < rectF.bottom + f;
    }

    public static /* synthetic */ boolean hasVerticalOverlapWith$default(RectF rectF, RectF rectF2, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return hasVerticalOverlapWith(rectF, rectF2, f);
    }

    public static final int horCheck(@NotNull RectF rectF, @NotNull RectF another, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(another, "another");
        if (hasHorizontalOverlapWith(rectF, another, f)) {
            return 0;
        }
        return rectF.left > another.right ? 1 : -1;
    }

    public static /* synthetic */ int horCheck$default(RectF rectF, RectF rectF2, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return horCheck(rectF, rectF2, f);
    }

    @NotNull
    public static final RectF ifEmpty(@NotNull RectF rectF, @NotNull Function0<? extends RectF> defaultValue) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (RectF) AnyKt.ifEmpty(rectF, new Function1<RectF, Boolean>() { // from class: com.onyx.android.sdk.geometry.extension.RectFKt$ifEmpty$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RectF it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(RectKt.isNullOrEmpty(it2));
            }
        }, defaultValue);
    }

    public static final boolean isOutside(@NotNull RectF rectF, @NotNull RectF other) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return rectF.left < other.left || rectF.right > other.right || rectF.top < other.top || rectF.bottom > other.bottom;
    }

    public static final void leftAlign(@NotNull RectF rectF, @NotNull RectF referenceRect) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(referenceRect, "referenceRect");
        rectF.offsetTo(referenceRect.left, rectF.top);
    }

    public static final boolean limit(@NotNull RectF rectF, @NotNull RectF limitRect) {
        boolean z;
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(limitRect, "limitRect");
        float f = rectF.right;
        float f2 = limitRect.right;
        if (f > f2) {
            rectF.offsetTo(f2 - rectF.width(), rectF.top);
            z = true;
        } else {
            z = false;
        }
        float f3 = rectF.bottom;
        float f4 = limitRect.bottom;
        if (f3 > f4) {
            rectF.offsetTo(rectF.left, f4 - rectF.height());
            z = true;
        }
        float f5 = rectF.left;
        float f6 = limitRect.left;
        if (f5 < f6) {
            rectF.offsetTo(f6, rectF.top);
            z = true;
        }
        float f7 = rectF.top;
        float f8 = limitRect.top;
        if (f7 >= f8) {
            return z;
        }
        rectF.offsetTo(rectF.left, f8);
        return true;
    }

    public static final void limitAndCenterHorizontalIf(@NotNull RectF rectF, @NotNull RectF limitRectF, @NotNull RectF boundingRectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(limitRectF, "limitRectF");
        Intrinsics.checkNotNullParameter(boundingRectF, "boundingRectF");
        limit(rectF, limitRectF);
        alignCenterHorizontalIf(rectF, boundingRectF);
    }

    public static final void limitAndCenterIf(@NotNull RectF rectF, @NotNull RectF limitRectF, @NotNull RectF boundingRectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(limitRectF, "limitRectF");
        Intrinsics.checkNotNullParameter(boundingRectF, "boundingRectF");
        limit(rectF, limitRectF);
        alignCenterIf(rectF, boundingRectF);
    }

    public static final void limitAndCenterVerticalIf(@NotNull RectF rectF, @NotNull RectF limitRectF, @NotNull RectF boundingRectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(limitRectF, "limitRectF");
        Intrinsics.checkNotNullParameter(boundingRectF, "boundingRectF");
        limit(rectF, limitRectF);
        alignCenterVerticalIf(rectF, boundingRectF);
    }

    public static final boolean limitAndResize(@NotNull RectF rectF, @NotNull RectF limitRectF) {
        boolean z;
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(limitRectF, "limitRectF");
        float f = rectF.left;
        float f2 = limitRectF.left;
        if (f < f2) {
            rectF.left = f2;
            z = true;
        } else {
            z = false;
        }
        float f3 = rectF.right;
        float f4 = limitRectF.right;
        if (f3 > f4) {
            rectF.right = f4;
            z = true;
        }
        float f5 = rectF.top;
        float f6 = limitRectF.top;
        if (f5 < f6) {
            rectF.top = f6;
            z = true;
        }
        float f7 = rectF.bottom;
        float f8 = limitRectF.bottom;
        if (f7 <= f8) {
            return z;
        }
        rectF.bottom = f8;
        return true;
    }

    public static final void moveToBelow(@NotNull RectF rectF, @NotNull RectF lastRect, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(lastRect, "lastRect");
        rectF.offsetTo(rectF.left, lastRect.bottom + f);
    }

    public static /* synthetic */ void moveToBelow$default(RectF rectF, RectF rectF2, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        moveToBelow(rectF, rectF2, f);
    }

    public static final void moveToEnd(@NotNull RectF rectF, @NotNull RectF lastRect, boolean z, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(lastRect, "lastRect");
        if (z) {
            moveToLeft(rectF, lastRect, f);
        } else {
            moveToRight(rectF, lastRect, f);
        }
    }

    public static /* synthetic */ void moveToEnd$default(RectF rectF, RectF rectF2, boolean z, float f, int i, Object obj) {
        if ((i & 4) != 0) {
            f = 0.0f;
        }
        moveToEnd(rectF, rectF2, z, f);
    }

    public static final void moveToLeft(@NotNull RectF rectF, @NotNull RectF lastRect, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(lastRect, "lastRect");
        rectF.offsetTo((lastRect.left - lastRect.width()) - f, rectF.top);
    }

    public static /* synthetic */ void moveToLeft$default(RectF rectF, RectF rectF2, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        moveToLeft(rectF, rectF2, f);
    }

    public static final void moveToRight(@NotNull RectF rectF, @NotNull RectF lastRect, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(lastRect, "lastRect");
        rectF.offsetTo(lastRect.right + f, rectF.top);
    }

    public static /* synthetic */ void moveToRight$default(RectF rectF, RectF rectF2, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        moveToRight(rectF, rectF2, f);
    }

    @NotNull
    public static final RectF offsetToOrigin(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        rectF.offsetTo(0.0f, 0.0f);
        return rectF;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean rebound(@org.jetbrains.annotations.NotNull android.graphics.RectF r5, @org.jetbrains.annotations.NotNull android.graphics.RectF r6) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "parent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            float r0 = r5.width()
            float r1 = r6.width()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r1 = 1073741824(0x40000000, float:2.0)
            r2 = 1
            if (r0 >= 0) goto L3c
            float r0 = r5.left
            float r3 = r6.left
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L28
            float r0 = r5.top
            r5.offsetTo(r3, r0)
            r0 = r2
            goto L29
        L28:
            r0 = 0
        L29:
            float r3 = r5.right
            float r4 = r6.right
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 <= 0) goto L4f
            float r0 = r5.width()
            float r4 = r4 - r0
            float r0 = r5.top
            r5.offsetTo(r4, r0)
            goto L4e
        L3c:
            float r0 = r6.left
            float r3 = r6.width()
            float r4 = r5.width()
            float r3 = r3 - r4
            float r3 = r3 / r1
            float r0 = r0 + r3
            float r3 = r5.top
            r5.offsetTo(r0, r3)
        L4e:
            r0 = r2
        L4f:
            float r3 = r5.height()
            float r4 = r6.height()
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 >= 0) goto L7e
            float r1 = r5.top
            float r3 = r6.top
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 >= 0) goto L69
            float r0 = r5.left
            r5.offsetTo(r0, r3)
            r0 = r2
        L69:
            float r1 = r5.bottom
            float r6 = r6.bottom
            int r1 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r1 <= 0) goto L7c
            float r0 = r5.left
            float r1 = r5.height()
            float r6 = r6 - r1
            r5.offsetTo(r0, r6)
            goto L90
        L7c:
            r2 = r0
            goto L90
        L7e:
            float r0 = r5.left
            float r3 = r6.top
            float r6 = r6.height()
            float r4 = r5.height()
            float r6 = r6 - r4
            float r6 = r6 / r1
            float r3 = r3 + r6
            r5.offsetTo(r0, r3)
        L90:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.geometry.extension.RectFKt.rebound(android.graphics.RectF, android.graphics.RectF):boolean");
    }

    public static final void resize(@NotNull RectF rectF, @NotNull com.onyx.android.sdk.base.data.Size size) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(size, "size");
        rectF.right = rectF.left + size.getWidth();
        rectF.bottom = rectF.top + size.getHeight();
    }

    public static final void rightAlign(@NotNull RectF rectF, @NotNull RectF referenceRect) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(referenceRect, "referenceRect");
        rectF.offset(referenceRect.right - rectF.right, 0.0f);
    }

    @NotNull
    public static final RectF rotate(@NotNull RectF rectF, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return concatTransform(rectF, androidx.core.graphics.MatrixKt.rotationMatrix(f, rectF.centerX(), rectF.centerY()));
    }

    @NotNull
    public static final RectF roundToExpand(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        rectF.left = FloatKt.floor(rectF.left);
        rectF.top = FloatKt.floor(rectF.top);
        rectF.right = FloatKt.roundToIntFloat(rectF.right);
        rectF.bottom = FloatKt.roundToIntFloat(rectF.bottom);
        return rectF;
    }

    public static final void scale(@NotNull RectF rectF, @NotNull Number scale) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(scale, "scale");
        rectF.right = rectF.left + (rectF.width() * scale.floatValue());
        rectF.bottom = rectF.top + (rectF.height() * scale.floatValue());
    }

    @NotNull
    public static final RectF scaleFromCenter(@NotNull RectF rectF, @NotNull Number sx, @NotNull Number sy) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(sx, "sx");
        Intrinsics.checkNotNullParameter(sy, "sy");
        RectF rectF2 = new RectF();
        float f = 2;
        rectF2.left = rectF.centerX() - ((rectF.width() * sx.floatValue()) / f);
        rectF2.right = rectF.centerX() + ((rectF.width() * sx.floatValue()) / f);
        rectF2.top = rectF.centerY() - ((rectF.width() * sy.floatValue()) / f);
        rectF2.bottom = rectF.centerY() + ((rectF.width() * sy.floatValue()) / f);
        return rectF2;
    }

    public static final void scaleRect(@NotNull RectF rectF, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        rectF.left *= f;
        rectF.top *= f;
        rectF.right *= f;
        rectF.bottom *= f;
    }

    public static final float scaleToArea(@NotNull RectF rectF, @NotNull RectF parent) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return m33280a(rectF, (float) Math.sqrt((parent.width() * parent.height()) / (rectF.width() * rectF.height())), parent);
    }

    public static final float scaleToHeight(@NotNull RectF rectF, @NotNull RectF parent) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return m33280a(rectF, parent.height() / rectF.height(), parent);
    }

    public static final float scaleToPage(@NotNull RectF rectF, @NotNull RectF parent) {
        float coerceAtMost;
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(parent.width() / rectF.width(), parent.height() / rectF.height());
        return m33280a(rectF, coerceAtMost, parent);
    }

    public static final void scaleToPageByOrientation(@NotNull RectF rectF, float f, float f2) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        scaleToPage(rectF, rectF.width() < rectF.height() ? new RectF(0.0f, 0.0f, Math.min(f, f2), Math.max(f, f2)) : new RectF(0.0f, 0.0f, Math.max(f, f2), Math.min(f, f2)));
    }

    public static final float scaleToPageWithAspectScaleCheck(@NotNull RectF rectF, @NotNull RectF parent, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        float width = rectF.width() / rectF.height();
        return width <= f ? scaleToWidth(rectF, parent) : ((float) 1) / width <= f ? scaleToHeight(rectF, parent) : scaleToPage(rectF, parent);
    }

    public static /* synthetic */ float scaleToPageWithAspectScaleCheck$default(RectF rectF, RectF rectF2, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.2f;
        }
        return scaleToPageWithAspectScaleCheck(rectF, rectF2, f);
    }

    public static final float scaleToWidth(@NotNull RectF rectF, @NotNull RectF parent) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return m33280a(rectF, parent.width() / rectF.width(), parent);
    }

    @NotNull
    public static final List<RectF> split(@NotNull RectF rectF, @NotNull com.onyx.android.sdk.base.data.Size sliceMaxSize) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(sliceMaxSize, "sliceMaxSize");
        ArrayList arrayList = new ArrayList();
        float width = sliceMaxSize.getWidth();
        float height = sliceMaxSize.getHeight();
        int ceil = (int) Math.ceil(rectF.width() / width);
        int ceil2 = (int) Math.ceil(rectF.height() / height);
        float f = 0.0f;
        for (int i = 0; i < ceil2; i++) {
            float min = Math.min(height, rectF.height() - (i * height));
            if (min >= 1.0f) {
                float f2 = 0.0f;
                for (int i2 = 0; i2 < ceil; i2++) {
                    float min2 = Math.min(width, rectF.width() - (i2 * width));
                    if (min2 >= 1.0f) {
                        RectF copy = copy(rectF);
                        copy.offset(f2, f);
                        copy.right = copy.left + min2;
                        copy.bottom = copy.top + min;
                        arrayList.add(copy);
                        f2 += min2;
                    }
                }
                f += min;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final Path toPath(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Path path = new Path();
        path.addRect(rectF, Path.Direction.CW);
        return path;
    }

    public static final void topAlign(@NotNull RectF rectF, @NotNull RectF referenceRect) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(referenceRect, "referenceRect");
        rectF.offsetTo(rectF.left, referenceRect.top);
    }

    @NotNull
    public static final RectF transform(@NotNull RectF rectF, @NotNull Number leftOffset, @NotNull Number rightOffset, @NotNull Number topOffset, @NotNull Number bottomOffset) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(leftOffset, "leftOffset");
        Intrinsics.checkNotNullParameter(rightOffset, "rightOffset");
        Intrinsics.checkNotNullParameter(topOffset, "topOffset");
        Intrinsics.checkNotNullParameter(bottomOffset, "bottomOffset");
        RectF rectF2 = new RectF();
        rectF2.left = rectF.left + leftOffset.floatValue();
        rectF2.right = rectF.right + rightOffset.floatValue();
        rectF2.top = rectF.top + topOffset.floatValue();
        rectF2.bottom = rectF.bottom + bottomOffset.floatValue();
        return rectF2;
    }

    public static /* synthetic */ RectF transform$default(RectF rectF, Number number, Number number2, Number number3, Number number4, int i, Object obj) {
        if ((i & 1) != 0) {
            number = 0;
        }
        if ((i & 2) != 0) {
            number2 = 0;
        }
        if ((i & 4) != 0) {
            number3 = 0;
        }
        if ((i & 8) != 0) {
            number4 = 0;
        }
        return transform(rectF, number, number2, number3, number4);
    }

    @NotNull
    public static final RectF translateCoordinates(@NotNull RectF rectF, @NotNull RectF parent) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(parent, "parent");
        rectF.offset(-parent.left, -parent.top);
        return rectF;
    }

    @NotNull
    public static final RectF unionOrCopy(@Nullable RectF rectF, @NotNull RectF dst) {
        Intrinsics.checkNotNullParameter(dst, "dst");
        if (rectF == null || rectF.isEmpty()) {
            return copy(dst);
        }
        rectF.union(dst);
        return rectF;
    }

    public static final void unionRectByCorner(@NotNull RectF rectF, @NotNull RectF rectF2) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(rectF2, "rectF");
        rectF.union(rectF2.left, rectF2.top);
        rectF.union(rectF2.right, rectF2.bottom);
    }

    public static final int verCheck(@NotNull RectF rectF, @NotNull RectF another, float f) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Intrinsics.checkNotNullParameter(another, "another");
        if (hasVerticalOverlapWith(rectF, another, f)) {
            return 0;
        }
        return rectF.top > another.bottom ? 1 : -1;
    }

    public static /* synthetic */ int verCheck$default(RectF rectF, RectF rectF2, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return verCheck(rectF, rectF2, f);
    }

    @NotNull
    public static final Rect copy(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "<this>");
        return new Rect(rect);
    }

    public static final boolean hasHorizontalOverlapWith(@NotNull RectF rectF, float f, float f2) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return rectF.left < f && f < rectF.right + f2;
    }

    public static /* synthetic */ boolean hasHorizontalOverlapWith$default(RectF rectF, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        return hasHorizontalOverlapWith(rectF, f, f2);
    }

    public static final boolean hasVerticalOverlapWith(@NotNull RectF rectF, float f, float f2) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        return rectF.top < f && f < rectF.bottom + f2;
    }

    public static /* synthetic */ boolean hasVerticalOverlapWith$default(RectF rectF, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        return hasVerticalOverlapWith(rectF, f, f2);
    }

    public static final void scaleRect(@NotNull RectF rectF, float f, float f2) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        rectF.left *= f;
        rectF.top *= f2;
        rectF.right *= f;
        rectF.bottom *= f2;
    }
}
