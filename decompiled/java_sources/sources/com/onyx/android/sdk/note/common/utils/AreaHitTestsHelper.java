package com.onyx.android.sdk.note.common.utils;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.PathKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionType;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0012\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0019\u001a\u00020\u0015\u0012\u0006\u0010\u001e\u001a\u00020\n\u0012\u0006\u0010\"\u001a\u00020\u0012\u0012\b\b\u0002\u0010'\u001a\u00020#¢\u0006\u0004\b3\u00104J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002J$\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0002J,\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00122\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0002R\u0017\u0010\u0019\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001e\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\"\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\r\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010'\u001a\u00020#8\u0006¢\u0006\f\n\u0004\b\u0014\u0010$\u001a\u0004\b%\u0010&R\u0014\u0010)\u001a\u00020#8\u0002X\u0082D¢\u0006\u0006\n\u0004\b(\u0010$R\u0016\u0010,\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010/\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010\u001fR\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "inRegion", "Landroid/graphics/Region;", "region", "Landroid/graphics/RectF;", "rectF", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "Landroid/graphics/Matrix;", "c", "selectionRegion", "matrix", "a", "selectionRectF", "", "radius", "d", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "b", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "getPoints", "()Lcom/onyx/android/sdk/base/data/TouchPointList;", PointConstant.POINT_FILE_END, "F", "getSelectionPenWidth", "()F", "selectionPenWidth", "", "I", "getSelectionType", "()I", "selectionType", "e", "SELECT_RECT_MAX", C6997f.f39671c, "Landroid/graphics/Matrix;", "selectionMatrix", C6998g.f39679a, "Landroid/graphics/RectF;", "selectionShapeRect", C6999h.f39688c, "i", "Landroid/graphics/Region;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/base/data/TouchPointList;FI)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAreaHitTestsHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AreaHitTestsHelper.kt\ncom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n337#2:111\n344#2,3:112\n1#3:115\n*S KotlinDebug\n*F\n+ 1 AreaHitTestsHelper.kt\ncom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper\n*L\n83#1:111\n87#1:112,3\n*E\n"})
/* loaded from: classes8.dex */
public final class AreaHitTestsHelper {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final TouchPointList points;

    /* renamed from: c, reason: from kotlin metadata */
    public final float selectionPenWidth;

    /* renamed from: d, reason: from kotlin metadata */
    public final int selectionType;

    /* renamed from: e, reason: from kotlin metadata */
    public final int SELECT_RECT_MAX;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Matrix selectionMatrix;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public RectF selectionShapeRect;

    /* renamed from: h, reason: from kotlin metadata */
    public float radius;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public Region region;

    public AreaHitTestsHelper(@NotNull RenderContext renderContext, @NotNull TouchPointList points, float f, int i) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(points, "points");
        this.renderContext = renderContext;
        this.points = points;
        this.selectionPenWidth = f;
        this.selectionType = i;
        this.SELECT_RECT_MAX = 10000;
        this.selectionMatrix = MatrixKt.copy(renderContext.getMatrix());
        float f2 = 2;
        this.radius = renderContext.getMatrixInvertValue(f / f2);
        this.selectionMatrix.postConcat(m34001c(points));
        Path path = new Path();
        if (SelectionType.INSTANCE.isRectSelection(i)) {
            Path renderShapeByLineTo = ShapeRenderUtils.INSTANCE.renderShapeByLineTo(this.selectionMatrix, points);
            Intrinsics.checkNotNull(renderShapeByLineTo);
            path.addPath(renderShapeByLineTo);
        } else {
            Path renderShape = ShapeRenderUtils.INSTANCE.renderShape(this.selectionMatrix, points);
            Intrinsics.checkNotNull(renderShape);
            path.addPath(renderShape);
        }
        RectF computeBounds$default = PathKt.computeBounds$default(path, false, 1, null);
        this.selectionShapeRect = computeBounds$default;
        RectKt.expand(computeBounds$default, f / f2);
        this.region = ShapeRegionUtils.createRegionByPath$default(ShapeRegionUtils.INSTANCE, path, this.selectionShapeRect, false, 4, null);
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m33998b(AreaHitTestsHelper areaHitTestsHelper, Shape shape, Region region, Matrix matrix, int i, Object obj) {
        if ((i & 4) != 0) {
            matrix = null;
        }
        return areaHitTestsHelper.m34000a(shape, region, matrix);
    }

