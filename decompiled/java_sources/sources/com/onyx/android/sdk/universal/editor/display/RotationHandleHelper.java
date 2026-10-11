package com.onyx.android.sdk.universal.editor.display;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J(\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bJ(\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bJ&\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;", "", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "shape", "Landroid/graphics/RectF;", "limitRect", "Landroid/graphics/Matrix;", "renderMatrix", "", "extraMargin", "findBoundRectIncludingRotationPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "findRotationPoint", "", "position", "", "vertexPoints", "", "margin", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RotationHandleHelper {

    @NotNull
    public static final RotationHandleHelper INSTANCE = new RotationHandleHelper();

    public static /* synthetic */ RectF findBoundRectIncludingRotationPoint$default(RotationHandleHelper rotationHandleHelper, UniversalShape universalShape, RectF rectF, Matrix matrix, Number number, int i, Object obj) {
        if ((i & 8) != 0) {
            number = Float.valueOf(0.0f);
        }
        return rotationHandleHelper.findBoundRectIncludingRotationPoint(universalShape, rectF, matrix, number);
    }

    public static /* synthetic */ TouchPoint findRotationPoint$default(RotationHandleHelper rotationHandleHelper, UniversalShape universalShape, RectF rectF, Matrix matrix, Number number, int i, Object obj) {
        if ((i & 8) != 0) {
            number = Float.valueOf(0.0f);
        }
        return rotationHandleHelper.findRotationPoint(universalShape, rectF, matrix, number);
    }

    /* renamed from: a */
    public final TouchPoint m40790a(int position, List<TouchPoint> vertexPoints, float margin) {
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        TouchPoint gravityCenter = geometryUtils.gravityCenter(vertexPoints);
        TouchPoint center = position != 0 ? position != 1 ? position != 2 ? position != 3 ? new TouchPointPair(vertexPoints.get(2), vertexPoints.get(3)).center() : new TouchPointPair(vertexPoints.get(2), vertexPoints.get(3)).center() : new TouchPointPair(vertexPoints.get(1), vertexPoints.get(2)).center() : new TouchPointPair(vertexPoints.get(0), vertexPoints.get(1)).center() : new TouchPointPair(vertexPoints.get(3), vertexPoints.get(0)).center();
        return TouchPointPair.findPointOnVector$default(new TouchPointPair(center, geometryUtils.findSymmetricalPoint(gravityCenter, center)), margin, null, 2, null);
    }

    @NotNull
    public final RectF findBoundRectIncludingRotationPoint(@NotNull UniversalShape shape, @NotNull RectF limitRect, @NotNull Matrix renderMatrix, @NotNull Number extraMargin) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(limitRect, "limitRect");
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        Intrinsics.checkNotNullParameter(extraMargin, "extraMargin");
        Matrix concat = MatrixKt.concat(shape.getShapeMatrix(), renderMatrix);
        float strokeWidth = shape.getStrokeWidth() * MatrixKt.getAverageScale(concat);
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        float f = 2;
        RectF expand = RectKt.expand(geometryUtils.boundRect(geometryUtils.transform(geometryUtils.vertexPoints(shape.getPointsBoundingRect()), concat)), strokeWidth / f);
        TouchPoint findRotationPoint = findRotationPoint(shape, limitRect, renderMatrix, Float.valueOf(extraMargin.floatValue() + (RotationHandleRenderKt.getRotationPointSize() / f)));
        expand.union(findRotationPoint.getX(), findRotationPoint.getY());
        return expand;
    }

    @NotNull
    public final TouchPoint findRotationPoint(@NotNull UniversalShape shape, @NotNull RectF limitRect, @NotNull Matrix renderMatrix, @NotNull Number extraMargin) {
        List listOf;
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(limitRect, "limitRect");
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        Intrinsics.checkNotNullParameter(extraMargin, "extraMargin");
        Matrix concat = MatrixKt.concat(shape.getShapeMatrix(), renderMatrix);
        float strokeWidth = shape.getStrokeWidth() * MatrixKt.getAverageScale(concat);
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        List<TouchPoint> transform = geometryUtils.transform(geometryUtils.vertexPoints(shape.getPointsBoundingRect()), concat);
        float rotationPointMargin = (strokeWidth / 2) + RotationHandleRenderKt.getRotationPointMargin() + extraMargin.floatValue();
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{3, 2, 1, 0});
        Iterator it2 = listOf.iterator();
        while (it2.hasNext()) {
            TouchPoint m40790a = m40790a(((Number) it2.next()).intValue(), transform, rotationPointMargin);
            if (limitRect.contains(m40790a.getX(), m40790a.getY())) {
                return m40790a;
            }
        }
        return m40790a(3, transform, rotationPointMargin);
    }
}
