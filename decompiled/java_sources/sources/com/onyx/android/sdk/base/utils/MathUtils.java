package com.onyx.android.sdk.base.utils;

import android.graphics.PointF;
import android.text.TextUtils;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0004\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u001d\n\u0002\u0010\u000f\n\u0002\b\u0014\n\u0002\u0010\u0015\n\u0002\u0010\t\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001e\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\b\b\u0002\u0010\u001c\u001a\u00020\u0004J%\u0010\u001d\u001a\u0002H\u001e\"\b\b\u0000\u0010\u001e*\u00020\u001f2\u0006\u0010 \u001a\u0002H\u001e2\u0006\u0010!\u001a\u0002H\u001e¢\u0006\u0002\u0010\"J\u001e\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020%J&\u0010#\u001a\u00020\u00042\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00020)J&\u0010-\u001a\u00020%2\u0006\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u00020)2\u0006\u00100\u001a\u00020)2\u0006\u00101\u001a\u00020)J\u0016\u00102\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u001f2\u0006\u00104\u001a\u00020\u001fJ\u0016\u00105\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u0004J\u0016\u00108\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u0004J&\u00109\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0004J&\u0010:\u001a\u00020)2\u0006\u0010;\u001a\u00020)2\u0006\u0010<\u001a\u00020)2\u0006\u0010=\u001a\u00020)2\u0006\u0010>\u001a\u00020)J\u0016\u0010?\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\u00072\u0006\u0010A\u001a\u00020\u0007J\u001e\u0010B\u001a\u00020%2\u0006\u0010C\u001a\u00020%2\u0006\u0010D\u001a\u00020%2\u0006\u0010E\u001a\u00020%J5\u0010F\u001a\u0002H\u001e\"\u0010\b\u0000\u0010\u001e*\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010G2\u0006\u0010H\u001a\u0002H\u001e2\u0006\u0010I\u001a\u0002H\u001e2\u0006\u0010J\u001a\u0002H\u001e¢\u0006\u0002\u0010KJ\u001e\u0010L\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u00042\u0006\u0010J\u001a\u00020\u0004J\u000e\u0010N\u001a\u00020\u00072\u0006\u0010O\u001a\u00020\u0007J\u0016\u0010P\u001a\u00020\u00042\u0006\u0010Q\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004J\u0016\u0010R\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u001fJ&\u0010S\u001a\u00020)2\u0006\u0010;\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\u00042\u0006\u0010=\u001a\u00020\u00042\u0006\u0010>\u001a\u00020\u0004J\u0016\u0010T\u001a\u00020\u00192\u0006\u0010U\u001a\u00020\u00042\u0006\u0010V\u001a\u00020\u0004J\u0016\u0010W\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u001f2\u0006\u00104\u001a\u00020\u001fJ\u001e\u0010X\u001a\u00020\u00072\u0006\u0010H\u001a\u00020\u00072\u0006\u0010Y\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020\u0007J\u0012\u0010J\u001a\u00020\u00072\n\u0010[\u001a\u00020\\\"\u00020\u0007J\u0012\u0010J\u001a\u00020]2\n\u0010[\u001a\u00020^\"\u00020]J\u000e\u0010_\u001a\u00020\u00042\u0006\u0010`\u001a\u00020aJ\u000e\u0010b\u001a\u00020\u00072\u0006\u0010`\u001a\u00020aJ\u000e\u0010c\u001a\u00020]2\u0006\u0010`\u001a\u00020aJ\u000e\u0010d\u001a\u00020\u00042\u0006\u00106\u001a\u00020\u0004J\u0016\u0010e\u001a\u00020\u00042\u0006\u0010Q\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004J\u0016\u0010f\u001a\u00020\u00072\u0006\u0010H\u001a\u00020a2\u0006\u0010g\u001a\u00020\u0007J\u001e\u0010h\u001a\u00020\u00192\u0006\u0010i\u001a\u00020\u00072\u0006\u0010j\u001a\u00020\u00072\u0006\u0010k\u001a\u00020\u0007J\u001e\u0010l\u001a\u00020\u00192\u0006\u0010H\u001a\u00020\u00072\u0006\u0010I\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u0007J\n\u0010m\u001a\u00020)*\u00020\u001fJ'\u0010n\u001a\u0002H\u001e\"\u000e\b\u0000\u0010\u001e*\b\u0012\u0004\u0012\u0002H\u001e0G*\u0002H\u001e2\u0006\u0010I\u001a\u0002H\u001e¢\u0006\u0002\u0010oJ'\u0010p\u001a\u0002H\u001e\"\u000e\b\u0000\u0010\u001e*\b\u0012\u0004\u0012\u0002H\u001e0G*\u0002H\u001e2\u0006\u0010J\u001a\u0002H\u001e¢\u0006\u0002\u0010oJ\u0012\u0010q\u001a\u00020\u0007*\u00020\u00072\u0006\u0010r\u001a\u00020\u0007J3\u0010F\u001a\u0002H\u001e\"\u000e\b\u0000\u0010\u001e*\b\u0012\u0004\u0012\u0002H\u001e0G*\u0002H\u001e2\u0006\u0010I\u001a\u0002H\u001e2\u0006\u0010J\u001a\u0002H\u001eH\u0007¢\u0006\u0004\bs\u0010KJ\u0012\u0010t\u001a\u00020\u0004*\u00020\u001f2\u0006\u0010u\u001a\u00020\u001fJ8\u0010v\u001a\u00020\u0019*\u00020\u001f2\u0006\u0010j\u001a\u00020\u001f2\u0006\u0010k\u001a\u00020\u001f2\b\b\u0002\u0010w\u001a\u00020\u00192\b\b\u0002\u0010x\u001a\u00020\u00192\b\b\u0002\u0010y\u001a\u00020\u0019J\u0012\u0010z\u001a\u00020\u0004*\u00020\u001f2\u0006\u0010{\u001a\u00020\u001fJ\u0012\u0010|\u001a\u00020\u0019*\u00020\u001f2\u0006\u0010u\u001a\u00020\u001fJ\n\u0010}\u001a\u00020\u0007*\u00020\u001fJ\n\u0010~\u001a\u00020\u0007*\u00020\u001fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u007f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/MathUtils;", "", "()V", "ANGLE_180", "", "ARE_APPROXIMATELY_EQUAL_EPSILON", "DEGREE_0", "", "DEGREE_180", "DEGREE_30", "DEGREE_360", "DEGREE_45", "DEGREE_60", "DEGREE_90", "ONE_HALF", "PI_FLOAT", "PI_HALF_FLOAT", "PI_TWICE_FLOAT", "RAD_15_DEG", "RAD_1_DEG", "RAD_30_DEG", "RAD_60_DEG", "angleToRadian", "angle", "areApproximatelyEqual", "", "num1", "num2", "epsilon", "average", "T", "", "a", "b", "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;", "calculateAngle", "center", "Landroid/graphics/PointF;", Keywords.FUNC_CURRENT_STRING, "previous", "startX", "", "startY", "endX", "endY", "calculateMiddlePointFromTwoPoint", "p1X", "p1Y", "p2X", "p2Y", "calculatePercent", "used", "total", "calculatePerpendicularX", "radian", "hypotenuseLength", "calculatePerpendicularY", "calculateRadian", "calculateRotationAngle", "x1", "y1", "x2", "y2", "calculateRow", "size", "col", "calculateTriangleCentroidPoint", "p1", "p2", "p3", "clamp", "", "value", "min", "max", "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "clampFloat", "target", "closestPowerOfTwo", GoogleApiAvailabilityLight.f29016b, "cos", "radius", "differRateToShorter", "distance", "floatCompare", "f1", "f2", "getIntPercent", "getLimitedValue", "increaseDiff", "maxLimit", "numbers", "", "", "", "parseFloat", ExtensionNamespaceContext.EXSLT_STRING_PREFIX, "", "parseInt", "parseLong", "radianToAngle", "sin", "tryParseInt", "defValue", "withinRange", "number", gon.f71290o0, "end", "withinRangeIncluded", "absolute", "atLeast", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "atMost", "ceilToInt", "divisor", "limit", "differRateTo", "another", "inRange", "includeStart", "includeEnd", "autoSwap", "roundByStep", "step", "sameSignWith", "signFactor", "signOneFactor", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nMathUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MathUtils.kt\ncom/onyx/android/sdk/base/utils/MathUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,353:1\n1#2:354\n*E\n"})
/* loaded from: classes7.dex */
public final class MathUtils {
    public static final float ANGLE_180 = 180.0f;
    public static final float ARE_APPROXIMATELY_EQUAL_EPSILON = 0.001f;
    public static final int DEGREE_0 = 0;
    public static final int DEGREE_180 = 180;
    public static final int DEGREE_30 = 30;
    public static final int DEGREE_360 = 360;
    public static final int DEGREE_45 = 45;
    public static final int DEGREE_60 = 60;
    public static final int DEGREE_90 = 90;

