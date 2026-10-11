package com.onyx.android.sdk.replicator.note.utils;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.replicator.note.data.shape.TransformRectF;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ \u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\r\u001a\u00020\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/utils/ShapeUtils;", "", "()V", "getTransformRect", "Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;", "originRectF", "Landroid/graphics/RectF;", "matrix", "Landroid/graphics/Matrix;", "migrateAbsPoints", "pointList", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "shapeMatrix", "shapeType", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeUtils {

    @NotNull
    public static final ShapeUtils INSTANCE = new ShapeUtils();

    @NotNull
    public final TransformRectF getTransformRect(@NotNull RectF originRectF, @NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(originRectF, "originRectF");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        TransformRectF transformRectF = new TransformRectF(null, 0.0f, 3, null);
        TouchPoint touchPoint = new TouchPoint(originRectF.left, originRectF.top);
        touchPoint.applyMatrix(matrix);
        TouchPoint touchPoint2 = new TouchPoint(originRectF.right, originRectF.top);
        touchPoint2.applyMatrix(matrix);
        TouchPoint touchPoint3 = new TouchPoint(originRectF.left, originRectF.bottom);
        touchPoint3.applyMatrix(matrix);
        TouchPoint touchPoint4 = new TouchPoint(originRectF.centerX(), originRectF.centerY());
        touchPoint4.applyMatrix(matrix);
        TouchPoint.Companion companion = TouchPoint.INSTANCE;
        float pointDistance = companion.getPointDistance(touchPoint.getX(), touchPoint.getY(), touchPoint3.getX(), touchPoint3.getY());
        float f = 2;
        float pointDistance2 = companion.getPointDistance(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY()) / f;
        float f2 = pointDistance / f;
        RectF rectF = new RectF(touchPoint4.getX() - pointDistance2, touchPoint4.getY() - f2, touchPoint4.getX() + pointDistance2, touchPoint4.getY() + f2);
        float matrixRotateAngel = MatrixKt.getMatrixRotateAngel(matrix, originRectF);
        transformRectF.setOriginRectF(rectF);
        transformRectF.setAngle(matrixRotateAngel);
        return transformRectF;
    }

    @NotNull
    public final Matrix migrateAbsPoints(@NotNull TouchPointList pointList, @Nullable Matrix shapeMatrix, int shapeType) {
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        Matrix matrix = new Matrix(shapeMatrix);
        Matrix matrix2 = new Matrix();
        RectF boundingRect = pointList.getBoundingRect();
        Intrinsics.checkNotNull(boundingRect);
        TransformRectF transformRect = getTransformRect(boundingRect, matrix);
        matrix.postRotate(-transformRect.getAngle(), transformRect.getOriginCenterX(), transformRect.getOriginCenterY());
        matrix2.postRotate(transformRect.getAngle(), transformRect.getOriginCenterX(), transformRect.getOriginCenterY());
        pointList.applyMatrix(matrix);
        return matrix2;
    }
}
