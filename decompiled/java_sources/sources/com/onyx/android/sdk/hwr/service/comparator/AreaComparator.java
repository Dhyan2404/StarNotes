package com.onyx.android.sdk.hwr.service.comparator;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.GeometryType;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.geometry.utils.ShapeAreaUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\fH\u0016¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/comparator/AreaComparator;", "Lcom/onyx/android/sdk/hwr/service/comparator/ShapeCandidateComparator;", "()V", "compare", "", "firstShape", "", "nextShape", "firstShapeArgs", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "nextShapeArgs", "originPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getSupportedShapes", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AreaComparator implements ShapeCandidateComparator {

    @NotNull
    public static final AreaComparator INSTANCE = new AreaComparator();

    @Override // com.onyx.android.sdk.hwr.service.comparator.ShapeCandidateComparator
    public int compare(@NotNull String firstShape, @NotNull String nextShape, @NotNull GeometryArgs firstShapeArgs, @NotNull GeometryArgs nextShapeArgs, @NotNull List<TouchPoint> originPoints) {
        Intrinsics.checkNotNullParameter(firstShape, "firstShape");
        Intrinsics.checkNotNullParameter(nextShape, "nextShape");
        Intrinsics.checkNotNullParameter(firstShapeArgs, "firstShapeArgs");
        Intrinsics.checkNotNullParameter(nextShapeArgs, "nextShapeArgs");
        Intrinsics.checkNotNullParameter(originPoints, "originPoints");
        int area = PathKt.area(PathKt.createPathFrom$default(originPoints, null, 2, null));
        ShapeAreaUtils shapeAreaUtils = ShapeAreaUtils.INSTANCE;
        return Math.abs(((int) shapeAreaUtils.getShapeArea(firstShape, firstShapeArgs)) - area) - Math.abs(((int) shapeAreaUtils.getShapeArea(nextShape, nextShapeArgs)) - area);
    }

    @Override // com.onyx.android.sdk.hwr.service.comparator.ShapeCandidateComparator
    @NotNull
    public List<String> getSupportedShapes() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{GeometryType.ELLIPSE, "Triangle", "Rectangle", GeometryType.PENTAGON, GeometryType.PENTAGRAM});
        return listOf;
    }
}