    @NotNull
    public static final MathUtils INSTANCE = new MathUtils();
    public static final float ONE_HALF = 0.5f;
    public static final float PI_FLOAT = 3.1415927f;
    public static final float PI_HALF_FLOAT = 1.5707964f;
    public static final float PI_TWICE_FLOAT = 6.2831855f;
    public static final float RAD_15_DEG = 0.2617994f;
    public static final float RAD_1_DEG = 0.017453292f;
    public static final float RAD_30_DEG = 0.5235988f;
    public static final float RAD_60_DEG = 1.0471976f;

    public static /* synthetic */ boolean areApproximatelyEqual$default(MathUtils mathUtils, float f, float f2, float f3, int i, Object obj) {
        if ((i & 4) != 0) {
            f3 = 0.001f;
        }
        return mathUtils.areApproximatelyEqual(f, f2, f3);
    }

    public static /* synthetic */ boolean inRange$default(MathUtils mathUtils, Number number, Number number2, Number number3, boolean z, boolean z2, boolean z3, int i, Object obj) {
        return mathUtils.inRange(number, number2, number3, (i & 4) != 0 ? true : z, (i & 8) != 0 ? true : z2, (i & 16) != 0 ? false : z3);
    }

    public final double absolute(@NotNull Number number) {
        Intrinsics.checkNotNullParameter(number, "<this>");
        return Math.abs(number.doubleValue());
    }

