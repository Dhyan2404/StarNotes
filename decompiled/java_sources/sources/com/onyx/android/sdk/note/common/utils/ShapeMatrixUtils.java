package com.onyx.android.sdk.note.common.utils;

import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.geometry.data.MirrorType;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.shape.TransformRectF;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0004J\u001e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u001e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016J&\u0010\u000f\u001a\u00020\u00102\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00182\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J&\u0010\u001b\u001a\u00020\u00102\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00182\u0006\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0014J(\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00192\b\u0010\u001f\u001a\u0004\u0018\u00010\n2\u0006\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u0016J.\u0010\u001d\u001a\u00020\u00102\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00182\u0006\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\nJ&\u0010#\u001a\u00020\u00102\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00182\u0006\u0010$\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u0016¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;", "", "()V", "getNoRotationPointMatrix", "Landroid/graphics/Matrix;", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getTransformRect", "Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;", "originRectF", "Landroid/graphics/RectF;", "matrix", "matrixTouchPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", Constant.SRC_TAG, "mirror", "", "type", "Lcom/onyx/android/sdk/geometry/data/MirrorType;", "centerPoint", "Landroid/graphics/PointF;", "distance", "", "shapes", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "mirrorType", "rotate", "angle", "scale", "shape", UniversalShapeTypeConst.RECTANGLE, "sx", "sy", "rectF", "translate", "dx", "dy", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShapeMatrixUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeMatrixUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n1855#2,2:157\n1855#2,2:159\n1855#2,2:161\n1855#2,2:163\n*S KotlinDebug\n*F\n+ 1 ShapeMatrixUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils\n*L\n33#1:157,2\n40#1:159,2\n56#1:161,2\n67#1:163,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeMatrixUtils {

    @NotNull
    public static final ShapeMatrixUtils INSTANCE = new ShapeMatrixUtils();

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MirrorType.values().length];
            try {
                iArr[MirrorType.XAxisMirror.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MirrorType.YAxisMirror.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public final Matrix getNoRotationPointMatrix(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        int windowRotation = renderContext.getRenderMeasure().getWindowRotation();
        Point viewPoint = renderContext.getRenderMeasure().getViewPoint();
        Matrix matrix = new Matrix();
        matrix.postTranslate(viewPoint.x, viewPoint.y);
        matrix.postRotate(renderContext.getRenderMeasure().getWindowAngle());
        if (windowRotation == 1) {
            matrix.postTranslate(ResManager.INSTANCE.getShorterRealScreenSize(), 0.0f);
        } else if (windowRotation == 2) {
            ResManager resManager = ResManager.INSTANCE;
            matrix.postTranslate(resManager.getShorterRealScreenSize(), resManager.getLongerRealScreenSize());
        } else if (windowRotation == 3) {
            matrix.postTranslate(0.0f, ResManager.INSTANCE.getLongerRealScreenSize());
        }
        return matrix;
    }

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
    public final TouchPoint matrixTouchPoint(@NotNull TouchPoint src, @NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(src, "src");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        TouchPoint touchPoint = new TouchPoint(src);
        float[] fArr = {src.getX(), src.getY()};
        matrix.mapPoints(fArr);
        touchPoint.setX(fArr[0]);
        touchPoint.setY(fArr[1]);
        return touchPoint;
    }

    public final void mirror(@Nullable List<? extends Shape> shapes, @NotNull MirrorType mirrorType, @NotNull PointF centerPoint) {
        float f;
        float f2;
        Intrinsics.checkNotNullParameter(mirrorType, "mirrorType");
        Intrinsics.checkNotNullParameter(centerPoint, "centerPoint");
        List<? extends Shape> list = shapes;
        if (list == null || list.isEmpty()) {
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[mirrorType.ordinal()];
        if (i == 1) {
            f = 2;
            f2 = centerPoint.x;
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            f = 2;
            f2 = centerPoint.y;
        }
        float f3 = f * f2;
        Iterator<T> it2 = shapes.iterator();
        while (it2.hasNext()) {
            ((Shape) it2.next()).onMirror(mirrorType, f3);
        }
    }

    public final void rotate(@Nullable List<? extends Shape> shapes, float angle, @NotNull PointF centerPoint) {
        Intrinsics.checkNotNullParameter(centerPoint, "centerPoint");
        List<? extends Shape> list = shapes;
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<T> it2 = shapes.iterator();
        while (it2.hasNext()) {
            ((Shape) it2.next()).onRotate(angle, centerPoint);
        }
    }

    public final void scale(@Nullable List<? extends Shape> shapes, float sx, float sy, @NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        List<? extends Shape> list = shapes;
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<T> it2 = shapes.iterator();
        while (it2.hasNext()) {
            ((Shape) it2.next()).onScale(sx, sy, rectF);
        }
    }

    public final void translate(@Nullable List<? extends Shape> shapes, float dx, float dy) {
        List<? extends Shape> list = shapes;
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<T> it2 = shapes.iterator();
        while (it2.hasNext()) {
            ((Shape) it2.next()).onTranslate(dx, dy);
        }
    }

    public final void scale(@NotNull Shape shape, @Nullable RectF rectangle, float sx, float sy) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        RectF shapeOriginRectWithWidth = ShapeRectUtils.INSTANCE.getShapeOriginRectWithWidth(shape);
        Matrix shapeMatrix = shape.getShapeMatrix();
        if (shapeMatrix == null) {
            shapeMatrix = new Matrix();
        }
        TransformRectF transformRect = getTransformRect(shapeOriginRectWithWidth, shapeMatrix);
        PointF pointF = new PointF(transformRect.getOriginCenterX(), transformRect.getOriginCenterY());
        shape.onPreRotate(transformRect.getAngle(), pointF);
        Intrinsics.checkNotNull(rectangle);
        shape.onScale(sx, sy, rectangle);
        shape.onPreRotate(-transformRect.getAngle(), pointF);
    }

    public final void mirror(@NotNull Matrix matrix, @NotNull MirrorType type, @NotNull PointF centerPoint) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(centerPoint, "centerPoint");
        mirror(matrix, type, (type == MirrorType.XAxisMirror ? centerPoint.x : centerPoint.y) * 2);
    }

    public final void mirror(@NotNull Matrix matrix, @NotNull MirrorType type, float distance) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Intrinsics.checkNotNullParameter(type, "type");
        int i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1) {
            matrix.postScale(-1.0f, 1.0f);
            matrix.postTranslate(distance, 0.0f);
        } else {
            if (i != 2) {
                return;
            }
            matrix.postScale(1.0f, -1.0f);
            matrix.postTranslate(0.0f, distance);
        }
    }
}
