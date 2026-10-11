package com.onyx.android.sdk.note.common.shape.pen;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.geometry.data.ShapeGuideLineConsumeResult;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.note.common.handler.StandardGuideLineRender;
import com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0018¢\u0006\u0004\b!\u0010\"J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006H\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0002R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0019R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u001cR\u0014\u0010 \u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;", "Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "updateRenderContext", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPointInPage", "onDown", "onUp", "onMove", "render", C6997f.f39671c, "up", "c", "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;", "d", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "e", C6998g.f39679a, "a", "touchPointInRender", "b", "Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;", "Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;", "shape", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "currentPoint", "Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;", "Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;", "guideLineRender", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class MarkerPenGuideLineHandler implements ShapeGuideLineHandler {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final MarkerScribbleShape shape;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public RenderContext renderContext;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public TouchPoint currentPoint;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final StandardGuideLineRender guideLineRender;

    public MarkerPenGuideLineHandler(@NotNull MarkerScribbleShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.shape = shape;
        this.currentPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        this.guideLineRender = new StandardGuideLineRender();
    }

    /* renamed from: a */
    public final TouchPoint m33901a(TouchPoint touchPointInPage) {
        RenderContext renderContext = this.renderContext;
        return touchPointInPage.transform(renderContext != null ? renderContext.getMatrix() : null);
    }

    /* renamed from: b */
    public final TouchPoint m33902b(TouchPoint touchPointInRender) {
        RenderContext renderContext = this.renderContext;
        return touchPointInRender.transform(MatrixKt.invertMatrix(renderContext != null ? renderContext.getMatrix() : null));
    }

    /* renamed from: c */
    public final void m33903c(TouchPoint up) {
        Object firstOrNull;
        if (this.guideLineRender.getDrawGuideLines()) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints());
            TouchPoint touchPoint = (TouchPoint) firstOrNull;
            if (touchPoint == null) {
                return;
            }
            TouchPointPair touchPointPair = new TouchPointPair(touchPoint, up);
            GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
            float degreeToRad = geometryUtils.degreeToRad(GeometryConfigurations.INSTANCE.getGuidelineParallelDegThreshold());
            if (geometryUtils.isHorizontal(touchPointPair, Float.valueOf(degreeToRad))) {
                up.setY(touchPoint.getY());
            } else if (geometryUtils.isVertical(touchPointPair, Float.valueOf(degreeToRad))) {
                up.setX(touchPoint.getX());
            }
        }
    }

    /* renamed from: d */
    public final TouchPointPair m33904d() {
        Object first;
        Object last;
        List<TouchPoint> points = this.shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints();
        if (points.isEmpty()) {
            return null;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) points);
        TouchPoint touchPoint = (TouchPoint) first;
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) points);
        TouchPoint touchPoint2 = (TouchPoint) last;
        if (touchPoint2 == touchPoint) {
            touchPoint2 = this.currentPoint.copy();
        }
        return new TouchPointPair(touchPoint, touchPoint2);
    }

    /* renamed from: e */
    public final List<Guideline> m33905e() {
        List<Guideline> listOf;
        List<Guideline> emptyList;
        TouchPointPair m33904d = m33904d();
        if (m33904d == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new Guideline(this.shape.getShapeUniqueId(), m33901a(m33904d.getP1()), m33901a(m33904d.getP2()), this.shape.getShapeUniqueId()));
        return listOf;
    }

    /* renamed from: f */
    public final TouchPoint m33906f(TouchPoint touchPointInPage) {
        TouchPoint m33901a = m33901a(touchPointInPage);
        TouchPoint m33901a2 = m33901a(this.currentPoint);
        TouchPointPair m33904d = m33904d();
        if (m33904d == null) {
            return touchPointInPage;
        }
        ShapeGuideLineConsumeResult consumeStickyDistance = this.guideLineRender.consumeStickyDistance(m33901a, m33901a2, GeometryUtils.INSTANCE.boundRect(m33904d), ShapeTransformAction.Drag);
        if (!consumeStickyDistance.getIsStickyState()) {
            this.currentPoint = touchPointInPage;
            return touchPointInPage;
        }
        TouchPoint copy = m33901a2.copy();
        copy.translate(consumeStickyDistance.getDx(), consumeStickyDistance.getDy());
        TouchPoint m33902b = m33902b(copy);
        this.currentPoint = m33902b;
        return m33902b;
    }

    /* renamed from: g */
    public final void m33907g() {
        this.guideLineRender.update(m33901a(this.currentPoint), m33905e());
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler
    public void onDown(@NotNull TouchPoint touchPointInPage) {
        Intrinsics.checkNotNullParameter(touchPointInPage, "touchPointInPage");
        this.guideLineRender.onPoint(m33901a(touchPointInPage), 0);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler
    @NotNull
    public TouchPoint onMove(@NotNull TouchPoint touchPointInPage) {
        Intrinsics.checkNotNullParameter(touchPointInPage, "touchPointInPage");
        if (this.shape.isFreeSubType()) {
            return touchPointInPage;
        }
        this.guideLineRender.onPoint(m33901a(touchPointInPage), 2);
        m33906f(touchPointInPage);
        m33907g();
        return this.currentPoint;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler
    public void onUp(@NotNull TouchPoint touchPointInPage) {
        Intrinsics.checkNotNullParameter(touchPointInPage, "touchPointInPage");
        m33903c(touchPointInPage);
        this.guideLineRender.clear();
        this.guideLineRender.onPoint(m33901a(touchPointInPage), 1);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler
    public void render(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (this.shape.isFreeSubType()) {
            return;
        }
        StandardGuideLineRender.drawGuideLines$default(this.guideLineRender, renderContext.getCanvas(), null, this.shape.getStrokeWidth(), 2, null);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeGuideLineHandler
    public void updateRenderContext(@Nullable RenderContext renderContext) {
        this.renderContext = renderContext;
    }
}
