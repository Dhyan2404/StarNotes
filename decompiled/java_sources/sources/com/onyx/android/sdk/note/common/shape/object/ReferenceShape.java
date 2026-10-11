package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Region;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bK\u0010LJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\bH\u0016J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0018\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J2\u0010\u001f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0018\u00010\u001d2\u0006\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0016H\u0016J \u0010\"\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J(\u0010\"\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0016H\u0016J\u000e\u0010#\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rJ\b\u0010$\u001a\u00020\u0014H\u0016J\u0018\u0010'\u001a\u00020\b2\u0006\u0010&\u001a\u00020%2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u001e\u0010)\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0(H\u0002J\u0010\u0010*\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0018\u0010,\u001a\u00020+2\u0006\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u0016H\u0002J\b\u0010-\u001a\u00020\rH\u0002J\u001c\u00100\u001a\b\u0012\u0004\u0012\u00020\u001e0/2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002J\b\u00101\u001a\u00020\rH\u0002R\"\u00109\u001a\u0002028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R$\u0010A\u001a\u0004\u0018\u00010:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R$\u0010G\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u00168V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR$\u0010J\u001a\u0002022\u0006\u0010B\u001a\u0002028V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bH\u00106\"\u0004\bI\u00108¨\u0006M"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/ReferenceShape;", "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;", "", "updateShapeRect", "Landroid/graphics/RectF;", "getPointsBoundingRect", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", Constants.RESET, "lowLatencyFlush", "lowLatencyRender", "Landroid/graphics/Matrix;", "matrix", "postConcat", "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;", "eraseBean", "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;", "split", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "", "radius", "hitTestPoints", "x1", "y1", "x2", "y2", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "hitTestPoint", "x", "y", "hitTest", "updateReferenceMatrix", "getRenderPoints", "Landroid/graphics/Region;", "region", "intersectRegion", "Lkotlin/Function0;", "c", "d", "Landroid/graphics/PointF;", "e", "a", "touchPoints", "", C6997f.f39671c, "b", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "K", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getTargetShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setTargetShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "targetShape", "value", "getStrokeWidth", "()F", "setStrokeWidth", "(F)V", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "getStrokeColor", "setStrokeColor", ApiBroadCastReceiver.ARGS_STROKE_COLOR, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReferenceShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReferenceShape.kt\ncom/onyx/android/sdk/note/common/shape/object/ReferenceShape\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,203:1\n1855#2,2:204\n1855#2,2:206\n1549#2:209\n1620#2,3:210\n1#3:208\n*S KotlinDebug\n*F\n+ 1 ReferenceShape.kt\ncom/onyx/android/sdk/note/common/shape/object/ReferenceShape\n*L\n111#1:204,2\n121#1:206,2\n168#1:209\n168#1:210,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ReferenceShape extends ObjectShape {

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 2000;

    /* renamed from: K, reason: from kotlin metadata */
    @Nullable
    public Shape targetShape;

    /* renamed from: a */
    public final Matrix m33865a() {
        Matrix matrix = new Matrix();
        matrix.postConcat(m33866b());
        return MatrixKt.invertMatrix(matrix);
    }

    /* renamed from: b */
    public final Matrix m33866b() {
        ShapeReferenceBean shapeReferenceBean = getShapeReferenceBean();
        return MatrixKt.getMatrixByValues(shapeReferenceBean != null ? shapeReferenceBean.getMatrixValues() : null);
    }

    /* renamed from: c */
    public final boolean m33867c(RenderContext renderContext, Function0<Boolean> render) {
        Matrix matrix = renderContext.getMatrix();
        try {
            try {
                Matrix matrix2 = new Matrix();
                matrix2.postConcat(m33866b());
                matrix2.postConcat(matrix);
                renderContext.setMatrix(matrix2);
                return render.invoke().booleanValue();
            } catch (Exception e) {
                Debug.INSTANCE.m32040d(e);
                renderContext.setMatrix(matrix);
                return false;
            }
        } finally {
            renderContext.setMatrix(matrix);
        }
    }

    /* renamed from: d */
    public final void m33868d(EraseBean eraseBean) {
        eraseBean.setErasePoints(m33870f(CollectionKt.ensureList(eraseBean.getErasePoints())));
        Shape eraseShape = eraseBean.getEraseShape();
        if (eraseShape != null) {
            Shape cloneNewShape = ShapeCopyUtils.INSTANCE.cloneNewShape(eraseShape, eraseShape.getType());
            cloneNewShape.setPoints(new TouchPointList(m33870f(cloneNewShape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints())));
            cloneNewShape.updatePoints();
            eraseBean.setEraseShape(cloneNewShape);
        }
    }

    /* renamed from: e */
    public final PointF m33869e(float x, float y) {
        return MatrixKt.mapPoint(m33865a(), new PointF(x, y));
    }

    /* renamed from: f */
    public final List<TouchPoint> m33870f(List<TouchPoint> touchPoints) {
        int collectionSizeOrDefault;
        List<TouchPoint> mutableList;
        List<TouchPoint> list = touchPoints;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            TouchPoint copy = ((TouchPoint) it2.next()).copy();
            PointF m33869e = m33869e(copy.getX(), copy.getY());
            copy.setX(m33869e.x);
            copy.setY(m33869e.y);
            arrayList.add(copy);
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape
    @NotNull
    public RectF getPointsBoundingRect() {
        RectF pointsBoundingRect;
        Shape shape = this.targetShape;
        return (shape == null || (pointsBoundingRect = ShapeKt.getPointsBoundingRect(shape)) == null) ? new RectF() : pointsBoundingRect;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public TouchPointList getRenderPoints() {
        TouchPointList renderPoints;
        Shape shape = this.targetShape;
        if (shape == null || (renderPoints = shape.getRenderPoints()) == null) {
            renderPoints = super.getRenderPoints();
        }
        Matrix matrix = new Matrix();
        Shape shape2 = this.targetShape;
        if (shape2 != null) {
            matrix.postConcat(shape2.getShapeMatrix());
        }
        matrix.postConcat(m33866b());
        return renderPoints.m72175clone().applyMatrix(matrix);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public int getStrokeColor() {
        Shape shape = this.targetShape;
        return shape != null ? shape.getStrokeColor() : super.getStrokeColor();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public float getStrokeWidth() {
        Shape shape = this.targetShape;
        return shape != null ? shape.getStrokeWidth() : super.getStrokeWidth();
    }

    @Nullable
    public final Shape getTargetShape() {
        return this.targetShape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.object.ObjectShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        PointF m33869e = m33869e(x, y);
        Shape shape = this.targetShape;
        if (shape != null) {
            return shape.hitTest(m33869e.x, m33869e.y, radius);
        }
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    @Nullable
    public List<TouchPoint> hitTestPoint(float x1, float y1, float x2, float y2) {
        PointF m33869e = m33869e(x1, y1);
        PointF m33869e2 = m33869e(x2, y2);
        Shape shape = this.targetShape;
        if (shape != null) {
            return shape.hitTestPoint(m33869e.x, m33869e.y, m33869e2.x, m33869e2.y);
        }
        return null;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTestPoints(@NotNull TouchPointList pointList, float radius) {
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        Matrix m33865a = m33865a();
        TouchPointList m72175clone = pointList.m72175clone();
        Iterator<T> it2 = m72175clone.getPoints().iterator();
        while (it2.hasNext()) {
            ((TouchPoint) it2.next()).mapMatrix(m33865a);
        }
        Shape shape = this.targetShape;
        if (shape != null) {
            return shape.hitTestPoints(m72175clone, radius);
        }
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean intersectRegion(@NotNull Region region, @NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Matrix copy = MatrixKt.copy(ShapeTypes.INSTANCE.getTargetShape(this).getShapeMatrix());
        copy.postConcat(m33866b());
        copy.postConcat(matrix);
        Shape shape = this.targetShape;
        return shape != null ? shape.intersectRegion(region, copy) : super.intersectRegion(region, matrix);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyFlush(@NotNull RenderContext renderContext, boolean reset) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Shape shape = this.targetShape;
        if (shape != null) {
            return shape.lowLatencyFlush(renderContext, reset);
        }
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Shape shape = this.targetShape;
        if (shape != null) {
            return shape.lowLatencyRender(renderContext);
        }
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeTransform
    public void postConcat(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        super.postConcat(new Matrix());
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull final RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (ShapeOptions.INSTANCE.isVisible(this)) {
            return m33867c(renderContext, new Function0<Boolean>() { // from class: com.onyx.android.sdk.note.common.shape.object.ReferenceShape$render$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    Shape targetShape = ReferenceShape.this.getTargetShape();
                    if (targetShape != null) {
                        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
                        shapeOptions.setTransparent(targetShape, shapeOptions.isTransparent(ReferenceShape.this));
                    }
                    Shape targetShape2 = ReferenceShape.this.getTargetShape();
                    return Boolean.valueOf(targetShape2 != null ? targetShape2.render(renderContext) : false);
                }
            });
        }
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public void setStrokeColor(int i) {
        Shape shape = this.targetShape;
        if (shape == null) {
            return;
        }
        shape.setStrokeColor(i);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public void setStrokeWidth(float f) {
        Shape shape = this.targetShape;
        if (shape == null) {
            return;
        }
        shape.setStrokeWidth(f);
    }

    public final void setTargetShape(@Nullable Shape shape) {
        this.targetShape = shape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) {
        List<Shape> splitShapes;
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        m33868d(eraseBean);
        Shape shape = this.targetShape;
        SplitShapeResult split = shape != null ? shape.split(eraseBean) : null;
        if (split != null && (splitShapes = split.getSplitShapes()) != null) {
            for (Shape shape2 : splitShapes) {
                shape2.setPageUniqueId(getPageUniqueId());
                shape2.postConcat(m33866b());
            }
        }
        return split == null ? new SplitShapeResult() : split;
    }

    public final void updateReferenceMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        ShapeReferenceBean shapeReferenceBean = getShapeReferenceBean();
        if (shapeReferenceBean != null) {
            shapeReferenceBean.setMatrixValues(MatrixKt.getMatrixValue(matrix));
        }
        updateShapeRect();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        RectF rectF;
        Matrix matrix = new Matrix();
        matrix.postConcat(m33866b());
        Shape shape = this.targetShape;
        if (shape == null || (rectF = shape.getBoundingRect()) == null) {
            rectF = new RectF();
        }
        setOriginRect(rectF);
        RectF copy = RectFKt.copy(getOriginRect());
        matrix.mapRect(copy);
        setOriginRect(copy);
        setBoundingRect(new RectF(getOriginRect()));
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x1, float y1, float x2, float y2) {
        PointF m33869e = m33869e(x1, y1);
        PointF m33869e2 = m33869e(x2, y2);
        Shape shape = this.targetShape;
        if (shape != null) {
            return shape.hitTest(m33869e.x, m33869e.y, m33869e2.x, m33869e2.y);
        }
        return false;
    }
}
