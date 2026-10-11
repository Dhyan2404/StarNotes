package com.onyx.android.sdk.note.common.data.render;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.common.utils.NotePageInfoUtils;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.replicator.note.data.zoom.NoteZoomInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0002\b#\u0018\u0000 u2\u00020\u0001:\u0001uB\u0007¢\u0006\u0004\bs\u0010tJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000bJ\u000e\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0014\u001a\u00020\u0011J\u0006\u0010\u0015\u001a\u00020\u0011J\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0016J\u0006\u0010\u001b\u001a\u00020\u001aJ\b\u0010\u001c\u001a\u00020\u001aH\u0007J\u0006\u0010\u001d\u001a\u00020\u0004J\u0006\u0010\u001e\u001a\u00020\u0004J\u0006\u0010\u001f\u001a\u00020\u000bJ\u0006\u0010 \u001a\u00020\u000bJ\u0006\u0010!\u001a\u00020\u000bJ\u0006\u0010\"\u001a\u00020\u000bJ\u0006\u0010#\u001a\u00020\u000bJ\u0006\u0010$\u001a\u00020\u000bJ\u0006\u0010%\u001a\u00020\u0016J\u000e\u0010%\u001a\u00020\u00162\u0006\u0010\b\u001a\u00020\u0004J\u000e\u0010'\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u001aJ\u0006\u0010)\u001a\u00020(J\u0006\u0010*\u001a\u00020\u000bJ\u0006\u0010+\u001a\u00020\u000bJ\u0006\u0010,\u001a\u00020\u000bJ\u000e\u0010.\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u000bJ\u000e\u00101\u001a\u00020\u00022\u0006\u00100\u001a\u00020/J\u000e\u00101\u001a\u00020\u00022\u0006\u00103\u001a\u000202J\u0006\u00104\u001a\u000202J\u000e\u00106\u001a\u00020\u00002\u0006\u00105\u001a\u00020(J\u0006\u00107\u001a\u00020(J\u0010\u0010:\u001a\u00020\u00002\b\u00109\u001a\u0004\u0018\u000108J\u0006\u0010;\u001a\u00020\u001aJ\f\u0010=\u001a\b\u0012\u0004\u0012\u00020\u001a0<J\b\u0010>\u001a\u0004\u0018\u000108J\u0006\u0010?\u001a\u00020\u001aJ\u0006\u0010@\u001a\u00020\u0016J\u0006\u0010A\u001a\u00020(J\u000e\u0010D\u001a\u00020B2\u0006\u0010C\u001a\u00020BJ\u000e\u0010E\u001a\u00020B2\u0006\u0010C\u001a\u00020BJ\u0018\u0010E\u001a\u00020B2\b\u0010F\u001a\u0004\u0018\u00010(2\u0006\u0010C\u001a\u00020BJ\u000e\u0010H\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u000bJ\u000e\u0010I\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u000bJ\u0010\u0010K\u001a\u00020\u00042\b\u0010J\u001a\u0004\u0018\u00010\u0004J\u0006\u0010L\u001a\u00020\u0016J\u0006\u0010M\u001a\u00020\u0016J\u000e\u0010O\u001a\u00020\u000b2\u0006\u0010N\u001a\u00020\u000bJ\u0010\u0010P\u001a\u00020\u00022\b\u00105\u001a\u0004\u0018\u00010(J\u0006\u0010Q\u001a\u00020\u0002J\b\u0010R\u001a\u00020\u0000H\u0016J\b\u0010T\u001a\u00020SH\u0016R\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010\u000f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010VR\u0016\u0010-\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010VR\u0016\u0010\b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010ZR\u0016\u0010^\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0018\u00109\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u0016\u0010F\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR\"\u0010g\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u0010b\u001a\u0004\bc\u0010d\"\u0004\be\u0010fR\u0016\u0010j\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0016\u0010m\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\"\u0010r\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010V\u001a\u0004\bn\u0010o\"\u0004\bp\u0010q¨\u0006v"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;", "", "", "a", "Landroid/graphics/RectF;", "zoomRect", "setZoomRect", "getZoomRect", "viewPortRect", "setViewPortRect", "getViewPortRect", "", "viewPortScale", "setViewPortScale", "getViewPortScaling", "viewPortScaling", "setViewPortScaling", "", "rotation", "setWindowRotation", "getWindowRotation", "getWindowAngle", "", "isRestoredZoom", "restored", "setRestoredZoom", "Landroid/graphics/Rect;", "getPageRenderRect", "getLimitNoteRect", "getPageRenderRectF", "getViewportCenterRect", "getViewPortScale", "getFitScreenScale", "getFitWidthScale", "getFitHeightScale", "getFullFitCanvasScale", "getFitCanvasScale", "isCanvasOutOfScreen", "viewRect", "isRectChanged", "Landroid/graphics/Matrix;", "getViewPortMatrix", "getRenderScale", "getNormalizeScale", "getScale", "renderScale", "setRenderScale", "Landroid/view/View;", "renderView", "setViewPoint", "Landroid/graphics/Point;", "point", "getViewPoint", "m", "setMatrix", "getMatrix", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "pageInfo", "setPageInfo", "getViewRect", "", "getDisableRect", "getPageInfo", "getPageRect", "isViewScaling", "getNormalizeMatrix", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "p", "normalizePoint", "matrixPoint", "matrix", "size", "getNormalizeSize", "getRenderSize", "rectF", "getNormalizeRect", "isFitScreen", "isLessThanFitScreenScale", "value", "getMatrixNormalValue", "updateDisplayScale", Constants.RESET, "clone", "", "toString", "e", "F", C6997f.f39671c, C6998g.f39679a, C6999h.f39688c, "Landroid/graphics/RectF;", "i", "j", "Landroid/graphics/Point;", "viewPoint", C4921e.f26537n, "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "l", "Landroid/graphics/Matrix;", "getScalingMatrix", "()Landroid/graphics/Matrix;", "setScalingMatrix", "(Landroid/graphics/Matrix;)V", "scalingMatrix", GoogleApiAvailabilityLight.f29016b, Constants.HASIDCALL_INDEX_SIG, "restoredZoom", C4921e.f26528e, "I", "windowRotation", "getStrokeWidthDisplayScale", "()F", "setStrokeWidthDisplayScale", "(F)V", "strokeWidthDisplayScale", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RenderMeasure implements Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: e, reason: from kotlin metadata */
    public volatile float viewPortScale;

    /* renamed from: f, reason: from kotlin metadata */
    public volatile float viewPortScaling;

    /* renamed from: g, reason: from kotlin metadata */
    public volatile float renderScale;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public volatile RectF viewPortRect;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public volatile RectF zoomRect;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public volatile Point viewPoint;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public PageInfo pageInfo;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public Matrix matrix;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public Matrix scalingMatrix;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean restoredZoom;

    /* renamed from: o, reason: from kotlin metadata */
    public int windowRotation;

    /* renamed from: p, reason: from kotlin metadata */
    public float strokeWidthDisplayScale;

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0004J\u001a\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;", "", "()V", "getDefaultPageHeight", "", "getDefaultPageRect", "Landroid/graphics/Rect;", "getDefaultPageWidth", "updateZoomInfo", "", "zoomInfo", "Lcom/onyx/android/sdk/replicator/note/data/zoom/NoteZoomInfo;", "renderMeasure", "Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getDefaultPageHeight() {
            ResManager resManager = ResManager.INSTANCE;
            return resManager.isLandscapeWindows() ? resManager.getShorterRealScreenSize() : resManager.getLongerRealScreenSize();
        }

        @NotNull
        public final Rect getDefaultPageRect() {
            return new Rect(0, 0, getDefaultPageWidth(), getDefaultPageHeight());
        }

        public final int getDefaultPageWidth() {
            ResManager resManager = ResManager.INSTANCE;
            return resManager.isLandscapeWindows() ? resManager.getLongerRealScreenSize() : resManager.getShorterRealScreenSize();
        }

        public final void updateZoomInfo(@Nullable NoteZoomInfo zoomInfo, @Nullable RenderMeasure renderMeasure) {
            if (zoomInfo == null || renderMeasure == null) {
                return;
            }
            zoomInfo.setViewportScale(renderMeasure.getViewPortScale());
            RectF viewPortRect = renderMeasure.getViewPortRect();
            RectF zoomRect = renderMeasure.getZoomRect();
            if (viewPortRect.isEmpty()) {
                return;
            }
            zoomInfo.setViewPortPos(new TouchPoint(viewPortRect.left / zoomRect.width(), viewPortRect.top / zoomRect.height()));
        }

        public Companion() {
        }
    }

    public RenderMeasure() {
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.viewPortScale = FLOAT_ONE.floatValue();
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.viewPortScaling = FLOAT_ONE.floatValue();
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.renderScale = FLOAT_ONE.floatValue();
        this.viewPortRect = new RectF();
        this.zoomRect = new RectF();
        this.viewPoint = new Point();
        this.matrix = new Matrix();
        this.scalingMatrix = new Matrix();
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.strokeWidthDisplayScale = FLOAT_ONE.floatValue();
    }

    /* renamed from: a */
    public final void m33655a() {
        RectUtils rectUtils = RectUtils.INSTANCE;
        RectF rectF = rectUtils.toRectF(getPageRect());
        Intrinsics.checkNotNull(rectF);
        rectUtils.scale(rectF, getScale(), getScale());
        setZoomRect(rectF);
    }

    @NotNull
    public final List<Rect> getDisableRect() {
        ArrayList arrayList = new ArrayList();
        Rect viewRect = getViewRect();
        Rect pageRenderRect = getPageRenderRect();
        Rect rect = new Rect(pageRenderRect.right, pageRenderRect.top, viewRect.right, viewRect.bottom);
        Rect rect2 = new Rect(pageRenderRect.left, pageRenderRect.bottom, viewRect.right, viewRect.bottom);
        if (!rect.isEmpty()) {
            arrayList.add(rect);
        }
        if (!rect2.isEmpty()) {
            arrayList.add(rect2);
        }
        return arrayList;
    }

    public final float getFitCanvasScale() {
        float coerceAtMost;
        Rect defaultPageRect = INSTANCE.getDefaultPageRect();
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(defaultPageRect.width() / getViewPortRect().width(), defaultPageRect.height() / getViewPortRect().height());
        return coerceAtMost;
    }

    public final float getFitHeightScale() {
        return (getViewPortRect().height() / getPageRect().height()) / getRenderScale();
    }

    public final float getFitScreenScale() {
        float coerceAtMost;
        Rect pageRect = getPageRect();
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(getViewPortRect().width() / pageRect.width(), getViewPortRect().height() / pageRect.height());
        return coerceAtMost / getRenderScale();
    }

    public final float getFitWidthScale() {
        return (getViewPortRect().width() / getPageRect().width()) / getRenderScale();
    }

    public final float getFullFitCanvasScale() {
        float coerceAtLeast;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(getFitWidthScale(), getFitHeightScale());
        return coerceAtLeast;
    }

    @SuppressLint({"CheckResult"})
    @NotNull
    public final Rect getLimitNoteRect() {
        Rect pageRenderRect = getPageRenderRect();
        Rect viewRect = getViewRect();
        viewRect.intersect(pageRenderRect);
        return viewRect;
    }

    @NotNull
    public final Matrix getMatrix() {
        return this.matrix;
    }

    public final float getMatrixNormalValue(float value) {
        float[] fArr = {0.0f, value};
        this.matrix.mapPoints(fArr);
        return fArr[1] - fArr[0];
    }

    @NotNull
    public final Matrix getNormalizeMatrix() {
        Matrix matrix = new Matrix();
        getMatrix().invert(matrix);
        return matrix;
    }

    @NotNull
    public final RectF getNormalizeRect(@Nullable RectF rectF) {
        RectF rectF2 = new RectF(rectF);
        RectUtils.INSTANCE.scale(rectF2, getNormalizeScale() / getViewPortScale(), getNormalizeScale() / getViewPortScale());
        return rectF2;
    }

    public final float getNormalizeScale() {
        return NumberUtils.FLOAT_ONE.floatValue() / getRenderScale();
    }

    public final float getNormalizeSize(float size) {
        return (size * getNormalizeScale()) / getViewPortScale();
    }

    @Nullable
    public final PageInfo getPageInfo() {
        return this.pageInfo;
    }

    @NotNull
    public final Rect getPageRect() {
        return NotePageInfoUtils.INSTANCE.getPageRect(this.pageInfo);
    }

    @NotNull
    public final Rect getPageRenderRect() {
        Rect rectByCeil = RectUtils.INSTANCE.toRectByCeil(getPageRenderRectF());
        Intrinsics.checkNotNull(rectByCeil);
        return rectByCeil;
    }

    @NotNull
    public final RectF getPageRenderRectF() {
        Rect pageRect = getPageRect();
        return new RectF(0.0f, 0.0f, (pageRect.width() * getScale()) - getViewPortRect().left, (pageRect.height() * getScale()) - getViewPortRect().top);
    }

    public final float getRenderScale() {
        return this.renderScale;
    }

    public final float getRenderSize(float size) {
        return (size * getRenderScale()) / getViewPortScale();
    }

    public final float getScale() {
        return getRenderScale() * getViewPortScale();
    }

    @NotNull
    public final Matrix getScalingMatrix() {
        return this.scalingMatrix;
    }

    public final float getStrokeWidthDisplayScale() {
        return this.strokeWidthDisplayScale;
    }

    @NotNull
    public final Point getViewPoint() {
        return this.viewPoint;
    }

    @NotNull
    public final Matrix getViewPortMatrix() {
        Matrix matrix = new Matrix();
        matrix.postScale(getViewPortScale(), getViewPortScale(), 0.0f, 0.0f);
        matrix.postTranslate(-getViewPortRect().left, -getViewPortRect().top);
        return matrix;
    }

    @NotNull
    public final RectF getViewPortRect() {
        return this.viewPortRect;
    }

    public final float getViewPortScale() {
        return this.viewPortScale;
    }

    public final float getViewPortScaling() {
        return this.viewPortScaling;
    }

    @NotNull
    public final Rect getViewRect() {
        return new Rect(0, 0, (int) getViewPortRect().width(), (int) getViewPortRect().height());
    }

    @NotNull
    public final RectF getViewportCenterRect() {
        float coerceAtMost;
        float coerceAtMost2;
        RectF rectF = RectUtils.INSTANCE.toRectF(getPageRenderRect());
        Intrinsics.checkNotNull(rectF);
        float f = rectF.left;
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(rectF.width(), this.viewPortRect.width());
        float f2 = f + coerceAtMost;
        float f3 = rectF.top;
        coerceAtMost2 = RangesKt___RangesKt.coerceAtMost(rectF.height(), this.viewPortRect.height());
        return new RectF(rectF.left, rectF.top, f2, f3 + coerceAtMost2);
    }

    public final int getWindowAngle() {
        return getWindowRotation() * 90;
    }

    public final int getWindowRotation() {
        return this.windowRotation;
    }

    @NotNull
    public final RectF getZoomRect() {
        return this.zoomRect;
    }

    public final boolean isCanvasOutOfScreen() {
        return isCanvasOutOfScreen(getViewPortRect());
    }

    public final boolean isFitScreen() {
        return Float.compare(getViewPortScale(), getFitScreenScale()) == 0;
    }

    public final boolean isLessThanFitScreenScale() {
        return getViewPortScale() <= getFitScreenScale();
    }

    public final boolean isRectChanged(@NotNull Rect viewRect) {
        Intrinsics.checkNotNullParameter(viewRect, "viewRect");
        Rect rectByFloor = RectUtils.INSTANCE.toRectByFloor(getViewPortRect());
        Intrinsics.checkNotNull(rectByFloor);
        return (viewRect.width() == rectByFloor.width() && viewRect.height() == rectByFloor.height()) ? false : true;
    }

    /* renamed from: isRestoredZoom, reason: from getter */
    public final boolean getRestoredZoom() {
        return this.restoredZoom;
    }

    public final boolean isViewScaling() {
        float f = this.viewPortScale;
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        return Float.compare(f, FLOAT_ONE.floatValue()) != 0;
    }

    @NotNull
    public final TouchPoint matrixPoint(@NotNull TouchPoint p) {
        Intrinsics.checkNotNullParameter(p, "p");
        return matrixPoint(getMatrix(), p);
    }

    @NotNull
    public final TouchPoint normalizePoint(@NotNull TouchPoint p) {
        Intrinsics.checkNotNullParameter(p, "p");
        return matrixPoint(getNormalizeMatrix(), p);
    }

    public final void reset() {
        Debug.INSTANCE.m32052i(RenderMeasure.class, Constants.RESET, new Object[0]);
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        this.viewPortScale = FLOAT_ONE.floatValue();
        this.viewPoint = new Point();
        this.viewPortRect = new RectF();
        this.zoomRect = new RectF();
        this.matrix = new Matrix();
        this.pageInfo = null;
    }

    @NotNull
    public final RenderMeasure setMatrix(@NotNull Matrix m) {
        Intrinsics.checkNotNullParameter(m, "m");
        Matrix matrix = new Matrix(m);
        this.matrix = matrix;
        matrix.getValues(new float[9]);
        return this;
    }

    @NotNull
    public final RenderMeasure setPageInfo(@Nullable PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        m33655a();
        return this;
    }

    public final void setRenderScale(float renderScale) {
        this.renderScale = renderScale;
        m33655a();
    }

    @NotNull
    public final RenderMeasure setRestoredZoom(boolean restored) {
        this.restoredZoom = restored;
        return this;
    }

    public final void setScalingMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.scalingMatrix = matrix;
    }

    public final void setStrokeWidthDisplayScale(float f) {
        this.strokeWidthDisplayScale = f;
    }

    public final void setViewPoint(@NotNull View renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Rect globalVisibleRect = ViewKt.globalVisibleRect(renderView);
        setViewPoint(new Point(globalVisibleRect.left, globalVisibleRect.top));
    }

    public final void setViewPortRect(@NotNull RectF viewPortRect) {
        Intrinsics.checkNotNullParameter(viewPortRect, "viewPortRect");
        if (viewPortRect.width() == 0.0f) {
            return;
        }
        if (viewPortRect.height() == 0.0f) {
            return;
        }
        this.viewPortRect = new RectF(viewPortRect);
    }

    public final void setViewPortScale(float viewPortScale) {
        this.viewPortScale = viewPortScale;
        m33655a();
    }

    public final void setViewPortScaling(float viewPortScaling) {
        this.viewPortScaling = viewPortScaling;
    }

    public final void setWindowRotation(int rotation) {
        this.windowRotation = rotation;
        Debug.INSTANCE.m32035d(RenderMeasure.class, "windowRotation: " + this.windowRotation, new Object[0]);
    }

    public final void setZoomRect(@Nullable RectF zoomRect) {
        this.zoomRect = new RectF(zoomRect);
    }

    @NotNull
    public String toString() {
        return "viewPortScale:" + getViewPortScale() + ",renderScale:" + getRenderScale() + ",normalizeScale:" + getNormalizeScale() + ",viewPortRect:" + getViewPortRect().toShortString() + ",zoomRect:" + getZoomRect().toShortString();
    }

    public final void updateDisplayScale(@Nullable Matrix m) {
        if (m == null) {
            return;
        }
        this.strokeWidthDisplayScale = MatrixKt.getScaleX(m);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    @org.jetbrains.annotations.NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.onyx.android.sdk.note.common.data.render.RenderMeasure m72299clone() {
        /*
            r2 = this;
            r0 = 0
            java.lang.Object r1 = super.clone()     // Catch: java.lang.CloneNotSupportedException -> L2a
            com.onyx.android.sdk.note.common.data.render.RenderMeasure r1 = (com.onyx.android.sdk.note.common.data.render.RenderMeasure) r1     // Catch: java.lang.CloneNotSupportedException -> L2a
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)     // Catch: java.lang.CloneNotSupportedException -> L27
            android.graphics.RectF r0 = r2.getViewPortRect()     // Catch: java.lang.CloneNotSupportedException -> L27
            r1.setViewPortRect(r0)     // Catch: java.lang.CloneNotSupportedException -> L27
            android.graphics.Matrix r0 = r2.getMatrix()     // Catch: java.lang.CloneNotSupportedException -> L27
            r1.setMatrix(r0)     // Catch: java.lang.CloneNotSupportedException -> L27
            com.onyx.android.sdk.replicator.note.data.page.PageInfo r0 = r2.getPageInfo()     // Catch: java.lang.CloneNotSupportedException -> L27
            r1.setPageInfo(r0)     // Catch: java.lang.CloneNotSupportedException -> L27
            android.graphics.RectF r2 = r2.getZoomRect()     // Catch: java.lang.CloneNotSupportedException -> L27
            r1.setZoomRect(r2)     // Catch: java.lang.CloneNotSupportedException -> L27
            goto L2f
        L27:
            r2 = move-exception
            r0 = r1
            goto L2b
        L2a:
            r2 = move-exception
        L2b:
            r2.printStackTrace()
            r1 = r0
        L2f:
            if (r1 != 0) goto L36
            com.onyx.android.sdk.note.common.data.render.RenderMeasure r1 = new com.onyx.android.sdk.note.common.data.render.RenderMeasure
            r1.<init>()
        L36:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.data.render.RenderMeasure.m72299clone():com.onyx.android.sdk.note.common.data.render.RenderMeasure");
    }

    public final boolean isCanvasOutOfScreen(@NotNull RectF viewPortRect) {
        Intrinsics.checkNotNullParameter(viewPortRect, "viewPortRect");
        Rect rectByFloor = RectUtils.INSTANCE.toRectByFloor(getPageRenderRectF());
        Intrinsics.checkNotNull(rectByFloor);
        return ((float) rectByFloor.height()) > viewPortRect.height() || ((float) rectByFloor.width()) > viewPortRect.width();
    }

    @NotNull
    public final TouchPoint matrixPoint(@Nullable Matrix matrix, @NotNull TouchPoint p) {
        Intrinsics.checkNotNullParameter(p, "p");
        TouchPoint touchPoint = new TouchPoint(p);
        touchPoint.applyMatrix(matrix);
        return touchPoint;
    }

    public final void setViewPoint(@NotNull Point point) {
        Intrinsics.checkNotNullParameter(point, "point");
        this.viewPoint = point;
        Debug.INSTANCE.m32035d(RenderMeasure.class, "viewPoint: " + point, new Object[0]);
    }
}
