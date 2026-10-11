package com.onyx.android.sdk.geometry.utils;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.GeometryType;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.extension.PathKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/utils/ShapeAreaUtils;", "", "()V", "getEllipseArea", "", "args", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "getPentagonArea", "getPentagramArea", "getRectangleArea", "getShapeArea", "shape", "", "getTriangleArea", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ShapeAreaUtils {

    @NotNull
    public static final ShapeAreaUtils INSTANCE = new ShapeAreaUtils();

    public final float getEllipseArea(@NotNull GeometryArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return args.getRx() * 3.1415927f * args.getRy();
    }

    public final float getPentagonArea(@NotNull GeometryArgs args) {
        List listOf;
        Intrinsics.checkNotNullParameter(args, "args");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{args.getPoints().get(0), args.getPoints().get(1), args.getPoints().get(2), args.getPoints().get(3), args.getPoints().get(4)});
        return PathKt.area((List<TouchPoint>) listOf);
    }

    public final float getPentagramArea(@NotNull GeometryArgs args) {
        List listOf;
        Intrinsics.checkNotNullParameter(args, "args");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{args.getPoints().get(0), args.getPoints().get(2), args.getPoints().get(4), args.getPoints().get(1), args.getPoints().get(3)});
        return PathKt.area((List<TouchPoint>) listOf);
    }

    public final float getRectangleArea(@NotNull GeometryArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        return args.getWidth() * args.getHeight();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final float getShapeArea(@NotNull String shape, @NotNull GeometryArgs args) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(args, "args");
        switch (shape.hashCode()) {
            case -1169699505:
                if (shape.equals("Rectangle")) {
                    return getRectangleArea(args);
                }
                return -1.0f;
            case -677350275:
                if (shape.equals(GeometryType.PENTAGRAM)) {
                    return getPentagramArea(args);
                }
                return -1.0f;
            case 8172478:
                if (shape.equals(GeometryType.ELLIPSE)) {
                    return getEllipseArea(args);
                }
                return -1.0f;
            case 393791904:
                if (shape.equals(GeometryType.PENTAGON)) {
                    return getPentagonArea(args);
                }
                return -1.0f;
            case 1562406440:
                if (shape.equals("Triangle")) {
                    return getTriangleArea(args);
                }
                return -1.0f;
            default:
                return -1.0f;
        }
    }

    public final float getTriangleArea(@NotNull GeometryArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        TouchPoint touchPoint = args.getPoints().get(0);
        TouchPoint touchPoint2 = args.getPoints().get(1);
        TouchPoint touchPoint3 = args.getPoints().get(2);
        TouchPointPair touchPointPair = new TouchPointPair(touchPoint, touchPoint2);
        return Math.abs((touchPointPair.length() * touchPointPair.distance(touchPoint3)) / 2);
    }
}
