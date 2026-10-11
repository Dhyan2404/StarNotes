package com.onyx.android.sdk.pen;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.lite.utils.ColorUtils;
import com.onyx.android.sdk.pen.NeoPencilPen;
import com.onyx.android.sdk.pen.PenBrushResult;
import com.onyx.android.sdk.pen.utils.PenUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 G2\u00020\u0001:\u0002GHB%\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00100\u0018\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u0012\u0006\u0010D\u001a\u000206¢\u0006\u0004\bE\u0010FJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0096\u0002J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u0014\u001a\u00020\nH\u0002J(\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0002R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00100\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\"\u0010%\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010,\u001a\u00020&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u0010/\u001a\u00020&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010'\u001a\u0004\b-\u0010)\"\u0004\b.\u0010+R\"\u00102\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010;\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010 R\u0014\u0010=\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010 R\u0014\u0010?\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010 R\u0014\u0010C\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010B¨\u0006I"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/PenBrushResult;", "Lcom/onyx/android/sdk/pen/PenResult;", "", "getPointsCount", "add", RequestParameters.SUBRESOURCE_APPEND, "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Paint;", "paint", "", "draw", "", Constants.ATTRVAL_OTHER, "", "equals", "Lcom/onyx/android/sdk/pen/PenBrushInk;", "point", "d", "e", C6997f.f39671c, "shapeColor", "shapeAlpha", "b", "", "Ljava/util/List;", "brushPoints", "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;", "c", "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;", "maskGenerator", "Landroid/graphics/Matrix;", "Landroid/graphics/Matrix;", "getMatrix", "()Landroid/graphics/Matrix;", "setMatrix", "(Landroid/graphics/Matrix;)V", "matrix", "", "F", "getPointSizeScale", "()F", "setPointSizeScale", "(F)V", "pointSizeScale", "getWidthDeltaScale", "setWidthDeltaScale", "widthDeltaScale", C6998g.f39679a, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "isEnabledClipRect", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setEnabledClipRect", "(Z)V", "Landroid/graphics/RectF;", C6999h.f39688c, "Landroid/graphics/RectF;", "canvasBoundingRectF", "i", "invertMatrix", "j", "pointScaleRenderMatrix", C4921e.f26537n, "pointBitmapRenderMatrix", "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;", "l", "Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$MaskKey;", "tempMaskKey", "rect", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion$BrushMaskGenerator;Landroid/graphics/RectF;)V", "Companion", "a", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PenBrushResult extends PenResult {
    public static final float POINT_SIZE_FACTOR = 255.0f;

    /* renamed from: m */
    public static final int f44270m = 255;

    /* renamed from: n */
    public static final int f44271n = 4;

    /* renamed from: o */
    public static final int f44272o = 2;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<PenBrushInk> brushPoints;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final NeoPencilPen.Companion.BrushMaskGenerator maskGenerator;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public Matrix matrix;

    /* renamed from: e, reason: from kotlin metadata */
    public float pointSizeScale;

    /* renamed from: f, reason: from kotlin metadata */
    public float widthDeltaScale;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean isEnabledClipRect;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RectF canvasBoundingRectF;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Matrix invertMatrix;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Matrix pointScaleRenderMatrix;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Matrix pointBitmapRenderMatrix;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final NeoPencilPen.Companion.MaskKey tempMaskKey;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: p */
    @NotNull
    public static final Map<Integer, C7576a> f44273p = new LinkedHashMap();

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\f\u0010\u0004\u001a\u00020\u0003*\u0004\u0018\u00010\u0002R\u0014\u0010\u0005\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00038\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0006R\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR \u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/PenBrushResult$Companion;", "", "Lcom/onyx/android/sdk/pen/PenBrushResult;", "", "getPointsCount", "MAX_ALPHA_INT", "I", "MIN_ALPHA_INT", "MIN_POINT_SIZE", "", "POINT_SIZE_FACTOR", "F", "", "Lcom/onyx/android/sdk/pen/PenBrushResult$a;", "bitmapPaintMap", "Ljava/util/Map;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getPointsCount(@Nullable PenBrushResult penBrushResult) {
            List list;
            if (penBrushResult == null || (list = penBrushResult.brushPoints) == null) {
                return 0;
            }
            return list.size();
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PenBrushResult(@NotNull List<PenBrushInk> brushPoints, @NotNull NeoPencilPen.Companion.BrushMaskGenerator maskGenerator, @NotNull RectF rect) {
        super(rect);
        Intrinsics.checkNotNullParameter(brushPoints, "brushPoints");
        Intrinsics.checkNotNullParameter(maskGenerator, "maskGenerator");
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.brushPoints = brushPoints;
        this.maskGenerator = maskGenerator;
        this.matrix = new Matrix();
        this.pointSizeScale = 1.0f;
        this.widthDeltaScale = 1.0f;
        this.canvasBoundingRectF = new RectF();
        this.invertMatrix = new Matrix();
        this.pointScaleRenderMatrix = new Matrix();
        this.pointBitmapRenderMatrix = new Matrix();
        this.tempMaskKey = new NeoPencilPen.Companion.MaskKey(2, 0);
    }

    /* renamed from: c */
    public static final C7576a m34449c(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (C7576a) tmp0.invoke(obj);
    }

    @Override // com.onyx.android.sdk.pen.PenResult
    @Nullable
    public PenResult append(@Nullable PenResult add) {
        return null;
    }

    /* renamed from: b */
    public final void m34450b(Canvas canvas, final int shapeColor, int shapeAlpha, PenBrushInk point) {
        final int coerceIn;
        float size = ((point.getSize() & 255) / 255.0f) * this.maskGenerator.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getWidth() * this.pointSizeScale;
        float f = this.widthDeltaScale;
        if (!(f == 1.0f)) {
            size *= f;
        }
        this.tempMaskKey.setSize(Math.max(2, (int) size));
        this.tempMaskKey.setAngle(point.getAngle36() & 255);
        NeoPencilPen.Companion.BitmapHolder maskBitmap = this.maskGenerator.getMaskBitmap(this.tempMaskKey);
        Bitmap bitmap = maskBitmap.getBitmap();
        float x = (point.getX() * this.pointSizeScale) - maskBitmap.getHalfWidth();
        float y = (point.getY() * this.pointSizeScale) - maskBitmap.getHalfWidth();
        coerceIn = RangesKt___RangesKt.coerceIn((int) (((point.getAlpha() & 255) / 255) * shapeAlpha * this.maskGenerator.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getAlphaFactor()), 4, 255);
        Map<Integer, C7576a> map = f44273p;
        Integer valueOf = Integer.valueOf(coerceIn);
        final Function1<Integer, C7576a> function1 = new Function1<Integer, C7576a>() { // from class: com.onyx.android.sdk.pen.PenBrushResult$drawMask$paintHolder$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final PenBrushResult.C7576a invoke(@NotNull Integer it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new PenBrushResult.C7576a(shapeColor, coerceIn);
            }
        };
        C7576a computeIfAbsent = map.computeIfAbsent(valueOf, new Function() { // from class: com.sunia.HTREnginev2.l1l
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                PenBrushResult.C7576a m34449c;
                m34449c = PenBrushResult.m34449c(Function1.this, obj);
                return m34449c;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        C7576a c7576a = computeIfAbsent;
        if (shapeColor != c7576a.m34455b()) {
            c7576a.m34457d(shapeColor, coerceIn);
        }
        this.pointBitmapRenderMatrix.setTranslate(x, y);
        this.pointBitmapRenderMatrix.postConcat(this.pointScaleRenderMatrix);
        canvas.drawBitmap(bitmap, this.pointBitmapRenderMatrix, c7576a.m34454a());
    }

    /* renamed from: d */
    public final boolean m34451d(PenBrushInk point) {
        if (this.isEnabledClipRect) {
            return this.canvasBoundingRectF.contains(point.getX(), point.getY());
        }
        return true;
    }

    @Override // com.onyx.android.sdk.pen.PenResult
    public void draw(@NotNull Canvas canvas, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        m34453f();
        m34452e(canvas);
        int alpha = paint.getAlpha();
        int color = paint.getColor();
        for (PenBrushInk penBrushInk : this.brushPoints) {
            if (m34451d(penBrushInk)) {
                m34450b(canvas, color, alpha, penBrushInk);
            }
        }
    }

    /* renamed from: e */
    public final void m34452e(Canvas canvas) {
        if (this.isEnabledClipRect) {
            this.canvasBoundingRectF.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
            float f = -(this.maskGenerator.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getWidth() * this.pointSizeScale);
            this.canvasBoundingRectF.inset(f, f);
            this.invertMatrix.reset();
            this.matrix.invert(this.invertMatrix);
            this.invertMatrix.mapRect(this.canvasBoundingRectF);
        }
    }

    public boolean equals(@Nullable Object other) {
        if (other == null || !(other instanceof PenBrushResult)) {
            return false;
        }
        PenBrushResult penBrushResult = (PenBrushResult) other;
        if (this.brushPoints.size() != penBrushResult.brushPoints.size()) {
            return false;
        }
        int size = this.brushPoints.size();
        for (int i = 0; i < size; i++) {
            if (!Intrinsics.areEqual(this.brushPoints.get(i), penBrushResult.brushPoints.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final void m34453f() {
        Matrix matrix = this.pointScaleRenderMatrix;
        matrix.reset();
        matrix.set(this.matrix);
        float f = 1;
        float f2 = this.pointSizeScale;
        matrix.postScale(f / f2, f / f2);
        PenUtils penUtils = PenUtils.INSTANCE;
        float f3 = this.pointSizeScale;
        penUtils.scaleTranslate(matrix, f3, f3);
    }

    @NotNull
    public final Matrix getMatrix() {
        return this.matrix;
    }

    public final float getPointSizeScale() {
        return this.pointSizeScale;
    }

    @Override // com.onyx.android.sdk.pen.PenResult
    /* renamed from: getPointsCount */
    public int getF44295j() {
        return this.brushPoints.size();
    }

    public final float getWidthDeltaScale() {
        return this.widthDeltaScale;
    }

    /* renamed from: isEnabledClipRect, reason: from getter */
    public final boolean getIsEnabledClipRect() {
        return this.isEnabledClipRect;
    }

    public final void setEnabledClipRect(boolean z) {
        this.isEnabledClipRect = z;
    }

    public final void setMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.matrix = matrix;
    }

    public final void setPointSizeScale(float f) {
        this.pointSizeScale = f;
    }

    public final void setWidthDeltaScale(float f) {
        this.widthDeltaScale = f;
    }

    /* renamed from: com.onyx.android.sdk.pen.PenBrushResult$a */
    /* loaded from: classes8.dex */
    public static final class C7576a {

        /* renamed from: a */
        public int f44285a;

        /* renamed from: b */
        @NotNull
        public final Paint f44286b;

        public C7576a(int i, int i2) {
            this.f44285a = i;
            Paint paint = new Paint();
            paint.setAntiAlias(false);
            paint.setDither(false);
            paint.setFilterBitmap(false);
            paint.setColor(ColorUtils.INSTANCE.replaceAlphaWithBitwise(this.f44285a, i2));
            this.f44286b = paint;
        }

        @NotNull
        /* renamed from: a */
        public final Paint m34454a() {
            return this.f44286b;
        }

        /* renamed from: b */
        public final int m34455b() {
            return this.f44285a;
        }

        /* renamed from: c */
        public final void m34456c(int i) {
            this.f44285a = i;
        }

        /* renamed from: d */
        public final void m34457d(int i, int i2) {
            this.f44285a = i;
            this.f44286b.setColor(ColorUtils.INSTANCE.replaceAlphaWithBitwise(i, i2));
        }

        public /* synthetic */ C7576a(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? -16777216 : i, i2);
        }
    }
}