    public final float angleToRadian(float angle) {
        return (float) Math.toRadians(angle);
    }

    public final boolean areApproximatelyEqual(float num1, float num2, float epsilon) {
        return Math.abs(num1 - num2) <= epsilon;
    }

    @NotNull
    public final <T extends Comparable<? super T>> T atLeast(@NotNull T t, @NotNull T min) {
        Comparable coerceAtLeast;
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(min, "min");
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(t, min);
        return (T) coerceAtLeast;
    }

    @NotNull
    public final <T extends Comparable<? super T>> T atMost(@NotNull T t, @NotNull T max) {
        Comparable coerceAtMost;
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(max, "max");
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(t, max);
        return (T) coerceAtMost;
    }

    @NotNull
    public final <T extends Number> T average(@NotNull T a, @NotNull T b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        double doubleValue = (a.doubleValue() + b.doubleValue()) / 2;
        Intrinsics.checkNotNull(Double.valueOf(doubleValue), "null cannot be cast to non-null type T of com.onyx.android.sdk.base.utils.MathUtils.average");
        return Double.valueOf(doubleValue);
    }

    public final float calculateAngle(@NotNull PointF center, @NotNull PointF r7, @NotNull PointF previous) {
        Intrinsics.checkNotNullParameter(center, "center");
        Intrinsics.checkNotNullParameter(r7, "current");
        Intrinsics.checkNotNullParameter(previous, "previous");
        float f = r7.x - center.x;
        float f2 = r7.y - center.y;
        float sqrt = (float) Math.sqrt((f * f) + (f2 * f2));
        float f3 = f / sqrt;
        float f4 = f2 / sqrt;
        float f5 = previous.x - center.x;
        float f6 = previous.y - center.y;
        float sqrt2 = (float) Math.sqrt((f5 * f5) + (f6 * f6));
        float degrees = (float) Math.toDegrees(Math.atan2(f6 / sqrt2, f5 / sqrt2) - Math.atan2(f4, f3));
        return degrees > 0.0f ? degrees : degrees + 360.0f;
    }

    @NotNull
    public final PointF calculateMiddlePointFromTwoPoint(double p1X, double p1Y, double p2X, double p2Y) {
        return new PointF((float) ((p1X + p2X) / 2), ((float) (p1Y + p2Y)) / 2);
    }

    public final float calculatePercent(@NotNull Number used, @NotNull Number total) {
        Intrinsics.checkNotNullParameter(used, "used");
        Intrinsics.checkNotNullParameter(total, "total");
        if (total.floatValue() <= 0.0f) {
            return 0.0f;
        }
        return (used.floatValue() * 100.0f) / total.floatValue();
    }

    public final float calculatePerpendicularX(float radian, float hypotenuseLength) {
        return (-((float) Math.sin(radian))) * hypotenuseLength;
    }

    public final float calculatePerpendicularY(float radian, float hypotenuseLength) {
        return ((float) Math.cos(radian)) * hypotenuseLength;
    }

    public final float calculateRadian(float startX, float startY, float endX, float endY) {
        return (float) Math.atan2(endY - startY, endX - startX);
    }

