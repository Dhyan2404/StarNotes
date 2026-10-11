package com.onyx.android.sdk.note.common.shape.extension;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.SizeF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.SVGDrawableManager;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sunia.commonv2.global.HWREngineConstant;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u001a$\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0002\u001a\u0010\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b*\u00020\u0002\u001a\n\u0010\r\u001a\u00020\u000e*\u00020\u0002\u001a$\u0010\u000f\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u0001\u001a>\u0010\u000f\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u00012\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015¨\u0006\u0018"}, m61528d2 = {"getBoundingRectWithDrawable", "Landroid/graphics/RectF;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", HWREngineConstant.Constant.RES_ID, "", "matrix", "Landroid/graphics/Matrix;", "getDrawableRect", "rectF", "getExcerptShapeIndicatorAnchorRect", "getRealPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getRealTextSize", "", "renderDrawable", "", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "anchorRect", "locationGenerator", "Lkotlin/Function2;", "Lcom/onyx/android/sdk/base/data/SizeF;", "Landroid/graphics/PointF;", "sdk-note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Shape.kt\ncom/onyx/android/sdk/note/common/shape/extension/ShapeKt\n+ 2 Canvas.kt\nandroidx/core/graphics/CanvasKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n121#2,8:121\n1#3:129\n*S KotlinDebug\n*F\n+ 1 Shape.kt\ncom/onyx/android/sdk/note/common/shape/extension/ShapeKt\n*L\n65#1:121,8\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeKt {
    @NotNull
    public static final RectF getBoundingRectWithDrawable(@NotNull Shape shape, int i, @NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        RectF rectF = new RectF(shape.getOriginRect());
        RectFKt.scaleRect(rectF, shape.getShapeCreateArgs().getDisplayScale());
        if (SVGDrawableManager.INSTANCE.getInstance().loadResource(matrix, i) != null) {
            rectF.inset((-r2.getWidth()) / 2.0f, -r2.getHeight());
        }
        return rectF;
    }

    public static /* synthetic */ RectF getBoundingRectWithDrawable$default(Shape shape, int i, Matrix matrix, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            matrix = new Matrix();
        }
        return getBoundingRectWithDrawable(shape, i, matrix);
    }

    @NotNull
    public static final RectF getDrawableRect(@NotNull Shape shape, @NotNull RectF rectF, int i, @NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Bitmap loadResource = SVGDrawableManager.INSTANCE.getInstance().loadResource(matrix, i);
        RectF copy = RectFKt.copy(rectF);
        if (loadResource == null) {
            return copy;
        }
        float width = copy.left - (loadResource.getWidth() / 2.0f);
        float height = copy.top - loadResource.getHeight();
        return new RectF(width, height, loadResource.getWidth() + width, loadResource.getHeight() + height);
    }

    public static /* synthetic */ RectF getDrawableRect$default(Shape shape, RectF rectF, int i, Matrix matrix, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            matrix = new Matrix();
        }
        return getDrawableRect(shape, rectF, i, matrix);
    }

    @NotNull
    public static final RectF getExcerptShapeIndicatorAnchorRect(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        RectF rectF = new RectF();
        if (!ShapeTypes.INSTANCE.isTextExcerptShape(shape)) {
            return rectF;
        }
        List<TouchPoint> points = shape.getPoints().getPoints();
        if (points.size() > 1) {
            rectF.set(points.get(0).getX(), points.get(0).getY(), points.get(1).getX(), points.get(1).getY());
        }
        RectFKt.translateCoordinates(rectF, RectFKt.copy(shape.getOriginRect()));
        return rectF;
    }

    @NotNull
    public static final List<TouchPoint> getRealPoints(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return GeometryUtils.INSTANCE.transform(shape.getPoints().getPoints(), MatrixKt.concat(shape.getShapeMatrix(), ShapeOptions.INSTANCE.getTransformingMatrix(shape)));
    }

    public static final float getRealTextSize(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        ShapeTextStyle textStyle = shape.getTextStyle();
        if (textStyle == null) {
            return 0.0f;
        }
        float textSize = textStyle.getTextSize();
        Matrix shapeMatrix = shape.getShapeMatrix();
        return textSize * (shapeMatrix != null ? MatrixKt.getMinScale(shapeMatrix) : 1.0f) * MatrixKt.getMinScale(ShapeOptions.INSTANCE.getTransformingMatrix(shape));
    }

    public static final void renderDrawable(@NotNull Shape shape, @NotNull RenderContext renderContext, int i, @NotNull RectF anchorRect) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(anchorRect, "anchorRect");
        renderDrawable(shape, renderContext, i, anchorRect, new Function2<RectF, SizeF, PointF>() { // from class: com.onyx.android.sdk.note.common.shape.extension.ShapeKt$renderDrawable$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final PointF invoke(@NotNull RectF rect, @NotNull SizeF bitmapSize) {
                Intrinsics.checkNotNullParameter(rect, "rect");
                Intrinsics.checkNotNullParameter(bitmapSize, "bitmapSize");
                return new PointF(rect.left - (bitmapSize.getWidth() / 2), rect.top - bitmapSize.getHeight());
            }
        });
    }

    public static /* synthetic */ void renderDrawable$default(Shape shape, RenderContext renderContext, int i, RectF rectF, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            rectF = RectFKt.copy(shape.getOriginRect());
        }
        renderDrawable(shape, renderContext, i, rectF);
    }

    public static final void renderDrawable(@NotNull Shape shape, @NotNull RenderContext renderContext, int i, @NotNull RectF anchorRect, @NotNull Function2<? super RectF, ? super SizeF, ? extends PointF> locationGenerator) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(anchorRect, "anchorRect");
        Intrinsics.checkNotNullParameter(locationGenerator, "locationGenerator");
        try {
            Matrix renderMatrix = shape.getRenderMatrix(renderContext);
            Matrix copy = MatrixKt.copy(renderMatrix);
            copy.preConcat(MatrixKt.invertMatrix(shape.getShapeMatrix()));
            Bitmap loadResource = SVGDrawableManager.INSTANCE.getInstance().loadResource(copy, i);
            if (loadResource == null) {
                Debug.INSTANCE.m32044e(shape.getClass(), "loadIndicatorBitmap fail", new Object[0]);
                return;
            }
            RectF boundingRectF = BitmapKt.boundingRectF(loadResource);
            RectFKt.scaleRect(boundingRectF, 1 / MatrixKt.getMaxScale(renderMatrix));
            PointF invoke = locationGenerator.invoke(anchorRect, RectKt.toSizeF(boundingRectF));
            boundingRectF.offsetTo(invoke.x, invoke.y);
            Canvas canvas = renderContext.getCanvas();
            int save = canvas.save();
            canvas.concat(renderMatrix);
            try {
                canvas.drawBitmap(loadResource, (Rect) null, boundingRectF, (Paint) null);
                canvas.restoreToCount(save);
            } catch (Throwable th) {
                canvas.restoreToCount(save);
                throw th;
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static /* synthetic */ void renderDrawable$default(Shape shape, RenderContext renderContext, int i, RectF rectF, Function2 function2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            rectF = RectFKt.copy(shape.getOriginRect());
        }
        renderDrawable(shape, renderContext, i, rectF, function2);
    }
}
