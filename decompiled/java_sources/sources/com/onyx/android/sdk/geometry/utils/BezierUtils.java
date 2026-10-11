package com.onyx.android.sdk.geometry.utils;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt__RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J\u001e\u0010\b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J\u001e\u0010\n\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002J&\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fJ/\u0010\u0010\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J.\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0002R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/utils/BezierUtils;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", gon.f71290o0, SessionDescription.f26438n, "end", "getHalfPoint", "half", "getControlPoint", "any", "getControlPointByAnyPoint", "ctrl", "", "t", "getPointByPosition", "point", "getPositionByPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Ljava/lang/Float;", "", "testPositionPoint", "", "a", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "POSITION_T", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBezierUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BezierUtils.kt\ncom/onyx/android/sdk/geometry/utils/BezierUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n766#2:82\n857#2,2:83\n*S KotlinDebug\n*F\n+ 1 BezierUtils.kt\ncom/onyx/android/sdk/geometry/utils/BezierUtils\n*L\n62#1:82\n62#1:83,2\n*E\n"})
/* loaded from: classes7.dex */
public final class BezierUtils {

    @NotNull
    public static final BezierUtils INSTANCE = new BezierUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final double POSITION_T = 0.5d;

    @NotNull
    public final TouchPoint getControlPoint(@NotNull TouchPoint start, @NotNull TouchPoint half, @NotNull TouchPoint end) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(half, "half");
        Intrinsics.checkNotNullParameter(end, "end");
        TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        double d = 1 - 0.5d;
        double d2 = 2 * 0.5d * d;
        touchPoint.setX((float) (((half.getX() - (Math.pow(d, 2.0d) * start.getX())) - (Math.pow(0.5d, 2.0d) * end.getX())) / d2));
        touchPoint.setY((float) (((half.getY() - (Math.pow(d, 2.0d) * start.getY())) - (Math.pow(0.5d, 2.0d) * end.getY())) / d2));
        return touchPoint;
    }

    @NotNull
    public final TouchPoint getControlPointByAnyPoint(@NotNull TouchPoint start, @NotNull TouchPoint end, @NotNull TouchPoint any) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        Intrinsics.checkNotNullParameter(any, "any");
        TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        touchPoint.setX(((any.getX() * 2.0f) - (start.getX() * 0.5f)) - (end.getX() * 0.5f));
        touchPoint.setY(((any.getY() * 2.0f) - (start.getY() * 0.5f)) - (end.getY() * 0.5f));
        return touchPoint;
    }

    @NotNull
    public final TouchPoint getHalfPoint(@NotNull TouchPoint start, @NotNull TouchPoint control, @NotNull TouchPoint end) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(control, "control");
        Intrinsics.checkNotNullParameter(end, "end");
        TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        double d = 1 - 0.5d;
        double d2 = 2 * 0.5d * d;
        touchPoint.setX((float) ((Math.pow(d, 2.0d) * start.getX()) + (control.getX() * d2) + (Math.pow(0.5d, 2.0d) * end.getX())));
        touchPoint.setY((float) ((Math.pow(d, 2.0d) * start.getY()) + (d2 * control.getY()) + (Math.pow(0.5d, 2.0d) * end.getY())));
        return touchPoint;
    }

    @NotNull
    public final TouchPoint getPointByPosition(@NotNull TouchPoint start, @NotNull TouchPoint ctrl, @NotNull TouchPoint end, float t) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(ctrl, "ctrl");
        Intrinsics.checkNotNullParameter(end, "end");
        float f = 1 - t;
        float f2 = f * f;
        float f3 = 2 * t * f;
        float f4 = t * t;
        return new TouchPoint((start.getX() * f2) + (ctrl.getX() * f3) + (end.getX() * f4), (f2 * start.getY()) + (f3 * ctrl.getY()) + (f4 * end.getY()));
    }

    @Nullable
    public final Float getPositionByPoint(@NotNull TouchPoint start, @NotNull TouchPoint ctrl, @NotNull TouchPoint end, @NotNull TouchPoint point) {
        ClosedFloatingPointRange rangeTo;
        List listOf;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(ctrl, "ctrl");
        Intrinsics.checkNotNullParameter(end, "end");
        Intrinsics.checkNotNullParameter(point, "point");
        float f = 2;
        float x = (start.getX() - (ctrl.getX() * f)) + end.getX();
        float x2 = ((-2) * start.getX()) + (ctrl.getX() * f);
        float x3 = start.getX() - point.getX();
        rangeTo = RangesKt__RangesKt.rangeTo(0.0f, 1.0f);
        float f2 = -x2;
        double d = (x2 * x2) - ((4 * x) * x3);
        float f3 = f * x;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf((((float) Math.sqrt(d)) + f2) / f3), Float.valueOf((f2 - ((float) Math.sqrt(d))) / f3)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listOf) {
            float floatValue = ((Number) obj).floatValue();
            if (rangeTo.contains(Float.valueOf(floatValue)) && INSTANCE.testPositionPoint(start, ctrl, end, floatValue, point)) {
                arrayList.add(obj);
            }
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) arrayList);
        return (Float) firstOrNull;
    }

    public final boolean testPositionPoint(@NotNull TouchPoint start, @NotNull TouchPoint ctrl, @NotNull TouchPoint end, float t, @NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(ctrl, "ctrl");
        Intrinsics.checkNotNullParameter(end, "end");
        Intrinsics.checkNotNullParameter(point, "point");
        float f = 1 - t;
        float f2 = f * f;
        float f3 = 2 * t * f;
        float f4 = t * t;
        return TouchPoint.equalXYApproximately$default(new TouchPoint((start.getX() * f2) + (ctrl.getX() * f3) + (end.getX() * f4), (f2 * start.getY()) + (f3 * ctrl.getY()) + (f4 * end.getY())), point, null, 2, null);
    }
}
