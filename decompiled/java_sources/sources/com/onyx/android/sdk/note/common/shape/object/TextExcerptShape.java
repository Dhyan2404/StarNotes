package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.PaintKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.shape.extension.ShapeKt;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.shape.object.ExcerptShape;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBeanKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b(\u0010)J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016J \u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0016J\u001e\u0010\u0014\u001a\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001e\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00120\u0015H\u0002J\b\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u001c\u001a\u00020\fH\u0002J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u001a\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u001e\u001a\u0004\u0018\u00010\u0012H\u0002J \u0010 \u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0002R\"\u0010'\u001a\u00020\u00188\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/TextExcerptShape;", "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "", "updateShapeRect", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "", "x", "y", "radius", "hitTest", "", "Landroid/graphics/RectF;", "textRegionList", "c", "", "rectList", "b", "", "d", "e", C6998g.f39679a, C6997f.f39671c, "i", "rect", "a", C6999h.f39688c, "J", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTextExcerptShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextExcerptShape.kt\ncom/onyx/android/sdk/note/common/shape/object/TextExcerptShape\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,155:1\n1549#2:156\n1620#2,3:157\n766#2:160\n857#2,2:161\n1855#2,2:163\n1747#2,3:165\n*S KotlinDebug\n*F\n+ 1 TextExcerptShape.kt\ncom/onyx/android/sdk/note/common/shape/object/TextExcerptShape\n*L\n57#1:156\n57#1:157,3\n62#1:160\n62#1:161,2\n76#1:163,2\n151#1:165,3\n*E\n"})
/* loaded from: classes8.dex */
public final class TextExcerptShape extends ObjectShape {

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 44;

    /* renamed from: a */
    public final void m33875a(RenderContext renderContext, RectF rect) {
        if (rect != null && renderContext.getShowExcerptIndicator()) {
            ShapeKt.renderDrawable(this, renderContext, C7485R.drawable.excerpt_indicator, rect);
        }
    }

    /* renamed from: b */
    public final void m33876b(RenderContext renderContext, List<? extends RectF> rectList) {
        Path path;
        Paint copy = PaintKt.copy(renderContext.getPaint());
        copy.setColor(m33878d());
        copy.setStrokeWidth(m33879e(renderContext));
        float m33881g = m33881g(renderContext);
        boolean isVertical = ExcerptInfoBeanKt.isVertical(ShapePersistOptionsKt.getExcerptInfoBean(this));
        Matrix renderMatrix = getRenderMatrix(renderContext);
        Matrix invertMatrix = MatrixKt.invertMatrix(renderMatrix);
        Iterator<T> it2 = rectList.iterator();
        while (it2.hasNext()) {
            RectF copy2 = RectFKt.copy((RectF) it2.next());
            if (isVertical) {
                copy2.left -= m33881g;
                invertMatrix.mapRect(copy2);
                path = new Path();
                path.moveTo(copy2.left, copy2.top);
                path.lineTo(copy2.left, copy2.bottom);
            } else {
                copy2.bottom += m33881g;
                invertMatrix.mapRect(copy2);
                path = new Path();
                path.moveTo(copy2.left, copy2.bottom);
                path.lineTo(copy2.right, copy2.bottom);
            }
            path.transform(renderMatrix);
            renderContext.getCanvas().drawPath(path, copy);
        }
    }

    /* renamed from: c */
    public final void m33877c(List<RectF> textRegionList, RenderContext renderContext) {
        int collectionSizeOrDefault;
        List<RectF> list = textRegionList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            RectF copy = RectFKt.copy((RectF) it2.next());
            Matrix shapeMatrix = getShapeMatrix();
            if (shapeMatrix != null) {
                shapeMatrix.mapRect(copy);
            }
            renderContext.getMatrix().mapRect(copy);
            arrayList.add(copy);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!RectKt.isEmptyOnScreen$default((RectF) obj, 0.0f, 1, null)) {
                arrayList2.add(obj);
            }
        }
        m33876b(renderContext, arrayList2);
    }

    /* renamed from: d */
    public final int m33878d() {
        ExcerptInfoBean excerptInfoBean = ShapePersistOptionsKt.getExcerptInfoBean(this);
        return excerptInfoBean != null ? excerptInfoBean.getColor() : getStrokeColor();
    }

    /* renamed from: e */
    public final float m33879e(RenderContext renderContext) {
        return MatrixKt.getScaledFloat(getRenderMatrix(renderContext), ResManager.INSTANCE.getDimension(C7485R.dimen.highlight_line_stroke_width));
    }

    /* renamed from: f */
    public final float m33880f() {
        return ResManager.INSTANCE.getDimension(C7485R.dimen.underline_offset);
    }

    /* renamed from: g */
    public final float m33881g(RenderContext renderContext) {
        return MatrixKt.getScaledFloat(getRenderMatrix(renderContext), m33880f());
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    /* renamed from: h */
    public final boolean m33882h(float x, float y, float radius) {
        float[] fArr = {x, y};
        MatrixKt.invertMatrix(getShapeMatrix()).mapPoints(fArr);
        List<RectF> m33883i = m33883i();
        if ((m33883i instanceof Collection) && m33883i.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = m33883i.iterator();
        while (it2.hasNext()) {
            if (HitTestUtils.INSTANCE.circleRectHitTest((RectF) it2.next(), fArr[0], fArr[1], radius)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.object.ObjectShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        return HitTestUtils.INSTANCE.hitTestShapeDrawable(x, y, radius, this, C7485R.drawable.excerpt_indicator) || m33882h(x, y, radius);
    }

    /* renamed from: i */
    public final List<RectF> m33883i() {
        Object orNull;
        List<TouchPoint> points = getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, points.size() - 1, 2);
        if (progressionLastElement >= 0) {
            while (true) {
                TouchPoint touchPoint = points.get(i);
                orNull = CollectionsKt___CollectionsKt.getOrNull(points, i + 1);
                TouchPoint touchPoint2 = (TouchPoint) orNull;
                if (touchPoint2 != null) {
                    arrayList.add(new RectF(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY()));
                    if (i == progressionLastElement) {
                        break;
                    }
                    i += 2;
                } else {
                    break;
                }
            }
        }
        return arrayList;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        ShapeRenders.INSTANCE.applyStrokeStyle(this, renderContext);
        List<RectF> m33883i = m33883i();
        m33877c(m33883i, renderContext);
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) m33883i);
        m33875a(renderContext, (RectF) firstOrNull);
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        return ExcerptShape.Companion.createPdfShape$default(ExcerptShape.INSTANCE, this, embedShapeBean, 0, 4, null);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        setOriginRect(getPointsBoundingRect());
        setBoundingRect(ShapeKt.getBoundingRectWithDrawable$default(this, C7485R.drawable.excerpt_indicator, null, 2, null));
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(getBoundingRect());
        }
    }
}