    public final double calculateRotationAngle(double x1, double y1, double x2, double y2) {
        double atan2 = Math.atan2(y2 - y1, x2 - x1) * 57.29577951308232d;
        return atan2 < 0.0d ? atan2 + 360 : atan2;
    }

    public final int calculateRow(int size, int col) {
        if (col <= 0) {
            return 0;
        }
        int i = size / col;
        return size % col != 0 ? i + 1 : i;
    }

    @NotNull
    public final PointF calculateTriangleCentroidPoint(@NotNull PointF p1, @NotNull PointF p2, @NotNull PointF p3) {
        Intrinsics.checkNotNullParameter(p1, "p1");
        Intrinsics.checkNotNullParameter(p2, "p2");
        Intrinsics.checkNotNullParameter(p3, "p3");
        float f = 3;
        return new PointF(((p1.x + p2.x) + p3.x) / f, ((p1.y + p2.y) + p3.y) / f);
    }

    public final int ceilToInt(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    public final <T extends Comparable<? super T>> T clamp(T value, T min, T max) {
        Intrinsics.checkNotNull(max);
        if (max.compareTo(value) <= 0) {
            value = max;
        }
        Intrinsics.checkNotNull(min);
        return min.compareTo(value) > 0 ? min : value;
    }

    public final float clampFloat(float target, float min, float max) {
        float coerceAtMost;
        float coerceAtLeast;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(max, target);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(min, coerceAtMost);
        return coerceAtLeast;
    }

    public final int closestPowerOfTwo(int r1) {
        if (r1 == 0) {
            return 1;
        }
        return 1 << (32 - Integer.numberOfLeadingZeros(r1 - 1));
    }

    public final float cos(float radius, float angle) {
        return (float) (Math.cos(angleToRadian(angle)) * radius);
    }

    public final float differRateTo(@NotNull Number number, @NotNull Number another) {
        Intrinsics.checkNotNullParameter(number, "<this>");
        Intrinsics.checkNotNullParameter(another, "another");
        return differRateToShorter(number, another);
    }

    public final float differRateToShorter(@NotNull Number num1, @NotNull Number num2) {
        Intrinsics.checkNotNullParameter(num1, "num1");
        Intrinsics.checkNotNullParameter(num2, "num2");
        try {
            double abs = Math.abs(num1.doubleValue());
            double abs2 = Math.abs(num2.doubleValue());
            double abs3 = Math.abs(abs - abs2) / Math.min(abs, abs2);
            if (Double.isNaN(abs3)) {
                return Float.MAX_VALUE;
            }
            if (Double.isInfinite(abs3)) {
                return Float.MAX_VALUE;
            }
            return (float) abs3;
        } catch (Throwable unused) {
            return Float.MAX_VALUE;
        }
    }

    public final double distance(float x1, float y1, float x2, float y2) {
        return Math.hypot(Math.abs(x1 - x2), Math.abs(y1 - y2));
    }

    public final boolean floatCompare(float f1, float f2) {
        return Float.compare(f1, f2) == 0;
    }

    public final int getIntPercent(@NotNull Number r2, @NotNull Number total) {
        float coerceIn;
        Intrinsics.checkNotNullParameter(r2, "current");
        Intrinsics.checkNotNullParameter(total, "total");
        if (Intrinsics.areEqual(total, Float.valueOf(0.0f))) {
            return 0;
        }
        coerceIn = RangesKt___RangesKt.coerceIn((r2.floatValue() / total.floatValue()) * 100, 0.0f, 100.0f);
        return (int) coerceIn;
    }

    public final int getLimitedValue(int value, int increaseDiff, int maxLimit) {
        int i = value + increaseDiff;
        return i >= maxLimit ? maxLimit : i;
    }

    public final boolean inRange(@NotNull Number number, @NotNull Number start, @NotNull Number end, boolean z, boolean z2, boolean z3) {
        Intrinsics.checkNotNullParameter(number, "<this>");
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        double doubleValue = start.doubleValue();
        double doubleValue2 = end.doubleValue();
        if (z3 && doubleValue2 < doubleValue) {
            doubleValue2 = doubleValue;
            doubleValue = doubleValue2;
        }
        double doubleValue3 = number.doubleValue();
        boolean z4 = !z ? doubleValue3 <= doubleValue : doubleValue3 < doubleValue;
        double doubleValue4 = number.doubleValue();
        return z4 && (!z2 ? (doubleValue4 > doubleValue2 ? 1 : (doubleValue4 == doubleValue2 ? 0 : -1)) < 0 : (doubleValue4 > doubleValue2 ? 1 : (doubleValue4 == doubleValue2 ? 0 : -1)) <= 0);
    }

    @JvmName(name = "limit")
    @NotNull
    public final <T extends Comparable<? super T>> T limit(@NotNull T t, @NotNull T min, @NotNull T max) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(min, "min");
        Intrinsics.checkNotNullParameter(max, "max");
        return (T) clamp(t, min, max);
    }

