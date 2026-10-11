package com.onyx.android.sdk.note.common.utils;

import android.graphics.Path;
import android.graphics.PathMeasure;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.common.shape.Shape;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeSplitUtils;", "", "()V", "savePathToShape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "path", "Landroid/graphics/Path;", "shapeType", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeSplitUtils {

    @NotNull
    public static final ShapeSplitUtils INSTANCE = new ShapeSplitUtils();

    public static /* synthetic */ Shape savePathToShape$default(ShapeSplitUtils shapeSplitUtils, Shape shape, Path path, int i, int i2, Object obj) throws CloneNotSupportedException {
        if ((i2 & 4) != 0) {
            i = 36;
        }
        return shapeSplitUtils.savePathToShape(shape, path, i);
    }

    @Nullable
    public final Shape savePathToShape(@NotNull Shape shape, @Nullable Path path, int shapeType) throws CloneNotSupportedException {
        Intrinsics.checkNotNullParameter(shape, "shape");
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float[] fArr = new float[2];
        float length = pathMeasure.getLength();
        TouchPointList touchPointList = new TouchPointList();
        for (float f = 0.0f; f < length; f += 1.0f) {
            if (pathMeasure.getPosTan(f, fArr, null)) {
                touchPointList.add(PointUtils.INSTANCE.createTouchPoint(fArr[0], fArr[1]));
            } else {
                Debug.INSTANCE.m32035d(ShapeUtils.class, "null point", new Object[0]);
            }
        }
        if (touchPointList.size() <= 1) {
            return null;
        }
        Shape cloneNewShape = ShapeCopyUtils.INSTANCE.cloneNewShape(shape, shapeType);
        cloneNewShape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().clear();
        cloneNewShape.addPoints(touchPointList);
        return cloneNewShape;
    }
}
