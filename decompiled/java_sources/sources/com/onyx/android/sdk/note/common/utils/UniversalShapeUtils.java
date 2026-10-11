package com.onyx.android.sdk.note.common.utils;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.utils.RawResourceUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0012\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/UniversalShapeUtils;", "", "()V", "createTransformMatrixByPoints", "Landroid/graphics/Matrix;", "shapeArgs", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "universalShape", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "pageBox", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "createTransformMatrixByRect", "loadJson", "", GeoConstant.KEY_Universal_Shape_Type, "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class UniversalShapeUtils {

    @NotNull
    public static final UniversalShapeUtils INSTANCE = new UniversalShapeUtils();

    @NotNull
    public final Matrix createTransformMatrixByPoints(@NotNull GeometryArgs shapeArgs, @NotNull UniversalShape universalShape, @NotNull BoxInfo pageBox) {
        Intrinsics.checkNotNullParameter(shapeArgs, "shapeArgs");
        Intrinsics.checkNotNullParameter(universalShape, "universalShape");
        Intrinsics.checkNotNullParameter(pageBox, "pageBox");
        Matrix noteNormalizeMatrix = BoxInfoUtils.INSTANCE.noteNormalizeMatrix(pageBox);
        universalShape.updateBySelectionPoints(GeometryUtils.INSTANCE.copy(shapeArgs.getPoints()), true);
        return noteNormalizeMatrix;
    }

    @NotNull
    public final Matrix createTransformMatrixByRect(@NotNull GeometryArgs shapeArgs, @NotNull UniversalShape universalShape, @NotNull BoxInfo pageBox) {
        Intrinsics.checkNotNullParameter(shapeArgs, "shapeArgs");
        Intrinsics.checkNotNullParameter(universalShape, "universalShape");
        Intrinsics.checkNotNullParameter(pageBox, "pageBox");
        RectF pointsBoundingRect = universalShape.getPointsBoundingRect();
        Matrix noteNormalizeMatrix = BoxInfoUtils.INSTANCE.noteNormalizeMatrix(pageBox);
        float width = shapeArgs.getWidth() / pointsBoundingRect.width();
        float height = shapeArgs.getHeight() / pointsBoundingRect.height();
        float radToDegree = GeometryUtils.INSTANCE.radToDegree(shapeArgs.getRotation());
        Matrix matrix = new Matrix();
        matrix.postScale(shapeArgs.getSx(), shapeArgs.getSy(), pointsBoundingRect.centerX(), pointsBoundingRect.centerY());
        matrix.postScale(width, height, 0.0f, 0.0f);
        matrix.postTranslate(shapeArgs.getLeft(), shapeArgs.getTop());
        matrix.postRotate(radToDegree, shapeArgs.getRotateX(), shapeArgs.getRotateY());
        matrix.postConcat(noteNormalizeMatrix);
        return matrix;
    }

    @Nullable
    public final String loadJson(@Nullable String universalShapeType) {
        if (universalShapeType == null) {
            return null;
        }
        ResManager resManager = ResManager.INSTANCE;
        return RawResourceUtil.INSTANCE.contentOfRawResource(resManager.getAppContext(), resManager.getRawIdentifier(universalShapeType + "_geojson"));
    }
}
