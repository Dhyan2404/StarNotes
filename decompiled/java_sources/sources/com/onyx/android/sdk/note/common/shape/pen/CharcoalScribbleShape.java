package com.onyx.android.sdk.note.common.shape.pen;

import android.graphics.Matrix;
import android.graphics.Paint;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.data.render.CharcoalNeoPenRender;
import com.onyx.android.sdk.note.common.data.render.NeoPenRender;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.pen.data.PenRenderArgs;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.pen.NeoCharcoalPen;
import com.onyx.android.sdk.pen.NeoPenConfig;
import com.onyx.android.sdk.replicator.note.data.pen.PenAttrs;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import com.onyx.android.sdk.replicator.note.data.shape.TiltConfig;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b/\u00100J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\u000b\u001a\u00020\tH\u0016J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016J\u001e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0010\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\u0004H\u0002J\b\u0010\u0018\u001a\u00020\tH\u0002J\u001e\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\t0\u0019H\u0002J\u0018\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\fH\u0002J\u0018\u0010\"\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 H\u0002R\"\u0010)\u001a\u00020 8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u0010.\u001a\u00020 8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b-\u0010&¨\u00061"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/pen/CharcoalScribbleShape;", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "lowLatencyRender", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "", "onLowLatencyTouchData", "clearLowLatencyData", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", PointConstant.POINT_FILE_END, "d", "b", "force", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", "e", "c", "Lkotlin/Function0;", "a", "pdfShape", "shapeBean", "i", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;", "shapeCreateArgs", "", "defaultConfig", C6998g.f39679a, "J", "I", "getType", "()I", "setType", "(I)V", "type", "K", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;", "neoPenRender", C6999h.f39688c, "penType", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CharcoalScribbleShape extends PenShape {

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 22;

    /* renamed from: K, reason: from kotlin metadata */
    @Nullable
    public NeoPenRender neoPenRender;

    /* renamed from: f */
    public static /* synthetic */ NeoPenRender m33892f(CharcoalScribbleShape charcoalScribbleShape, RenderContext renderContext, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return charcoalScribbleShape.m33897e(renderContext, z);
    }

    /* renamed from: a */
    public final void m33893a(RenderContext renderContext, Function0<Unit> render) {
        Paint.Style style = renderContext.getPaint().getStyle();
        ShapeRenders.INSTANCE.applyStrokeStyle(this, renderContext);
        render.invoke();
        renderContext.getPaint().setStyle(style);
    }

    /* renamed from: b */
    public final void m33894b(RenderContext renderContext) {
        m33895c();
        NeoCharcoalPen.Companion companion = NeoCharcoalPen.INSTANCE;
        NeoPenConfig defaultPenConfig = companion.defaultPenConfig();
        defaultPenConfig.m72321setWidth(ShapeRenders.INSTANCE.getRenderStrokeWidth(this, renderContext));
        defaultPenConfig.m72312setColor(renderContext.getRenderColor(getStrokeColor()));
        TiltConfig tiltConfig = getShapeCreateArgs().getTiltConfig();
        if (tiltConfig != null) {
            defaultPenConfig.m72318setTiltEnabled(tiltConfig.getTiltEnabled());
            defaultPenConfig.m72319setTiltScale(tiltConfig.getTiltScale());
        }
        NeoCharcoalPen create = companion.create(defaultPenConfig);
        if (create == null) {
            return;
        }
        this.neoPenRender = new CharcoalNeoPenRender(create);
    }

    /* renamed from: c */
    public final void m33895c() {
        NeoPenRender neoPenRender = this.neoPenRender;
        if (neoPenRender != null) {
            neoPenRender.destroyPen();
        }
        this.neoPenRender = null;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void clearLowLatencyData() {
        m33895c();
    }

    /* renamed from: d */
    public final void m33896d(RenderContext renderContext, List<TouchPoint> points) {
        if (renderContext.isFillRenderType()) {
            ShapeRenders.INSTANCE.drawPath(this, renderContext);
            return;
        }
        NeoPenRender m33897e = m33897e(renderContext, true);
        if (m33897e == null) {
            return;
        }
        m33897e.render(renderContext.getCanvas(), renderContext.getPaint(), TouchPoint.INSTANCE.renderPointArray(getRenderMatrix(renderContext), points));
        m33895c();
    }

    /* renamed from: e */
    public final NeoPenRender m33897e(RenderContext renderContext, boolean force) {
        if (this.neoPenRender == null || force) {
            m33894b(renderContext);
        }
        return this.neoPenRender;
    }

    /* renamed from: g */
    public final int m33898g(ShapeCreateArgs shapeCreateArgs, int defaultConfig) {
        PenAttrs penAttrs = shapeCreateArgs.getPenAttrs();
        if (penAttrs == null) {
            return defaultConfig;
        }
        int texture = penAttrs.getTexture();
        if (texture == 1) {
            return 4;
        }
        if (texture != 2) {
            return defaultConfig;
        }
        return 5;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    /* renamed from: h */
    public final int m33899h() {
        PenAttrs penAttrs = getShapeCreateArgs().getPenAttrs();
        return (penAttrs == null || penAttrs.getTexture() != 2) ? 4 : 5;
    }

    /* renamed from: i */
    public final void m33900i(PdfShapeInfo pdfShape, EmbedShapeBean shapeBean) {
        TouchPoint.Companion companion = TouchPoint.INSTANCE;
        List<TouchPoint> renderPointArray = companion.renderPointArray(MatrixKt.getMatrixByValues(shapeBean.getMatrixValues()), shapeBean.getPointList().getPoints());
        float revisedDisplayScale = shapeBean.getShapeCreateArgs().getRevisedDisplayScale();
        List<TouchPoint> scalePointList = companion.scalePointList(renderPointArray, revisedDisplayScale);
        float f = shapeBean.getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_WIDTH java.lang.String() * revisedDisplayScale * shapeBean.getRenderScale();
        ArrayList arrayList = new ArrayList();
        new PenRenderArgs().setCreateArgs(shapeBean.getShapeCreateArgs()).setPenType(m33898g(shapeBean.getShapeCreateArgs(), 4)).setColor(shapeBean.getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_COLOR java.lang.String()).setPoints(scalePointList).setScreenMatrix(new Matrix()).setStrokeWidth(f);
        arrayList.isEmpty();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyRender(@NotNull final RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        final NeoPenRender m33892f = m33892f(this, renderContext, false, 2, null);
        if (m33892f == null) {
            return false;
        }
        m33893a(renderContext, new Function0<Unit>() { // from class: com.onyx.android.sdk.note.common.shape.pen.CharcoalScribbleShape$lowLatencyRender$1
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
                NeoPenRender.this.render(renderContext.getCanvas(), renderContext.getPaint());
            }
        });
        return true;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public void onLowLatencyTouchData(@NotNull RenderContext renderContext, @NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        NeoPenRender m33897e = m33897e(renderContext, touchData.isTouchDown());
        if (m33897e == null) {
            return;
        }
        m33897e.onTouchData(touchData);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull final RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        final List<TouchPoint> points = getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints();
        if (points.isEmpty()) {
            return false;
        }
        m33893a(renderContext, new Function0<Unit>() { // from class: com.onyx.android.sdk.note.common.shape.pen.CharcoalScribbleShape$render$1
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
                CharcoalScribbleShape.this.m33896d(renderContext, points);
            }
        });
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
        PdfShapeInfo initPdfShape = PdfShapeConvertUtils.INSTANCE.initPdfShape(PdfShapeInfo.INSTANCE.createCharcoalStrokeShape(), embedShapeBean);
        m33900i(initPdfShape, embedShapeBean);
        return initPdfShape;
    }
}