    /* renamed from: e */
    public static /* synthetic */ boolean m33999e(AreaHitTestsHelper areaHitTestsHelper, Shape shape, RectF rectF, float f, Matrix matrix, int i, Object obj) {
        if ((i & 8) != 0) {
            matrix = null;
        }
        return areaHitTestsHelper.m34002d(shape, rectF, f, matrix);
    }

    /* renamed from: a */
    public final boolean m34000a(Shape shape, Region selectionRegion, Matrix matrix) {
        RectF boundingRect = ShapeRectUtils.INSTANCE.getBoundingRect(this.renderContext, shape);
        if (matrix != null) {
            matrix.mapRect(boundingRect);
        }
        Rect bounds = selectionRegion.getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
        if (!RectF.intersects(new RectF(bounds), boundingRect)) {
            return false;
        }
        if (SelectionType.INSTANCE.isRectSelection(this.selectionType)) {
            Rect bounds2 = selectionRegion.getBounds();
            Rect rect = new Rect();
            boundingRect.roundOut(rect);
            if (bounds2.contains(rect)) {
                return true;
            }
        }
        Matrix copy = MatrixKt.copy(shape.getRenderMatrix(this.renderContext));
        if (matrix != null) {
            copy.postConcat(matrix);
        }
        return shape.intersectRegion(selectionRegion, copy);
    }

    /* renamed from: c */
    public final Matrix m34001c(TouchPointList pointList) {
        int i = this.SELECT_RECT_MAX;
        RectF boundingRect = pointList.getBoundingRect();
        float f = i;
        if (boundingRect.right < f && boundingRect.bottom < f) {
            return new Matrix();
        }
        Matrix matrix = new Matrix();
        float f2 = boundingRect.left;
        float f3 = boundingRect.top;
        matrix.postTranslate(-f2, -f3);
        float max = Math.max(boundingRect.bottom - f3, boundingRect.right - f2);
        if (max > f) {
            float f4 = f / max;
            matrix.postScale(f4, f4);
        }
        return matrix;
    }

    /* renamed from: d */
    public final boolean m34002d(Shape shape, RectF selectionRectF, float radius, Matrix matrix) {
        if (ShapeTypes.INSTANCE.isPenShape(shape) && ShapePersistOptionsKt.isInvalidSubShapeType(shape)) {
            return false;
        }
        RectF boundingRect = ShapeRectUtils.INSTANCE.getBoundingRect(this.renderContext, shape);
        if (matrix != null) {
            matrix.mapRect(boundingRect);
        }
        if (RectUtils.INSTANCE.isIntersect(selectionRectF, boundingRect)) {
            return shape.hitTestPoints(this.points, radius);
        }
        return false;
    }

    @NotNull
    public final TouchPointList getPoints() {
        return this.points;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    public final float getSelectionPenWidth() {
        return this.selectionPenWidth;
    }

    public final int getSelectionType() {
        return this.selectionType;
    }

    public final boolean inRegion(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return inRegion(shape, this.region, this.selectionShapeRect);
    }

    public final boolean inRegion(@NotNull Shape shape, @NotNull Region region, @NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        return m34000a(shape, region, this.selectionMatrix) || m34002d(shape, rectF, this.radius, this.selectionMatrix);
    }

    public /* synthetic */ AreaHitTestsHelper(RenderContext renderContext, TouchPointList touchPointList, float f, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(renderContext, touchPointList, f, (i2 & 8) != 0 ? 0 : i);
    }
}
