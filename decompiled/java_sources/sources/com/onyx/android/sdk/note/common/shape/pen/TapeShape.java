package com.onyx.android.sdk.note.common.shape.pen;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.PathKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.BitmapShaderReference;
import com.onyx.android.sdk.note.common.data.shape.ShapeShaderManager;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.utils.GraphicalShapeSplitter;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.common.utils.ShapeHitTests;
import com.onyx.android.sdk.note.common.utils.ShapeRenderUtils;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0016\u0018\u0000 c2\u00020\u0001:\u0001cB\u0007¢\u0006\u0004\ba\u0010bJ\u001a\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\fH\u0002J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\fH\u0002J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0002JQ\u0010 \u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00152%\b\u0002\u0010\u001f\u001a\u001f\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\t\u0018\u00010\u001aH\u0002J\u0010\u0010!\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\"\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010#\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010$\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010(\u001a\u00020'2\u0006\u0010&\u001a\u00020%H\u0002J\u0018\u0010+\u001a\u00020'2\u0006\u0010&\u001a\u00020%2\u0006\u0010*\u001a\u00020)H\u0002J\u0018\u0010.\u001a\u0004\u0018\u00010,2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0\u0012H\u0002J \u00102\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u00172\u0006\u00100\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u0017H\u0002J\u0012\u00103\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\n\u00104\u001a\u0004\u0018\u00010\fH\u0002J\u0012\u00105\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\n\u00106\u001a\u0004\u0018\u00010\fH\u0002J\b\u00107\u001a\u00020\fH\u0002J\u001e\u00109\u001a\u00020\u00132\u0006\u00108\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0002J\u0012\u0010:\u001a\u00020)2\b\b\u0002\u0010*\u001a\u00020)H\u0002J\u0012\u0010/\u001a\u00020\u00042\b\b\u0002\u0010;\u001a\u00020)H\u0002J\u0018\u0010>\u001a\u00020\t2\u0006\u0010<\u001a\u00020\u00132\u0006\u0010=\u001a\u00020\u0013H\u0016J\u0010\u0010?\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010@\u001a\u00020\tH\u0016J\u0010\u0010A\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010B\u001a\u00020'2\u0006\u0010&\u001a\u00020%H\u0016J\b\u0010C\u001a\u00020\fH\u0016J \u0010D\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u00172\u0006\u00100\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u0017H\u0016J\b\u0010E\u001a\u00020)H\u0016J\u0010\u0010I\u001a\u00020H2\u0006\u0010G\u001a\u00020FH\u0016R\"\u0010;\u001a\u00020)8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\u0014\u0010Q\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010KR\u0014\u0010S\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010KR\u001b\u0010Y\u001a\u00020T8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bU\u0010V\u001a\u0004\bW\u0010XR\u0014\u0010\\\u001a\u00020\u00178\u0002X\u0082D¢\u0006\u0006\n\u0004\bZ\u0010[R\u0014\u0010^\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010[R\u0014\u0010`\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b_\u0010[¨\u0006d"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;", "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "checkIntersect", "B", "Landroid/graphics/Paint$Style;", "s", "", "b", "c", "Landroid/graphics/Path;", "A", "path", "i", "e", "d", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", PointConstant.POINT_FILE_END, "Landroid/graphics/RectF;", "p", "", "fixedHeight", "boundingRect", "Lkotlin/Function1;", "Landroid/graphics/Matrix;", "Lkotlin/ParameterName;", "name", "localMatrix", "applyMatrix", C6997f.f39671c, "j", C6999h.f39688c, "a", C4921e.f26537n, "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;", "eraseBean", "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "", GeoConstant.KEY_SUB_TYPE, "E", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapeList", "z", "x", "y", "radius", "w", "q", GoogleApiAvailabilityLight.f29016b, "r", C4921e.f26528e, "l", "first", "m", "u", "type", "normalizedPoint", "screenPoint", "onMove", "render", "updateShapeRect", "lowLatencyRender", "split", "getPath", "hitTest", "getUsePointCount", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "J", "I", "getType", "()I", "setType", "(I)V", "K", "tapeStrokeStyleWidth", "L", "shadowColor", "Landroid/graphics/Paint;", "M", "Lkotlin/Lazy;", "t", "()Landroid/graphics/Paint;", "shadowPaint", "N", "F", "shadowDx", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "shadowOffset", "P", "shadowDy", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTapeShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapeShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/TapeShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,496:1\n1#2:497\n1855#3,2:498\n1855#3,2:500\n1855#3,2:502\n*S KotlinDebug\n*F\n+ 1 TapeShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/TapeShape\n*L\n339#1:498,2\n359#1:500,2\n371#1:502,2\n*E\n"})
/* loaded from: classes8.dex */
public class TapeShape extends PenShape {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: Q */
    public static boolean f43764Q = true;

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 39;

