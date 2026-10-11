package com.onyx.android.sdk.note.common.shape.pen;

import android.annotation.TargetApi;
import android.graphics.Matrix;
import android.graphics.Paint;
import androidx.annotation.RequiresApi;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.data.render.NeoPenRender;
import com.onyx.android.sdk.note.common.data.render.NotePenShapeResults;
import com.onyx.android.sdk.note.common.data.render.PencilNeoPenRender;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.pen.NeoPen;
import com.onyx.android.sdk.pen.NeoPenConfig;
import com.onyx.android.sdk.pen.NeoPencilPen;
import com.onyx.android.sdk.pen.PenBrushResult;
import com.onyx.android.sdk.pen.PenPrecision;
import com.onyx.android.sdk.pen.PenResult;
import com.onyx.android.sdk.replicator.note.data.pen.PenAttrs;
import com.onyx.android.sdk.replicator.note.data.shape.TiltConfig;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 ?2\u00020\u0001:\u0001?B\u0007¢\u0006\u0004\b=\u0010>J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\t\u001a\u00020\u0006H\u0016J\b\u0010\n\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0017J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\b\u0010\u0013\u001a\u00020\u0012H\u0016J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\b\u0010\u001d\u001a\u00020\u0012H\u0016J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J4\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010 \u001a\u00020\u001f2\u0016\b\u0002\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u0002\u0018\u00010!H\u0003J\u001c\u0010(\u001a\u0004\u0018\u00010'2\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010&\u001a\u00020\u0006H\u0002J\b\u0010)\u001a\u00020\u0002H\u0002J\u001e\u0010+\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020*H\u0002J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\"\u00103\u001a\u00020\u00128\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0018\u00106\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010<\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b;\u00100¨\u0006@"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape;", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "", "clearRender", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "prepareRender", "render", "useLowLatencyFlush", "readyToLowLatencyFlush", Constants.RESET, "lowLatencyFlush", "resetLowLatencyData", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "cloneLowLatencyData", "cloneRenderData", "", "getRenderPointSize", "lowLatencyRender", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "onLowLatencyTouchData", "clearLowLatencyData", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "getUsePointCount", C6997f.f39671c, "Landroid/graphics/Matrix;", "matrix", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;", "c", "force", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", C6998g.f39679a, "e", "Lkotlin/Function0;", "b", "a", "J", "I", "getType", "()I", "setType", "(I)V", "type", "K", "Lcom/onyx/android/sdk/note/common/data/render/PencilNeoPenRender;", "neoPenRender", "Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;", "L", "Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;", "penResults", "i", "penType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPencilScribbleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PencilScribbleShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,249:1\n1855#2,2:250\n1855#2,2:252\n117#3:254\n*S KotlinDebug\n*F\n+ 1 PencilScribbleShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/PencilScribbleShape\n*L\n141#1:250,2\n155#1:252,2\n235#1:254\n*E\n"})
/* loaded from: classes8.dex */
public final class PencilScribbleShape extends PenShape {

    /* renamed from: M */
    public static final int f43758M = 1000;

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 46;

    /* renamed from: K, reason: from kotlin metadata */
    @Nullable
    public PencilNeoPenRender neoPenRender;

    /* renamed from: L, reason: from kotlin metadata */
    @Nullable
    public volatile NotePenShapeResults penResults;

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public static /* synthetic */ PencilNeoPenRender m33922d(PencilScribbleShape pencilScribbleShape, RenderContext renderContext, Matrix matrix, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            matrix = pencilScribbleShape.getRenderMatrix(renderContext);
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        return pencilScribbleShape.m33926c(renderContext, matrix, function1);
    }

    /* renamed from: h */
    public static /* synthetic */ NeoPenRender m33923h(PencilScribbleShape pencilScribbleShape, RenderContext renderContext, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return pencilScribbleShape.m33929g(renderContext, z);
    }

    /* renamed from: a */
    public final void m33924a(RenderContext renderContext) {
        ShapeRenders.INSTANCE.applyStrokeStyle(this, renderContext);
        renderContext.getPaint().setAntiAlias(false);
        renderContext.getPaint().setDither(false);
        renderContext.getPaint().setAlpha((renderContext.getPaint().getColor() >> 24) & 255);
    }

    /* renamed from: b */
    public final void m33925b(RenderContext renderContext, Function0<Unit> render) {
        Paint.Style style = renderContext.getPaint().getStyle();
        int alpha = renderContext.getPaint().getAlpha();
        try {
            m33924a(renderContext);
            render.invoke();
        } finally {
            renderContext.getPaint().setStyle(style);
            renderContext.getPaint().setAlpha(alpha);
        }
    }

    @TargetApi(29)
    /* renamed from: c */
    public final PencilNeoPenRender m33926c(RenderContext renderContext, Matrix matrix, Function1<? super NeoPenConfig, Unit> config) {
        NeoPencilPen.Companion companion = NeoPencilPen.INSTANCE;
        NeoPenConfig defaultPenConfig = companion.defaultPenConfig();
        defaultPenConfig.m72320setType(m33930i());
        defaultPenConfig.m72321setWidth(((Number) MathUtils.INSTANCE.atLeast(Float.valueOf(ShapeRenders.INSTANCE.getRenderStrokeWidth(this, renderContext)), Float.valueOf(defaultPenConfig.getMinWidth()))).floatValue());
        defaultPenConfig.m72312setColor(renderContext.getRenderColor(getStrokeColor()));
        defaultPenConfig.setPressureSensitivity(getShapeCreateArgs().getPressureSensitivity());
        defaultPenConfig.setAlphaFactor(getShapeCreateArgs().getAlphaFactor());
        defaultPenConfig.m72315setDpi(getShapeCreateArgs().getDpi());
        defaultPenConfig.m72313setDisplayScaleX(MatrixKt.getScaleX(matrix) / getShapeCreateArgs().getDisplayScale());
        defaultPenConfig.m72314setDisplayScaleY(MatrixKt.getScaleY(matrix) / getShapeCreateArgs().getDisplayScale());
        TiltConfig tiltConfig = getShapeCreateArgs().getTiltConfig();
        if (tiltConfig != null) {
            defaultPenConfig.m72318setTiltEnabled(false);
            defaultPenConfig.m72319setTiltScale(tiltConfig.getTiltScale());
        }
        if (config != null) {
            config.invoke(defaultPenConfig);
        }
        NeoPencilPen create = companion.create(defaultPenConfig);
        if (create == null) {
            return null;
        }
        return new PencilNeoPenRender(create);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void clearLowLatencyData() {
        m33927e();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void clearRender() {
        NotePenShapeResults.INSTANCE.clearCache(this.penResults);
        this.penResults = null;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    @RequiresApi(29)
    public void cloneLowLatencyData(@NotNull Shape shape) {
        NeoPencilPen create;
        Intrinsics.checkNotNullParameter(shape, "shape");
        PencilScribbleShape pencilScribbleShape = shape instanceof PencilScribbleShape ? (PencilScribbleShape) shape : null;
        if (pencilScribbleShape == null) {
            return;
        }
        m33927e();
        PencilNeoPenRender pencilNeoPenRender = pencilScribbleShape.neoPenRender;
        NeoPen neoPen = pencilNeoPenRender != null ? pencilNeoPenRender.getNeoPen() : null;
        NeoPencilPen neoPencilPen = neoPen instanceof NeoPencilPen ? (NeoPencilPen) neoPen : null;
        if (neoPencilPen == null || (create = NeoPencilPen.INSTANCE.create(neoPencilPen.getMaskGenerator().getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String())) == null) {
            return;
        }
        PencilNeoPenRender pencilNeoPenRender2 = new PencilNeoPenRender(create);
        this.neoPenRender = pencilNeoPenRender2;
        ArrayList<Pair<PenResult, PenResult>> penResults = pencilNeoPenRender2.getPenResults();
        if (penResults != null) {
            PencilNeoPenRender pencilNeoPenRender3 = pencilScribbleShape.neoPenRender;
            CollectionKt.safeAddAll(penResults, pencilNeoPenRender3 != null ? pencilNeoPenRender3.getPenResults() : null);
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void cloneRenderData(@NotNull Shape shape) {
        NotePenShapeResults notePenShapeResults;
        List mutableList;
        Intrinsics.checkNotNullParameter(shape, "shape");
        PencilScribbleShape pencilScribbleShape = shape instanceof PencilScribbleShape ? (PencilScribbleShape) shape : null;
        if (pencilScribbleShape == null || (notePenShapeResults = pencilScribbleShape.penResults) == null || CollectionKt.isNullOrEmpty(notePenShapeResults.getResults())) {
            return;
        }
        PenPrecision precision = notePenShapeResults.getPrecision();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) notePenShapeResults.getResults());
        this.penResults = new NotePenShapeResults(precision, mutableList);
    }

    /* renamed from: e */
    public final void m33927e() {
        PencilNeoPenRender pencilNeoPenRender = this.neoPenRender;
        if (pencilNeoPenRender != null) {
            pencilNeoPenRender.destroyPen();
        }
        this.neoPenRender = null;
    }

    /* renamed from: f */
    public final void m33928f(RenderContext renderContext) {
        List<Pair<PenResult, PenResult>> results;
        if (renderContext.isFillRenderType()) {
            ShapeRenders.INSTANCE.drawPath(this, renderContext);
            return;
        }
        if (this.penResults == null) {
            prepareRender(renderContext);
        }
        float renderStrokeWidth = ShapeRenders.INSTANCE.getRenderStrokeWidth(this, renderContext) / getStrokeWidth();
        Matrix renderMatrix = getRenderMatrix(renderContext);
        NotePenShapeResults notePenShapeResults = this.penResults;
        if (notePenShapeResults != null && (results = notePenShapeResults.getResults()) != null) {
            Iterator<T> it2 = results.iterator();
            while (it2.hasNext()) {
                Object first = ((Pair) it2.next()).getFirst();
                PenBrushResult penBrushResult = first instanceof PenBrushResult ? (PenBrushResult) first : null;
                if (penBrushResult != null) {
                    penBrushResult.setEnabledClipRect(true);
                    penBrushResult.setMatrix(renderMatrix);
                    penBrushResult.setPointSizeScale(renderStrokeWidth);
                    if (getStrokeWidth() < 1.0f) {
                        penBrushResult.setWidthDeltaScale(getStrokeWidth());
                    }
                }
            }
        }
        PenResult.Companion companion = PenResult.INSTANCE;
        NotePenShapeResults notePenShapeResults2 = this.penResults;
        companion.render(notePenShapeResults2 != null ? notePenShapeResults2.getResults() : null, renderContext.getCanvas(), renderContext.getPaint());
    }

    /* renamed from: g */
    public final NeoPenRender m33929g(RenderContext renderContext, boolean force) {
        if (this.neoPenRender == null || force) {
            m33927e();
            m33924a(renderContext);
            this.neoPenRender = m33922d(this, renderContext, null, null, 6, null);
        }
        return this.neoPenRender;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0050  */
    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getRenderPointSize() {
        /*
            r5 = this;
            com.onyx.android.sdk.note.common.data.render.NotePenShapeResults r0 = r5.penResults
            r1 = 0
            r2 = 0
            if (r0 == 0) goto L32
            java.util.List r0 = r0.getResults()
            if (r0 == 0) goto L32
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        L12:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L32
            java.lang.Object r3 = r0.next()
            kotlin.Pair r3 = (kotlin.Pair) r3
            java.lang.Object r3 = r3.getFirst()
            boolean r4 = r3 instanceof com.onyx.android.sdk.pen.PenBrushResult
            if (r4 == 0) goto L29
            com.onyx.android.sdk.pen.PenBrushResult r3 = (com.onyx.android.sdk.pen.PenBrushResult) r3
            goto L2a
        L29:
            r3 = r1
        L2a:
            com.onyx.android.sdk.pen.PenBrushResult$Companion r4 = com.onyx.android.sdk.pen.PenBrushResult.INSTANCE
            int r3 = r4.getPointsCount(r3)
            int r2 = r2 + r3
            goto L12
        L32:
            com.onyx.android.sdk.note.common.data.render.NotePenShapeResults r5 = r5.penResults
            if (r5 == 0) goto L4b
            java.util.List r5 = r5.getResults()
            if (r5 == 0) goto L4b
            java.lang.Object r5 = kotlin.collections.CollectionsKt.lastOrNull(r5)
            kotlin.Pair r5 = (kotlin.Pair) r5
            if (r5 == 0) goto L4b
            java.lang.Object r5 = r5.getSecond()
            com.onyx.android.sdk.pen.PenResult r5 = (com.onyx.android.sdk.pen.PenResult) r5
            goto L4c
        L4b:
            r5 = r1
        L4c:
            boolean r0 = r5 instanceof com.onyx.android.sdk.pen.PenBrushResult
            if (r0 == 0) goto L53
            r1 = r5
            com.onyx.android.sdk.pen.PenBrushResult r1 = (com.onyx.android.sdk.pen.PenBrushResult) r1
        L53:
            com.onyx.android.sdk.pen.PenBrushResult$Companion r5 = com.onyx.android.sdk.pen.PenBrushResult.INSTANCE
            int r5 = r5.getPointsCount(r1)
            int r2 = r2 + r5
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.shape.pen.PencilScribbleShape.getRenderPointSize():int");
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.pen.PenShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public int getUsePointCount() {
        return getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().size() + getRenderPointSize();
    }

    /* renamed from: i */
    public final int m33930i() {
        PenAttrs penAttrs = getShapeCreateArgs().getPenAttrs();
        return (penAttrs == null || penAttrs.getTexture() != 2) ? 4 : 5;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyFlush(@NotNull RenderContext renderContext, boolean reset) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return lowLatencyFlush(renderContext, this.neoPenRender, reset);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        NeoPenRender m33923h = m33923h(this, renderContext, false, 2, null);
        if (m33923h == null) {
            return false;
        }
        m33923h.render(renderContext.getCanvas(), renderContext.getPaint());
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void onLowLatencyTouchData(@NotNull RenderContext renderContext, @NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        NeoPenRender m33929g = m33929g(renderContext, touchData.isTouchDown());
        if (m33929g == null) {
            return;
        }
        m33929g.onTouchData(touchData);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public synchronized boolean prepareRender(@NotNull final RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (renderContext.isFillRenderType()) {
            return true;
        }
        PenPrecision penPrecision = NeoPenConfig.INSTANCE.getPenPrecision(1.0f);
        NotePenShapeResults.Companion companion = NotePenShapeResults.INSTANCE;
        if (companion.isValid(this.penResults, penPrecision)) {
            return true;
        }
        List<Pair<PenResult, PenResult>> preparePenResults = ShapeRenders.INSTANCE.preparePenResults(this, new Function0<NeoPenRender>() { // from class: com.onyx.android.sdk.note.common.shape.pen.PencilScribbleShape$prepareRender$result$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final NeoPenRender invoke() {
                PencilNeoPenRender m33926c;
                PencilScribbleShape pencilScribbleShape = PencilScribbleShape.this;
                RenderContext renderContext2 = renderContext;
                Matrix matrix = new Matrix();
                final PencilScribbleShape pencilScribbleShape2 = PencilScribbleShape.this;
                final RenderContext renderContext3 = renderContext;
                m33926c = pencilScribbleShape.m33926c(renderContext2, matrix, new Function1<NeoPenConfig, Unit>() { // from class: com.onyx.android.sdk.note.common.shape.pen.PencilScribbleShape$prepareRender$result$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(NeoPenConfig neoPenConfig) {
                        invoke2(neoPenConfig);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull NeoPenConfig it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.m72321setWidth(((Number) MathUtils.INSTANCE.atLeast(Float.valueOf(PencilScribbleShape.this.getStrokeWidth()), Float.valueOf(1.0f))).floatValue());
                        it2.m72312setColor(renderContext3.getRenderColor(PencilScribbleShape.this.getStrokeColor()));
                    }
                });
                return m33926c;
            }
        });
        if (preparePenResults == null) {
            return false;
        }
        PenResult.INSTANCE.clearCache(preparePenResults);
        this.penResults = new NotePenShapeResults(penPrecision, preparePenResults);
        return companion.isValid(this.penResults, penPrecision);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean readyToLowLatencyFlush() {
        PencilNeoPenRender pencilNeoPenRender = this.neoPenRender;
        return pencilNeoPenRender != null && pencilNeoPenRender.getBrushPointCount() >= 1000;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull final RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext) || getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints().isEmpty()) {
            return false;
        }
        m33925b(renderContext, new Function0<Unit>() { // from class: com.onyx.android.sdk.note.common.shape.pen.PencilScribbleShape$render$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                PencilScribbleShape.this.m33928f(renderContext);
            }
        });
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void resetLowLatencyData() {
        PencilNeoPenRender pencilNeoPenRender = this.neoPenRender;
        if (pencilNeoPenRender != null) {
            pencilNeoPenRender.reset();
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        return PdfShapeConvertUtils.INSTANCE.createImagePdfShape(this, embedShapeBean);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean useLowLatencyFlush() {
        return true;
    }
}
