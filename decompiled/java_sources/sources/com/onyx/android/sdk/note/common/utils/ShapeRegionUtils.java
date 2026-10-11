package com.onyx.android.sdk.note.common.utils;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.graphics.Region;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.extension.PathKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001c\u0010\t\u001a\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\f\u001a\u00020\rJ\"\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0004J\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u000bJ\u0016\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0010¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;", "", "()V", "containsPath", "", "region", "Landroid/graphics/Region;", "path", "Landroid/graphics/Path;", "containsPoint", "regions", "", "point", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "createRegionByPath", "rectF", "Landroid/graphics/RectF;", "useDefaultRect", "createRegionsByPaths", "paths", "intersects", "rect", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeRegionUtils {

    @NotNull
    public static final ShapeRegionUtils INSTANCE = new ShapeRegionUtils();

    public static /* synthetic */ Region createRegionByPath$default(ShapeRegionUtils shapeRegionUtils, Path path, RectF rectF, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            rectF = new RectF();
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return shapeRegionUtils.createRegionByPath(path, rectF, z);
    }

    public final boolean containsPath(@NotNull Region region, @NotNull Path path) {
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(path, "path");
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        float[] fArr = new float[2];
        float f = 0.0f;
        while (f < length) {
            if (pathMeasure.getPosTan(f, fArr, null) && !region.contains((int) fArr[0], (int) fArr[1])) {
                return false;
            }
            Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
            Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
            f += FLOAT_ONE.floatValue();
        }
        return true;
    }

    public final boolean containsPoint(@NotNull List<? extends Region> regions, @NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(regions, "regions");
        Intrinsics.checkNotNullParameter(point, "point");
        if (regions.isEmpty()) {
            return false;
        }
        Iterator<? extends Region> it2 = regions.iterator();
        while (it2.hasNext()) {
            if (it2.next().contains((int) point.getX(), (int) point.getY())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final Region createRegionByPath(@NotNull Path path, @NotNull RectF rectF, boolean useDefaultRect) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        return PathKt.createRegion(path, rectF, useDefaultRect);
    }

    @NotNull
    public final List<Region> createRegionsByPaths(@NotNull List<? extends Path> paths) {
        Intrinsics.checkNotNullParameter(paths, "paths");
        ArrayList arrayList = new ArrayList();
        if (paths.isEmpty()) {
            return arrayList;
        }
        Iterator<? extends Path> it2 = paths.iterator();
        while (it2.hasNext()) {
            arrayList.add(createRegionByPath$default(this, it2.next(), null, false, 6, null));
        }
        return arrayList;
    }

    public final boolean intersects(@NotNull Region region, @NotNull RectF rect) {
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(rect, "rect");
        Region region2 = new Region();
        region2.set((int) Math.floor(rect.left), (int) Math.floor(rect.top), (int) Math.ceil(rect.right), (int) Math.ceil(rect.bottom));
        return region2.op(region, Region.Op.INTERSECT);
    }
}