    /* renamed from: K, reason: from kotlin metadata */
    public final int tapeStrokeStyleWidth;

    /* renamed from: L, reason: from kotlin metadata */
    public final int shadowColor;

    /* renamed from: M, reason: from kotlin metadata */
    @NotNull
    public final Lazy shadowPaint;

    /* renamed from: N, reason: from kotlin metadata */
    public final float shadowDx;

    /* renamed from: O, reason: from kotlin metadata */
    public final float shadowOffset;

    /* renamed from: P, reason: from kotlin metadata */
    public final float shadowDy;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0003\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$Companion;", "", "()V", "isAllTapeClose", "", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setAllTapeClose", "(Z)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isAllTapeClose() {
            return TapeShape.f43764Q;
        }

        public final void setAllTapeClose(boolean z) {
            TapeShape.f43764Q = z;
        }

        public Companion() {
        }
    }

    public TapeShape() {
        Lazy lazy;
        ResManager resManager = ResManager.INSTANCE;
        this.tapeStrokeStyleWidth = resManager.getDimens(C7485R.dimen.tape_stroke_style_width);
        this.shadowColor = resManager.getColor(C7485R.color.tape_shadow_color);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Paint>() { // from class: com.onyx.android.sdk.note.common.shape.pen.TapeShape$shadowPaint$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Paint invoke() {
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                return paint;
            }
        });
        this.shadowPaint = lazy;
        this.shadowOffset = resManager.getDimens(C7485R.dimen.tape_shadow_width);
        this.shadowDy = resManager.getDimens(C7485R.dimen.tape_shadow_width);
    }

    /* renamed from: C */
    public static /* synthetic */ boolean m33931C(TapeShape tapeShape, RenderContext renderContext, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: renderInternal");
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return tapeShape.m33936B(renderContext, z);
    }

    /* renamed from: g */
    public static /* synthetic */ void m33932g(TapeShape tapeShape, RenderContext renderContext, Path path, float f, RectF rectF, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawPathWithShader");
        }
        if ((i & 4) != 0) {
            f = -1.0f;
        }
        float f2 = f;
        if ((i & 16) != 0) {
            function1 = null;
        }
        tapeShape.m33944f(renderContext, path, f2, rectF, function1);
    }

    /* renamed from: v */
    public static /* synthetic */ int m33933v(TapeShape tapeShape, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getSplitSubType");
        }
        if ((i2 & 1) != 0) {
            i = ShapePersistOptionsKt.getTapeSubShapeType$default(tapeShape, 0, 1, null);
        }
        return tapeShape.m33958u(i);
    }

    /* renamed from: y */
    public static /* synthetic */ boolean m33934y(TapeShape tapeShape, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: isFreeSubType");
        }
        if ((i2 & 1) != 0) {
            i = ShapePersistOptionsKt.getTapeSubShapeType$default(tapeShape, 0, 1, null);
        }
        return tapeShape.m33960x(i);
    }

    /* renamed from: A */
    public final Path m33935A(RenderContext renderContext) {
        Object firstOrNull;
        Path path = new Path();
        List<TouchPoint> renderPoints = getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getRenderPoints();
        float strokeWidth = renderContext.getPaint().getStrokeWidth() / renderContext.getRenderMeasure().getStrokeWidthDisplayScale();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) renderPoints);
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return path;
        }
        TouchPoint m33950m = m33950m(touchPoint, renderPoints);
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            touchPoint = touchPoint.copy();
            touchPoint.mapMatrix(shapeMatrix);
            m33950m = m33950m.copy();
            m33950m.mapMatrix(shapeMatrix);
        }
        float f = strokeWidth / 2.0f;
        MathUtils mathUtils = MathUtils.INSTANCE;
        float calculateRadian = mathUtils.calculateRadian(touchPoint.getX(), touchPoint.getY(), m33950m.getX(), m33950m.getY());
        float radianToAngle = mathUtils.radianToAngle(calculateRadian);
        float calculatePerpendicularX = mathUtils.calculatePerpendicularX(calculateRadian, f);
        float calculatePerpendicularY = mathUtils.calculatePerpendicularY(calculateRadian, f);
        TouchPoint copy = touchPoint.copy();
        copy.offset(calculatePerpendicularX, calculatePerpendicularY);
        TouchPoint copy2 = m33950m.copy();
        copy2.offset(calculatePerpendicularX, calculatePerpendicularY);
        TouchPoint copy3 = m33950m.copy();
        copy3.offset(-calculatePerpendicularX, -calculatePerpendicularY);
        RectF rectF = new RectF(m33950m.getX() - f, m33950m.getY() - f, m33950m.getX() + f, m33950m.getY() + f);
        RectF rectF2 = new RectF(touchPoint.getX() - f, touchPoint.getY() - f, touchPoint.getX() + f, touchPoint.getY() + f);
        path.moveTo(copy.getX(), copy.getY());
        path.arcTo(rectF, radianToAngle - 90.0f, 180.0f);
        path.lineTo(copy2.getX(), copy2.getY());
        path.arcTo(rectF2, radianToAngle - 270.0f, 180.0f);
        path.lineTo(copy3.getX(), copy3.getY());
        return path;
    }

    /* renamed from: B */
    public final boolean m33936B(RenderContext renderContext, boolean checkIntersect) {
        if (checkIntersect && !isIntersectClipRect(renderContext)) {
            return false;
        }
        ShapeRenders.INSTANCE.applyStrokeStyle(this, renderContext);
        Paint.Style style = renderContext.getPaint().getStyle();
        Shader shader = renderContext.getPaint().getShader();
        float strokeWidth = renderContext.getPaint().getStrokeWidth();
        renderContext.getPaint().setStyle(m33956s());
        m33940b(renderContext);
        renderContext.getPaint().setShader(shader);
        renderContext.getPaint().setStyle(style);
        renderContext.getPaint().setStrokeWidth(strokeWidth);
        return true;
    }

    /* renamed from: D */
    public final SplitShapeResult m33937D(EraseBean eraseBean) {
        Shape m33961z;
        List<? extends Shape> listOf;
        SplitShapeResult split = super.split(eraseBean);
        if (!split.getShapeErased() && (m33961z = m33961z(CollectionKt.ensureList(split.getSplitShapes()))) != null) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(m33961z);
            split.setSplitShapes(listOf);
        }
        return split;
    }

    /* renamed from: E */
    public final SplitShapeResult m33938E(EraseBean eraseBean, int subType) {
        List<TouchPointList> listOf;
        List listOfNotNull;
        if (subType != 7) {
            float min = Math.min(RectKt.shorterSize(getPointsBoundingRect()), getStrokeWidth()) / 2.0f;
            SplitShapeResult splitShapeResult = new SplitShapeResult();
            List parseTouchPointsFromPath$default = TouchPoint.Companion.parseTouchPointsFromPath$default(TouchPoint.INSTANCE, getPath(), 0, 2, null);
            ShapeCopyUtils shapeCopyUtils = ShapeCopyUtils.INSTANCE;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(new TouchPointList((List<TouchPoint>) parseTouchPointsFromPath$default));
            List<Shape> cloneNewShapesAndRestMatrix = shapeCopyUtils.cloneNewShapesAndRestMatrix(listOf, this, getType());
            Iterator<T> it2 = cloneNewShapesAndRestMatrix.iterator();
            while (it2.hasNext()) {
                ((Shape) it2.next()).setStrokeWidth(Math.max(min, 1.0f));
            }
            return splitShapeResult.setSplitShapes(cloneNewShapesAndRestMatrix);
        }
        SplitShapeResult split = GraphicalShapeSplitter.INSTANCE.split(this, eraseBean, getType());
        List<Shape> splitShapes = split.getSplitShapes();
        if (splitShapes == null) {
            return split;
        }
        for (Shape shape : splitShapes) {
            Matrix shapeMatrix = getShapeMatrix();
            if (shapeMatrix != null) {
                shape.setStrokeWidth(shape.getStrokeWidth() * MatrixKt.getAverageScale(shapeMatrix));
            }
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new TouchPoint[]{shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().first(), shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().last()});
            shape.setPoints(new TouchPointList((List<TouchPoint>) listOfNotNull));
        }
        return split;
    }

    /* renamed from: a */
    public final void m33939a(RenderContext renderContext) {
        Path m33948k = m33948k(renderContext);
        if (m33948k == null) {
            return;
        }
        Paint paint = renderContext.getPaint();
        paint.setShader(null);
        Canvas canvas = renderContext.getCanvas();
        RectF computeBounds$default = PathKt.computeBounds$default(m33948k, false, 1, null);
        computeBounds$default.inset(-paint.getStrokeWidth(), -paint.getStrokeWidth());
        int saveLayer = canvas.saveLayer(computeBounds$default, null);
        canvas.drawPath(m33948k, paint);
        Paint paint2 = new Paint(paint);
        paint2.setStrokeWidth(paint.getStrokeWidth() - (this.tapeStrokeStyleWidth * ShapeRenders.INSTANCE.getDisplayScale(this, renderContext)));
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        canvas.drawPath(m33948k, paint2);
        canvas.restoreToCount(saveLayer);
    }

    /* renamed from: b */
    public final void m33940b(RenderContext renderContext) {
        if (ShapeOptions.INSTANCE.isTapeStrokeStyle(this)) {
            m33947j(renderContext);
            return;
        }
        int tapeSubShapeType$default = ShapePersistOptionsKt.getTapeSubShapeType$default(this, 0, 1, null);
        if (tapeSubShapeType$default == 1) {
            m33942d(renderContext);
        } else if (tapeSubShapeType$default != 7) {
            m33942d(renderContext);
        } else {
            m33941c(renderContext);
        }
    }

    /* renamed from: c */
    public final void m33941c(final RenderContext renderContext) {
        Object firstOrNull;
        List<TouchPoint> listOf;
        List<TouchPoint> renderPoints = getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getRenderPoints();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) renderPoints);
        final TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return;
        }
        final TouchPoint m33950m = m33950m(touchPoint, renderPoints);
        Path path = new Path();
        path.moveTo(touchPoint.getX(), touchPoint.getY());
        path.lineTo(m33950m.getX(), m33950m.getY());
        path.transform(getRenderMatrix(renderContext));
        float strokeWidth = renderContext.getPaint().getStrokeWidth() / ShapeRenders.INSTANCE.getDisplayScale(this, renderContext);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, m33950m});
        final RectF m33953p = m33953p(renderContext, listOf);
        m33944f(renderContext, path, strokeWidth, m33953p, new Function1<Matrix, Unit>() { // from class: com.onyx.android.sdk.note.common.shape.pen.TapeShape$drawLinePathWithRotate$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Matrix matrix) {
                invoke2(matrix);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Matrix it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                double calculateRotationAngle = MathUtils.INSTANCE.calculateRotationAngle(TouchPoint.this.getX(), TouchPoint.this.getY(), m33950m.getX(), m33950m.getY());
                it2.postTranslate(0.0f, renderContext.getPaint().getStrokeWidth() / 2);
                it2.postRotate((float) calculateRotationAngle, m33953p.centerX(), m33953p.centerY());
            }
        });
    }

    /* renamed from: d */
    public final void m33942d(RenderContext renderContext) {
        Path m33948k = m33948k(renderContext);
        if (m33948k == null) {
            return;
        }
        m33932g(this, renderContext, m33948k, 0.0f, m33953p(renderContext, getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getRenderPoints()), null, 20, null);
    }

    /* renamed from: e */
    public final void m33943e(RenderContext renderContext, Path path) {
        m33957t().setStyle(Paint.Style.FILL_AND_STROKE);
        m33957t().setColor(this.shadowColor);
        m33957t().setShadowLayer(this.shadowOffset, this.shadowDx, this.shadowDy, this.shadowColor);
        renderContext.getCanvas().drawPath(path, m33957t());
    }

    /* renamed from: f */
    public final void m33944f(RenderContext renderContext, Path path, float fixedHeight, RectF boundingRect, Function1<? super Matrix, Unit> applyMatrix) {
        Object firstOrNull;
        Paint paint = renderContext.getPaint();
        Matrix matrix = new Matrix();
        ShapeShaderManager shapeShaderManager = renderContext.getShapeShaderManager();
        if (shapeShaderManager != null) {
            int color = paint.getColor();
            String tapeShapeFillStyle = ShapePersistOptionsKt.getTapeShapeFillStyle(this);
            ShapeRenders shapeRenders = ShapeRenders.INSTANCE;
            BitmapShaderReference tapeFillShader = shapeShaderManager.getTapeFillShader(color, fixedHeight, tapeShapeFillStyle, shapeRenders.getDisplayScale(this, renderContext));
            tapeFillShader.getShader().getLocalMatrix(matrix);
            Matrix copy = MatrixKt.copy(matrix);
            copy.postScale(shapeRenders.getDisplayScale(this, renderContext), shapeRenders.getDisplayScale(this, renderContext));
            if (ShapePersistOptionsKt.getTapeSubShapeType$default(this, 0, 1, null) == 1) {
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getRenderPoints());
                TouchPoint touchPoint = (TouchPoint) firstOrNull;
                PointF pointF = touchPoint != null ? TouchPointKt.toPointF(touchPoint) : null;
                if (pointF != null) {
                    MatrixKt.mapSelfPoint(getRenderMatrix(renderContext), pointF);
                    copy.postTranslate(pointF.x, pointF.y);
                }
            } else {
                copy.postTranslate(boundingRect.centerX(), boundingRect.centerY());
            }
            copy.postRotate(-MatrixKt.getMatrixRotateAngel(getRenderMatrix(renderContext)), boundingRect.centerX(), boundingRect.centerY());
            if (applyMatrix != null) {
                applyMatrix.invoke(copy);
            }
            tapeFillShader.getShader().setLocalMatrix(copy);
            paint.setShader(tapeFillShader.getShader());
        }
        m33946i(renderContext, path);
        renderContext.getCanvas().drawPath(path, renderContext.getPaint());
        Shader shader = paint.getShader();
        if (shader != null) {
            shader.setLocalMatrix(matrix);
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    @NotNull
    public Path getPath() {
        int tapeSubShapeType$default = ShapePersistOptionsKt.getTapeSubShapeType$default(this, 0, 1, null);
        Path m33949l = tapeSubShapeType$default != 1 ? tapeSubShapeType$default != 7 ? m33949l() : m33951n() : m33952o();
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null && m33949l != null) {
            m33949l.transform(shapeMatrix);
        }
        return m33949l == null ? new Path() : m33949l;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.pen.PenShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public int getUsePointCount() {
        return getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().size();
    }

    /* renamed from: h */
    public final void m33945h(RenderContext renderContext) {
        Path m33948k = m33948k(renderContext);
        if (m33948k == null) {
            return;
        }
        Paint paint = renderContext.getPaint();
        paint.setShader(null);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.tapeStrokeStyleWidth * ShapeRenders.INSTANCE.getDisplayScale(this, renderContext));
        renderContext.getCanvas().drawPath(m33948k, paint);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        int tapeSubShapeType$default = ShapePersistOptionsKt.getTapeSubShapeType$default(this, 0, 1, null);
        return tapeSubShapeType$default != 1 ? tapeSubShapeType$default != 7 ? super.hitTest(x, y, Math.max(getStrokeWidth() / 2.0f, radius)) : m33959w(x, y, radius) : ShapeHitTests.INSTANCE.hitTestRect(this, getPointsBoundingRect(), x, y, radius);
    }

    /* renamed from: i */
    public final void m33946i(RenderContext renderContext, Path path) {
        int tapeSubShapeType$default = ShapePersistOptionsKt.getTapeSubShapeType$default(this, 0, 1, null);
        if (tapeSubShapeType$default == 1) {
            m33943e(renderContext, path);
        } else {
            if (tapeSubShapeType$default != 7) {
                return;
            }
            Path m33935A = m33935A(renderContext);
            m33935A.transform(ShapeOptions.INSTANCE.getTransformingMatrix(this));
            m33935A.transform(renderContext.getMatrix());
            m33943e(renderContext, m33935A);
        }
    }

    /* renamed from: j */
    public final void m33947j(RenderContext renderContext) {
        int tapeSubShapeType$default = ShapePersistOptionsKt.getTapeSubShapeType$default(this, 0, 1, null);
        if (tapeSubShapeType$default == 1) {
            m33945h(renderContext);
        } else if (tapeSubShapeType$default != 7) {
            m33939a(renderContext);
        } else {
            m33939a(renderContext);
        }
    }

    /* renamed from: k */
    public final Path m33948k(RenderContext renderContext) {
        int tapeSubShapeType$default = ShapePersistOptionsKt.getTapeSubShapeType$default(this, 0, 1, null);
        return tapeSubShapeType$default != 1 ? tapeSubShapeType$default != 7 ? ShapeRenders.INSTANCE.generateFreeDrawPath(this, renderContext) : m33954q(renderContext) : m33955r(renderContext);
    }

    /* renamed from: l */
    public final Path m33949l() {
        Path renderShape = ShapeRenderUtils.INSTANCE.renderShape(null, getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String());
        return renderShape == null ? new Path() : renderShape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        updateShapeRect();
        m33936B(renderContext, false);
        return true;
    }

    /* renamed from: m */
    public final TouchPoint m33950m(final TouchPoint first, List<TouchPoint> points) {
        Object lastOrNull;
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) points);
        TouchPoint touchPoint = (TouchPoint) lastOrNull;
        if (touchPoint == null) {
            touchPoint = getCurrentPoint();
        }
        return (TouchPoint) AnyKt.transform(touchPoint, new Function1<TouchPoint, TouchPoint>() { // from class: com.onyx.android.sdk.note.common.shape.pen.TapeShape$getLastPoint$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final TouchPoint invoke(@NotNull TouchPoint it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Intrinsics.areEqual(it2, TouchPoint.this) ? this.getCurrentPoint() : it2;
            }
        });
    }

    /* renamed from: n */
    public final Path m33951n() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints());
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return null;
        }
        TouchPoint m33950m = m33950m(touchPoint, getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints());
        Path path = new Path();
        path.moveTo(touchPoint.getX(), touchPoint.getY());
        path.lineTo(m33950m.getX(), m33950m.getY());
        return path;
    }

    /* renamed from: o */
    public final Path m33952o() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints());
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return null;
        }
        TouchPoint m33950m = m33950m(touchPoint, getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().getPoints());
        RectF rectF = new RectF(touchPoint.getX(), touchPoint.getY(), m33950m.getX(), m33950m.getY());
        Path path = new Path();
        path.addRect(rectF, Path.Direction.CW);
        return path;
    }

    @Override // com.onyx.android.sdk.note.common.shape.pen.PenShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public void onMove(@NotNull TouchPoint normalizedPoint, @NotNull TouchPoint screenPoint) {
        Intrinsics.checkNotNullParameter(normalizedPoint, "normalizedPoint");
        Intrinsics.checkNotNullParameter(screenPoint, "screenPoint");
        if (m33934y(this, 0, 1, null)) {
            super.onMove(normalizedPoint, screenPoint);
        } else {
            setCurrentPoint(new TouchPoint(normalizedPoint));
        }
    }

    /* renamed from: p */
    public final RectF m33953p(RenderContext renderContext, List<TouchPoint> points) {
        RectF boundingRect = TouchPointList.INSTANCE.getBoundingRect(points);
        RectKt.expand(boundingRect, this.shadowOffset);
        boundingRect.bottom += this.shadowDy;
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(boundingRect);
        }
        renderContext.getMatrix().mapRect(boundingRect);
        return boundingRect;
    }

    /* renamed from: q */
    public final Path m33954q(RenderContext renderContext) {
        Path m33951n = m33951n();
        if (m33951n != null) {
            m33951n.transform(getRenderMatrix(renderContext));
        }
        return m33951n;
    }

    /* renamed from: r */
    public final Path m33955r(RenderContext renderContext) {
        Path m33952o = m33952o();
        if (m33952o != null) {
            m33952o.transform(getRenderMatrix(renderContext));
        }
        return m33952o;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return m33931C(this, renderContext, false, 2, null);
    }

    /* renamed from: s */
    public final Paint.Style m33956s() {
        int tapeSubShapeType$default = ShapePersistOptionsKt.getTapeSubShapeType$default(this, 0, 1, null);
        return tapeSubShapeType$default != 1 ? tapeSubShapeType$default != 7 ? Paint.Style.STROKE : Paint.Style.FILL_AND_STROKE : Paint.Style.FILL;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.pen.PenShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) throws CloneNotSupportedException {
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        int tapeSubShapeType$default = ShapePersistOptionsKt.getTapeSubShapeType$default(this, 0, 1, null);
        SplitShapeResult m33937D = m33960x(tapeSubShapeType$default) ? m33937D(eraseBean) : m33938E(eraseBean, tapeSubShapeType$default);
        List<Shape> splitShapes = m33937D.getSplitShapes();
        if (splitShapes != null) {
            Iterator<T> it2 = splitShapes.iterator();
            while (it2.hasNext()) {
                ShapePersistOptionsKt.setTapeSubShapeType((Shape) it2.next(), m33958u(tapeSubShapeType$default), ShapePersistOptionsKt.getTapeShapeFillStyle(this));
            }
        }
        return m33937D;
    }

    /* renamed from: t */
    public final Paint m33957t() {
        return (Paint) this.shadowPaint.getValue();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        return PdfShapeConvertUtils.INSTANCE.createImagePdfShape(this, embedShapeBean);
    }

    /* renamed from: u */
    public final int m33958u(int subType) {
        Integer valueOf = Integer.valueOf(subType);
        valueOf.intValue();
        if (!(subType == 7)) {
            valueOf = null;
        }
        return ((Number) AnyKt.getOrElse(valueOf, new Function0<Integer>() { // from class: com.onyx.android.sdk.note.common.shape.pen.TapeShape$getSplitSubType$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return 36;
            }
        })).intValue();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        setOriginRect(getPointsBoundingRect());
        setBoundingRect(new RectF(getOriginRect()));
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(getBoundingRect());
        }
        RectKt.expand(getBoundingRect(), this.shadowOffset * 5.0f);
        getBoundingRect().right += this.shadowDx * 5.0f;
        getBoundingRect().bottom += this.shadowDy * 5.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [T, com.onyx.android.sdk.base.data.TouchPoint] */
    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v5, types: [T, com.onyx.android.sdk.base.data.TouchPoint] */
    /* JADX WARN: Type inference failed for: r3v8, types: [T, com.onyx.android.sdk.base.data.TouchPoint] */
    /* renamed from: w */
    public final boolean m33959w(float x, float y, float radius) {
        ?? first;
        float f;
        List<TouchPoint> points = getRenderPoints().getPoints();
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        first = CollectionsKt___CollectionsKt.first((List<? extends ??>) points);
        objectRef.element = first;
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = m33950m((TouchPoint) objectRef.element, points);
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            ?? copy = ((TouchPoint) objectRef.element).copy();
            copy.applyMatrix(shapeMatrix);
            objectRef.element = copy;
            ?? copy2 = ((TouchPoint) objectRef2.element).copy();
            copy2.applyMatrix(shapeMatrix);
            objectRef2.element = copy2;
            f = MatrixKt.getMinScale(shapeMatrix);
        } else {
            f = 1.0f;
        }
        return HitTestUtils.INSTANCE.hitTestLine(((TouchPoint) objectRef.element).getX(), ((TouchPoint) objectRef.element).getY(), ((TouchPoint) objectRef2.element).getX(), ((TouchPoint) objectRef2.element).getY(), x, y, radius + ((getStrokeWidth() * f) / 2));
    }

    /* renamed from: x */
    public final boolean m33960x(int type) {
        return (type == 1 || type == 7) ? false : true;
    }

    /* renamed from: z */
    public final Shape m33961z(List<? extends Shape> shapeList) {
        Object first;
        Object last;
        TouchPoint last2;
        TouchPoint first2;
        TouchPoint last3;
        if (CollectionKt.getSize(shapeList) <= 1) {
            return null;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) shapeList);
        Shape shape = (Shape) first;
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) shapeList);
        Shape shape2 = (Shape) last;
        TouchPoint first3 = shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().first();
        if (first3 == null || (last2 = shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().last()) == null || (first2 = shape2.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().first()) == null || (last3 = shape2.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().last()) == null) {
            return null;
        }
        if (first3.equalXY(last3)) {
            shape2.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().addAll(shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String());
            return shape2;
        }
        if (!last2.equalXY(first2)) {
            return null;
        }
        shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().addAll(shape2.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String());
        return shape;
    }
}