    public final int max(@NotNull int... numbers) {
        Intrinsics.checkNotNullParameter(numbers, "numbers");
        int i = numbers[0];
        for (int i2 : numbers) {
            i = Math.max(i, i2);
        }
        return i;
    }

    public final float parseFloat(@NotNull String r1) {
        Intrinsics.checkNotNullParameter(r1, "str");
        return NumberUtils.toFloat(r1);
    }

    public final int parseInt(@NotNull String r1) {
        Intrinsics.checkNotNullParameter(r1, "str");
        return NumberUtils.toInt(r1);
    }

    public final long parseLong(@NotNull String r1) {
        Intrinsics.checkNotNullParameter(r1, "str");
        return NumberUtils.toLong(r1);
    }

    public final float radianToAngle(float radian) {
        return (float) Math.toDegrees(radian);
    }

    public final float roundByStep(@NotNull Number number, @NotNull Number step) {
        int roundToInt;
        Intrinsics.checkNotNullParameter(number, "<this>");
        Intrinsics.checkNotNullParameter(step, "step");
        float floatValue = number.floatValue();
        float floatValue2 = step.floatValue();
        roundToInt = MathKt__MathJVMKt.roundToInt(floatValue / floatValue2);
        return floatValue2 * roundToInt;
    }

    public final boolean sameSignWith(@NotNull Number number, @NotNull Number another) {
        Intrinsics.checkNotNullParameter(number, "<this>");
        Intrinsics.checkNotNullParameter(another, "another");
        return signFactor(number) == signFactor(another);
    }

    public final int signFactor(@NotNull Number number) {
        Intrinsics.checkNotNullParameter(number, "<this>");
        if (number.doubleValue() > 0.0d) {
            return 1;
        }
        return number.doubleValue() < 0.0d ? -1 : 0;
    }

    public final int signOneFactor(@NotNull Number number) {
        Intrinsics.checkNotNullParameter(number, "<this>");
        Double valueOf = Double.valueOf(Math.signum(number.doubleValue()));
        if (!(!(valueOf.doubleValue() == 0.0d))) {
            valueOf = null;
        }
        return ((Number) AnyKt.getOrElse(valueOf, new Function0<Object>() { // from class: com.onyx.android.sdk.base.utils.MathUtils$signOneFactor$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Object invoke() {
                return Float.valueOf(1.0f);
            }
        })).intValue();
    }

    public final float sin(float radius, float angle) {
        return (float) (Math.sin(angleToRadian(angle)) * radius);
    }

    public final int tryParseInt(@NotNull String value, int defValue) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (!TextUtils.isEmpty(value)) {
            try {
            } catch (NumberFormatException unused) {
                return defValue;
            }
        }
        return Integer.parseInt(value);
    }

    public final boolean withinRange(int number, int r2, int end) {
        int coerceAtMost;
        int coerceAtLeast;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(r2, end);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(r2, end);
        return coerceAtMost <= number && number < coerceAtLeast;
    }

    public final boolean withinRangeIncluded(int value, int min, int max) {
        int coerceAtMost;
        int coerceAtLeast;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(min, max);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(min, max);
        return coerceAtMost <= value && value <= coerceAtLeast;
    }

    public final long max(@NotNull long... numbers) {
        Intrinsics.checkNotNullParameter(numbers, "numbers");
        long j = numbers[0];
        for (long j2 : numbers) {
            j = RangesKt___RangesKt.coerceAtLeast(j, j2);
        }
        return j;
    }

    public final float calculateAngle(double startX, double startY, double endX, double endY) {
        double d = (endY - startY) / (endX - startX);
        if (Double.isNaN(d)) {
            d = 0.0d;
        }
        float radianToAngle = radianToAngle((float) Math.atan(Math.abs(d)));
        return (endX < startX || endY < startY) ? (endX < startX || endY > startY) ? (endX > startX || endY < startY) ? 180.0f - radianToAngle : radianToAngle - 180.0f : radianToAngle : -radianToAngle;
    }
}
