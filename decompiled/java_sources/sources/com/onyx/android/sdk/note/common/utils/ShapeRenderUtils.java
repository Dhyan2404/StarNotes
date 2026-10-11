package com.onyx.android.sdk.note.common.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeShaderManager;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.data.shape.TransformRectF;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0017B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u001c\u0010\b\u001a\u0004\u0018\u00010\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J$\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\rJ2\u0010\u0014\u001a\u0004\u0018\u00010\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011H\u0002¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;", "", "Landroid/graphics/Matrix;", "matrix", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "Landroid/graphics/Path;", "renderShape", "renderShapeByLineTo", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Landroid/graphics/RectF;", "originRect", "Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;", "renderOptions", "Landroid/graphics/Bitmap;", "renderShapeBitmap", "Lkotlin/Function1;", "", "compose", "a", Constants.CONSTRUCTOR_NAME, "()V", "RenderOptions", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShapeRenderUtils {

    @NotNull
    public static final ShapeRenderUtils INSTANCE = new ShapeRenderUtils();

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;", "", "", "component1", "", "component2", "showExcerptIndicator", "extraScale", "copy", "", "toString", "", "hashCode", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getShowExcerptIndicator", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setShowExcerptIndicator", "(Z)V", "b", "F", "getExtraScale", "()F", "setExtraScale", "(F)V", Constants.CONSTRUCTOR_NAME, "(ZF)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final /* data */ class RenderOptions {

        /* renamed from: a, reason: from toString */
        public boolean showExcerptIndicator;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        public float extraScale;

        public RenderOptions() {
            this(false, 0.0f, 3, null);
        }

        public static /* synthetic */ RenderOptions copy$default(RenderOptions renderOptions, boolean z, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                z = renderOptions.showExcerptIndicator;
            }
            if ((i & 2) != 0) {
                f = renderOptions.extraScale;
            }
            return renderOptions.copy(z, f);
        }

        /* renamed from: component1, reason: from getter */
        public final boolean getShowExcerptIndicator() {
            return this.showExcerptIndicator;
        }

        /* renamed from: component2, reason: from getter */
        public final float getExtraScale() {
            return this.extraScale;
        }

        @NotNull
        public final RenderOptions copy(boolean showExcerptIndicator, float extraScale) {
            return new RenderOptions(showExcerptIndicator, extraScale);
        }

        public boolean equals(@Nullable Object r5) {
            if (this == r5) {
                return true;
            }
            if (!(r5 instanceof RenderOptions)) {
                return false;
            }
            RenderOptions renderOptions = (RenderOptions) r5;
            return this.showExcerptIndicator == renderOptions.showExcerptIndicator && Float.compare(this.extraScale, renderOptions.extraScale) == 0;
        }

        public final float getExtraScale() {
            return this.extraScale;
        }

        public final boolean getShowExcerptIndicator() {
            return this.showExcerptIndicator;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v5 */
        public int hashCode() {
            boolean z = this.showExcerptIndicator;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            return (r0 * 31) + Float.hashCode(this.extraScale);
        }

        public final void setExtraScale(float f) {
            this.extraScale = f;
        }

        public final void setShowExcerptIndicator(boolean z) {
            this.showExcerptIndicator = z;
        }

        @NotNull
        public String toString() {
            return "RenderOptions(showExcerptIndicator=" + this.showExcerptIndicator + ", extraScale=" + this.extraScale + ')';
        }

        public RenderOptions(boolean z, float f) {
            this.showExcerptIndicator = z;
            this.extraScale = f;
        }

        public /* synthetic */ RenderOptions(boolean z, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? true : z, (i & 2) != 0 ? 1.0f : f);
        }
    }

    public static /* synthetic */ Bitmap renderShapeBitmap$default(ShapeRenderUtils shapeRenderUtils, Shape shape, RectF rectF, RenderOptions renderOptions, int i, Object obj) {
        if ((i & 2) != 0) {
            rectF = ShapeRectUtils.INSTANCE.getShapeOriginRectWithWidth(shape);
        }
        if ((i & 4) != 0) {
            renderOptions = new RenderOptions(false, 0.0f, 3, null);
        }
        return shapeRenderUtils.renderShapeBitmap(shape, rectF, renderOptions);
    }

    /* renamed from: a */
    public final Path m34056a(Matrix matrix, TouchPointList pointList, Function1<? super Path, Unit> compose) {
        Object first;
        Object first2;
        if (pointList == null || pointList.size() <= 0) {
            return null;
        }
        List<TouchPoint> renderPoints = pointList.getRenderPoints();
        Path path = new Path();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) renderPoints);
        float x = ((TouchPoint) first).getX();
        first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) renderPoints);
        path.moveTo(x, ((TouchPoint) first2).getY());
        compose.invoke(path);
        if (matrix != null) {
            path.transform(matrix);
        }
        return path;
    }

    @Nullable
    public final Path renderShape(@Nullable Matrix matrix, @Nullable final TouchPointList pointList) {
        return m34056a(matrix, pointList, new Function1<Path, Unit>() { // from class: com.onyx.android.sdk.note.common.utils.ShapeRenderUtils$renderShape$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Path path) {
                invoke2(path);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Path it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                TouchPointList touchPointList = TouchPointList.this;
                Intrinsics.checkNotNull(touchPointList);
                PathKt.averageQuadTo(it2, touchPointList.getRenderPoints());
            }
        });
    }

    @Nullable
    public final Bitmap renderShapeBitmap(@NotNull Shape shape, @NotNull RectF originRect, @NotNull RenderOptions renderOptions) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(originRect, "originRect");
        Intrinsics.checkNotNullParameter(renderOptions, "renderOptions");
        ShapeMatrixUtils shapeMatrixUtils = ShapeMatrixUtils.INSTANCE;
        Matrix shapeMatrix = shape.getShapeMatrix();
        if (shapeMatrix == null) {
            shapeMatrix = new Matrix();
        }
        TransformRectF transformRect = shapeMatrixUtils.getTransformRect(originRect, shapeMatrix);
        int width = (int) (transformRect.getOriginRectF().width() * renderOptions.getExtraScale());
        int height = (int) (transformRect.getOriginRectF().height() * renderOptions.getExtraScale());
        if (width <= 0 || height <= 0) {
            Debug.INSTANCE.m32052i(ShapeRenderUtils.class, "renderShapeBitmap, width/height(" + width + '/' + height + ") invalid, transformRect.originRect:" + transformRect.getOriginRectF(), new Object[0]);
            width = Math.max(1, width);
            height = Math.max(1, height);
        }
        if (width * height < 268435456) {
            Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
            Canvas canvas = new Canvas(createBitmap);
            Matrix matrix = new Matrix();
            matrix.postRotate(-transformRect.getAngle(), transformRect.getOriginCenterX(), transformRect.getOriginCenterY());
            matrix.postTranslate(-transformRect.getOriginRectF().left, -transformRect.getOriginRectF().top);
            matrix.postScale(renderOptions.getExtraScale(), renderOptions.getExtraScale());
            RenderContext create = RenderContext.INSTANCE.create(canvas, new Paint(), matrix);
            create.setRenderColorConfig(1);
            create.setBitmap(createBitmap);
            create.setClipRect(BitmapKt.boundingRectF(createBitmap));
            create.setShapeShaderManager(new ShapeShaderManager());
            create.setShowExcerptIndicator(renderOptions.getShowExcerptIndicator());
            shape.render(create);
            return createBitmap;
        }
        Debug debug = Debug.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append("renderShapeBitmap oversize: shapeId: ");
        sb.append(shape.getShapeUniqueId());
        sb.append(" pageId: ");
        sb.append(shape.getPageUniqueId());
        sb.append(" originRect: ");
        sb.append(originRect);
        sb.append(" matrix: ");
        sb.append(shape.getShapeMatrix());
        sb.append(" resource: ");
        ShapeResource resource = ShapeOptions.INSTANCE.getResource(shape);
        sb.append(resource != null ? resource.getRelativePath() : null);
        sb.append("  width: ");
        sb.append(width);
        sb.append(" height: ");
        sb.append(height);
        debug.m32046e(sb.toString());
        return null;
    }

    @Nullable
    public final Path renderShapeByLineTo(@Nullable Matrix matrix, @Nullable final TouchPointList pointList) {
        return m34056a(matrix, pointList, new Function1<Path, Unit>() { // from class: com.onyx.android.sdk.note.common.utils.ShapeRenderUtils$renderShapeByLineTo$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Path path) {
                invoke2(path);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Path it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                TouchPointList touchPointList = TouchPointList.this;
                Intrinsics.checkNotNull(touchPointList);
                PathKt.lineTo(it2, touchPointList.getRenderPoints());
            }
        });
    }
}
