package com.onyx.android.sdk.base.lite.utils;

import android.graphics.Matrix;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt__RangesKt;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\"\u0010#J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006J&\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bJ.\u0010\u0015\u001a\u00020\b*\u00020\b2\u0006\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\b2\b\b\u0002\u0010\u0013\u001a\u00020\b2\b\b\u0002\u0010\u0014\u001a\u00020\bJ\u001e\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u000fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0017\u0010!\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/base/lite/utils/MathUtils;", "", "Landroid/graphics/Matrix;", "matrix", "", "isEmptyMatrix", "", ExtensionNamespaceContext.EXSLT_STRING_PREFIX, "", "defaultValue", "parseFloat", "x1", "y1", "x2", "y2", "", "distance", gon.f71290o0, "end", "startPadding", "endPadding", "limitIn", "angle", "Lkotlin/UByte;", "normalizeAngleTo36-Wa3L5BU", "(D)B", "normalizeAngleTo36", "FLOAT_ONE", "F", "a", "Landroid/graphics/Matrix;", "getEMPTY_MATRIX", "()Landroid/graphics/Matrix;", "EMPTY_MATRIX", Constants.CONSTRUCTOR_NAME, "()V", "sdk-baselite_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class MathUtils {
    public static final float FLOAT_ONE = 1.0f;

    @NotNull
    public static final MathUtils INSTANCE = new MathUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Matrix EMPTY_MATRIX = new Matrix();

    public final double distance(float x1, float y1, float x2, float y2) {
        return Math.hypot(Math.abs(x1 - x2), Math.abs(y1 - y2));
    }

    @NotNull
    public final Matrix getEMPTY_MATRIX() {
        return EMPTY_MATRIX;
    }

    public final boolean isEmptyMatrix(@Nullable Matrix matrix) {
        return matrix == null || Intrinsics.areEqual(matrix, EMPTY_MATRIX);
    }

    public final float limitIn(float f, float f2, float f3, float f4, float f5) {
        ClosedFloatingPointRange rangeTo;
        Object coerceIn;
        rangeTo = RangesKt__RangesKt.rangeTo(Math.min(f2, f3) + f4, Math.max(f2, f3) - f5);
        coerceIn = RangesKt___RangesKt.coerceIn(Float.valueOf(f), (ClosedFloatingPointRange<Float>) ((ClosedFloatingPointRange<Comparable>) rangeTo));
        return ((Number) coerceIn).floatValue();
    }

    /* renamed from: normalizeAngleTo36-Wa3L5BU, reason: not valid java name */
    public final byte m72178normalizeAngleTo36Wa3L5BU(double angle) {
        int coerceIn;
        coerceIn = RangesKt___RangesKt.coerceIn((int) (angle * 0.1d), 0, 36);
        return coerceIn == 36 ? UByte.m72639constructorimpl((byte) 0) : UByte.m72639constructorimpl((byte) coerceIn);
    }

    public final float parseFloat(@Nullable String str, float defaultValue) {
        if (str != null) {
            try {
            } catch (NumberFormatException unused) {
                return defaultValue;
            }
        }
        return Float.parseFloat(str);
    }

    public final float parseFloat(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "str");
        return parseFloat(str, 0.0f);
    }
}
