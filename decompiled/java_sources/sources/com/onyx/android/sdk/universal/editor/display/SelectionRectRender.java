package com.onyx.android.sdk.universal.editor.display;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.DrawableKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.PointFKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionArgs;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.note.common.handler.StandardGuideLineRender;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.theme.UniversalThemeUtils;
import com.onyx.android.sdk.universal.util.SelectionRenderUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.sunia.commonv2.global.HWREngineConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B-\u0012\u0006\u00106\u001a\u000202\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010;\u001a\u00020\u0004\u0012\f\u0010=\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b^\u0010_J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J(\u0010\r\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J \u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J(\u0010!\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0010\u0010%\u001a\u00020$2\u0006\u0010#\u001a\u00020\"H\u0002J\u0010\u0010'\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\"H\u0002J\u0010\u0010(\u001a\u00020$2\u0006\u0010#\u001a\u00020\"H\u0002J\b\u0010)\u001a\u00020$H\u0002J\b\u0010*\u001a\u00020\"H\u0002J\u0010\u0010+\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010,\u001a\u00020$H\u0002J\"\u00100\u001a\u0004\u0018\u00010\u001f2\u0006\u0010-\u001a\u00020\"2\u0006\u0010.\u001a\u00020\"2\u0006\u0010/\u001a\u00020\"H\u0002J\u0016\u00101\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004R\u0017\u00106\u001a\u0002028\u0006¢\u0006\f\n\u0004\b'\u00103\u001a\u0004\b4\u00105R\u0014\u0010\u001d\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u00107R\u0017\u0010;\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b0\u00108\u001a\u0004\b9\u0010:R\u001a\u0010=\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010<R\u0018\u0010?\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010>R\u0018\u0010@\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010>R\u0018\u0010A\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010>R\u0016\u0010D\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010>R\"\u0010J\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\"\u0010K\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010E\u001a\u0004\bK\u0010G\"\u0004\bL\u0010IR\u0014\u0010M\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010ER\u0014\u0010P\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010OR\u0014\u0010S\u001a\u00020Q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010RR\"\u0010Z\u001a\u00020T8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR\u0014\u0010]\u001a\u00020[8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010\\¨\u0006`"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;", "", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "noteInfo", "", "l", "", "m", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "renderShapes", C6998g.f39679a, C4921e.f26537n, GoogleApiAvailabilityLight.f29016b, "", "x", "y", "Landroid/graphics/Matrix;", "matrix", "Landroid/graphics/PointF;", "t", C4921e.f26528e, "d", "j", "i", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "pointF", "Landroid/graphics/Bitmap;", "bitmap", "e", "", "color", "Landroid/graphics/Paint;", "p", HWREngineConstant.Constant.RES_ID, "a", "u", "r", "s", "b", "q", "drawableId", "width", "height", "c", "renderNote", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Ljava/util/List;", "shapeList", "Landroid/graphics/Paint;", "strokePaint", "fillPaint", "excerptFillPaint", C6999h.f39688c, "excerptStrokePaint", "bitmapPaint", Constants.HASIDCALL_INDEX_SIG, "getRenderingShapes", Constants.BOOLEAN_VALUE_SIG, "setRenderingShapes", "(Z)V", "renderingShapes", "isShowHandle", "setShowHandle", "isExcerptSelectionRect", "Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;", "Lcom/onyx/android/sdk/note/common/data/selection/SelectionArgs;", "selectionArgs", "Landroid/graphics/Path;", "Landroid/graphics/Path;", "tempPath", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "getTransformAction", "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "setTransformAction", "(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V", "transformAction", "Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;", "Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;", "guideLineRender", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectionRectRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionRectRender.kt\ncom/onyx/android/sdk/universal/editor/display/SelectionRectRender\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,405:1\n344#2,3:406\n1855#3,2:409\n13309#4,2:411\n*S KotlinDebug\n*F\n+ 1 SelectionRectRender.kt\ncom/onyx/android/sdk/universal/editor/display/SelectionRectRender\n*L\n149#1:406,3\n152#1:409,2\n231#1:411,2\n*E\n"})
/* loaded from: classes8.dex */
public final class SelectionRectRender {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapeList;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Paint strokePaint;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Paint fillPaint;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Paint excerptFillPaint;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Paint excerptStrokePaint;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public Paint bitmapPaint;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean renderingShapes;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean isShowHandle;

    /* renamed from: l, reason: from kotlin metadata */
    public final boolean isExcerptSelectionRect;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final SelectionArgs selectionArgs;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Path tempPath;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public ShapeTransformAction transformAction;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final StandardGuideLineRender guideLineRender;

    /* JADX WARN: Multi-variable type inference failed */
    public SelectionRectRender(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo, @NotNull List<? extends Shape> shapeList) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.editorBundle = editorBundle;
        this.renderContext = renderContext;
        this.virtualBoxInfo = virtualBoxInfo;
        this.shapeList = shapeList;
        Paint createBitmapPaint = BitmapUtils.INSTANCE.createBitmapPaint();
        createBitmapPaint.setStyle(Paint.Style.FILL);
        this.bitmapPaint = createBitmapPaint;
        this.isShowHandle = true;
        this.isExcerptSelectionRect = ShapeUtils.INSTANCE.hasExcerptShape(shapeList);
        this.selectionArgs = renderContext.getSelectionArgs();
        this.tempPath = new Path();
        this.transformAction = ShapeTransformAction.Undefined;
        this.guideLineRender = new StandardGuideLineRender();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    public static /* synthetic */ boolean m40792h(SelectionRectRender selectionRectRender, Canvas canvas, BoxInfo boxInfo, List list, int i, Object obj) {
        if ((i & 4) != 0) {
            list = selectionRectRender.shapeList;
        }
        return selectionRectRender.m40799g(canvas, boxInfo, list);
    }

    /* renamed from: a */
    public final Bitmap m40793a(int resId) {
        int selection_rect_handler_size = (int) SelectionRect.INSTANCE.getSELECTION_RECT_HANDLER_SIZE();
        Bitmap m40795c = m40795c(resId, selection_rect_handler_size, selection_rect_handler_size);
        Intrinsics.checkNotNull(m40795c);
        return m40795c;
    }

    /* renamed from: b */
    public final Matrix m40794b(BoxInfo noteInfo) {
        return BoxInfoUtils.INSTANCE.renderMatrix(noteInfo);
    }

    /* renamed from: c */
    public final Bitmap m40795c(int drawableId, int width, int height) {
        Drawable drawable = UniversalThemeUtils.INSTANCE.getDrawable(drawableId);
        return drawable != null ? DrawableKt.toBitmap(drawable, width, height) : BitmapUtils.INSTANCE.decodeVectorBitmap(drawableId, width, height);
    }

    /* renamed from: d */
    public final void m40796d(Canvas canvas) {
        if (this.transformAction != ShapeTransformAction.Rotation) {
            return;
        }
        StandardGuideLineRender.drawGuideLines$default(this.guideLineRender, canvas, SelectionRenderUtils.INSTANCE.getSelectionGuideLines(this.renderContext, this.virtualBoxInfo, AnyKt.hashCodeHexString(this)), 0.0f, 4, null);
    }

    /* renamed from: e */
    public final void m40797e(Canvas canvas, RenderContext renderContext, PointF pointF, Bitmap bitmap) {
        int selection_rect_handler_size = (int) SelectionRect.INSTANCE.getSELECTION_RECT_HANDLER_SIZE();
        RectF rectF = new RectF();
        RectUtils.INSTANCE.translate(rectF, pointF.x, pointF.y);
        RectKt.expand(rectF, selection_rect_handler_size / 2.0f);
        Paint m40809r = m40809r();
        int color = m40809r.getColor();
        m40809r.setColor(0);
        canvas.drawRect(rectF, m40809r);
        canvas.drawBitmap(bitmap, rectF.left, rectF.top, m40812u(renderContext.getLinePaintColor()));
        m40809r.setColor(color);
    }

    /* renamed from: f */
    public final void m40798f(Canvas canvas, BoxInfo noteInfo) {
        SelectionRect selectionRect;
        if (!this.isExcerptSelectionRect && this.isShowHandle && (selectionRect = this.renderContext.getSelectionRect()) != null && selectionRect.isQuickCopyEnable()) {
            m40797e(canvas, this.renderContext, selectionRect.getCurrentRenderQuickCopyPoint(m40794b(noteInfo)), m40793a(C8045R.drawable.ic_selection_quick_copy));
        }
    }

    /* renamed from: g */
    public final boolean m40799g(Canvas canvas, BoxInfo noteInfo, List<? extends Shape> renderShapes) {
        List<? extends Shape> list = renderShapes;
        if (CollectionKt.isNullOrEmpty(list)) {
            return true;
        }
        RectF boundingRect = ShapeRectUtils.INSTANCE.getBoundingRect(this.shapeList);
        this.renderContext.getMatrix().mapRect(boundingRect);
        RectF rectF = new RectF(this.virtualBoxInfo.getVisibleRect());
        rectF.union(boundingRect);
        RenderContext renderContext = new RenderContext(new Paint(), m40794b(noteInfo));
        renderContext.updateCanvas(canvas);
        renderContext.setShapeShaderManager(this.editorBundle.getWorkBundle().getNoteBundle().getShapeShaderManager());
        Rect rect = new Rect();
        rectF.roundOut(rect);
        renderContext.updateRect(rect);
        renderContext.setClipRect(rectF);
        for (Shape shape : ShapeTypes.INSTANCE.filterNormalShapes(list)) {
            shape.clearRender();
            shape.render(renderContext);
        }
        return true;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    public final boolean getRenderingShapes() {
        return this.renderingShapes;
    }

    @NotNull
    public final ShapeTransformAction getTransformAction() {
        return this.transformAction;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        return this.virtualBoxInfo;
    }

    /* renamed from: i */
    public final void m40800i(Canvas canvas, BoxInfo noteInfo) {
        SelectionRect selectionRect;
        if (this.isExcerptSelectionRect || !this.isShowHandle || (selectionRect = this.renderContext.getSelectionRect()) == null) {
            return;
        }
        m40797e(canvas, this.renderContext, selectionRect.getCurrentRenderRotationPoint(m40794b(noteInfo)), m40793a(C8045R.drawable.ic_selection_rotation));
    }

    /* renamed from: isShowHandle, reason: from getter */
    public final boolean getIsShowHandle() {
        return this.isShowHandle;
    }

    /* renamed from: j */
    public final void m40801j(Canvas canvas, BoxInfo noteInfo) {
        SelectionRect selectionRect = this.renderContext.getSelectionRect();
        if (selectionRect == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        RectF copy = RectFKt.copy(selectionRect.getOriginRect());
        Matrix m40794b = m40794b(noteInfo);
        arrayList.add(selectionRect.getRenderMatrixPoint(copy.left, copy.top));
        arrayList.add(selectionRect.getRenderMatrixPoint(copy.right, copy.top));
        arrayList.add(selectionRect.getRenderMatrixPoint(copy.left, copy.bottom));
        arrayList.add(selectionRect.getRenderMatrixPoint(copy.right, copy.bottom));
        float angle = ShapeMatrixUtils.INSTANCE.getTransformRect(copy, selectionRect.getMatrix()).getAngle();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            PointF pointF = (PointF) it2.next();
            Intrinsics.checkNotNull(pointF);
            MatrixKt.mapSelfPoint(m40794b, pointF);
            float f = pointF.x;
            float f2 = pointF.y;
            RectF rectF = new RectF(f - 10.0f, f2 - 10.0f, f + 10.0f, f2 + 10.0f);
            canvas.save();
            canvas.rotate(angle, rectF.centerX(), rectF.centerY());
            float f3 = 2;
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / f3, m40809r());
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / f3, m40812u(m40810s()));
            canvas.restore();
        }
    }

    /* renamed from: k */
    public final void m40802k(Canvas canvas, BoxInfo noteInfo) {
        SelectionRect selectionRect = this.renderContext.getSelectionRect();
        if (selectionRect == null) {
            return;
        }
        RectF copy = RectFKt.copy(selectionRect.getOriginRect());
        Path path = this.tempPath;
        path.reset();
        path.addRect(copy, Path.Direction.CW);
        path.transform(selectionRect.getMatrix());
        path.transform(this.renderContext.getMatrix());
        path.transform(m40794b(noteInfo));
        canvas.drawPath(path, m40807p(m40810s()));
        if (this.isExcerptSelectionRect) {
            canvas.drawPath(path, m40808q());
        }
    }

    /* renamed from: l */
    public final void m40803l(Canvas canvas, BoxInfo noteInfo) {
        if (CollectionKt.isNullOrEmpty(this.shapeList) || this.isExcerptSelectionRect) {
            return;
        }
        if (this.renderingShapes || !m40804m(canvas, noteInfo)) {
            m40792h(this, canvas, noteInfo, null, 4, null);
        }
    }

    /* renamed from: m */
    public final boolean m40804m(Canvas canvas, BoxInfo noteInfo) {
        SelectionRect selectionRect;
        Bitmap selectionBitmap = this.selectionArgs.getSelectionBitmap();
        if (!BitmapKt.isValid(selectionBitmap) || (selectionRect = this.selectionArgs.getSelectionRect()) == null) {
            return false;
        }
        RectF copy = RectFKt.copy(selectionRect.getOriginRect());
        RectFKt.scaleRect(copy, noteInfo.getActualScale());
        float scaleToWidth = RectFKt.scaleToWidth(BitmapKt.getRectF(selectionBitmap), RectFKt.createRectWithIntSize(copy));
        Matrix scaleTranslate = MatrixKt.scaleTranslate(MatrixKt.copy(selectionRect.getMatrix()), noteInfo.getActualScale(), noteInfo.getActualScale());
        Matrix matrix = new Matrix();
        matrix.preScale(scaleToWidth, scaleToWidth);
        matrix.postTranslate(selectionRect.getOriginRect().left * noteInfo.getActualScale(), selectionRect.getOriginRect().top * noteInfo.getActualScale());
        matrix.postConcat(scaleTranslate);
        matrix.postTranslate(noteInfo.getVisibleRect().left, noteInfo.getVisibleRect().top);
        canvas.drawBitmap(selectionBitmap, matrix, this.bitmapPaint);
        m40799g(canvas, noteInfo, this.renderContext.getSelectionArgs().getSelectionRenderingShapes());
        return true;
    }

    /* renamed from: n */
    public final void m40805n(Canvas canvas, BoxInfo noteInfo) {
        SelectionRect selectionRect = this.renderContext.getSelectionRect();
        if (selectionRect == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        RectF copy = RectFKt.copy(selectionRect.getOriginRect());
        Matrix m40794b = m40794b(noteInfo);
        arrayList.add(selectionRect.getRenderMatrixPoint(copy.centerX(), copy.top));
        arrayList.add(selectionRect.getRenderMatrixPoint(copy.centerX(), copy.bottom));
        arrayList.add(selectionRect.getRenderMatrixPoint(copy.left, copy.centerY()));
        arrayList.add(selectionRect.getRenderMatrixPoint(copy.right, copy.centerY()));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            PointF pointF = (PointF) it2.next();
            Intrinsics.checkNotNull(pointF);
            MatrixKt.mapSelfPoint(m40794b, pointF);
            canvas.drawCircle(pointF.x, pointF.y, 10.0f, m40809r());
            canvas.drawCircle(pointF.x, pointF.y, 10.0f, m40812u(m40810s()));
        }
    }

    /* renamed from: o */
    public final void m40806o(Canvas canvas, BoxInfo noteInfo) {
        SelectionRect selectionRect;
        if (ShapeUtils.INSTANCE.hasTextShape(this.shapeList) || (selectionRect = this.renderContext.getSelectionRect()) == null) {
            return;
        }
        RectF copy = RectFKt.copy(selectionRect.getOriginRect());
        Matrix selectionMatrix = selectionRect.getSelectionMatrix();
        SelectionRect.Companion companion = SelectionRect.INSTANCE;
        float selection_rect_stretch_rect_height = companion.getSELECTION_RECT_STRETCH_RECT_HEIGHT();
        float selection_rect_stretch_rect_width = companion.getSELECTION_RECT_STRETCH_RECT_WIDTH() / 2.0f;
        Matrix m40794b = m40794b(noteInfo);
        m40794b.preConcat(selectionMatrix);
        Paint m40809r = m40809r();
        RectF rect = PointFKt.toRect(m40811t(copy.left, copy.centerY(), m40794b), selection_rect_stretch_rect_height, selection_rect_stretch_rect_width);
        RectF rect2 = PointFKt.toRect(m40811t(copy.centerX(), copy.top, m40794b), selection_rect_stretch_rect_width, selection_rect_stretch_rect_height);
        RectF rect3 = PointFKt.toRect(m40811t(copy.right, copy.centerY(), m40794b), selection_rect_stretch_rect_height, selection_rect_stretch_rect_width);
        RectF rect4 = PointFKt.toRect(m40811t(copy.centerX(), copy.bottom, m40794b), selection_rect_stretch_rect_width, selection_rect_stretch_rect_height);
        Bitmap m40795c = m40795c(C8045R.drawable.selection_rect_drag_rect, -1, -1);
        if (m40795c != null) {
            float angle = ShapeMatrixUtils.INSTANCE.getTransformRect(copy, selectionRect.getMatrix()).getAngle();
            float width = m40795c.getWidth() / 2.0f;
            int height = m40795c.getHeight() / 2;
            float selection_rect_stroke_width = companion.getSELECTION_RECT_STROKE_WIDTH();
            RectF[] rectFArr = {rect2, rect3, rect4, rect};
            for (int i = 0; i < 4; i++) {
                RectF rectF = rectFArr[i];
                float centerX = rectF.centerX() - width;
                RectF rectF2 = new RectF(centerX, rectF.centerY() - width, rectF.centerX() + width, rectF.centerY() + width);
                canvas.save();
                canvas.rotate(angle, rectF2.centerX(), rectF2.centerY());
                angle += 90;
                canvas.drawBitmap(m40795c, centerX, (rectF.centerY() - height) - selection_rect_stroke_width, m40809r);
                canvas.restore();
            }
        }
    }

    /* renamed from: p */
    public final Paint m40807p(int color) {
        Paint paint = new Paint(m40812u(color));
        paint.setPathEffect(new DashPathEffect(new float[]{10.0f, 10.0f}, 0.0f));
        return paint;
    }

    /* renamed from: q */
    public final Paint m40808q() {
        Paint paint = this.excerptFillPaint;
        if (paint != null) {
            return paint;
        }
        Paint paint2 = new Paint();
        paint2.set(MMKVNote.INSTANCE.getExcerptShapeAttrOption().get().createFillPaint(EditorBundleKt.isCurDarkTheme(this.editorBundle, this.virtualBoxInfo.getId())));
        this.excerptFillPaint = paint2;
        return paint2;
    }

    /* renamed from: r */
    public final Paint m40809r() {
        if (this.fillPaint == null) {
            Paint paint = new Paint();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(-1);
            this.fillPaint = paint;
        }
        Paint paint2 = this.fillPaint;
        Intrinsics.checkNotNull(paint2);
        return paint2;
    }

    public final void renderNote(@NotNull Canvas canvas, @NotNull BoxInfo noteInfo) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(noteInfo, "noteInfo");
        m40803l(canvas, noteInfo);
        m40802k(canvas, noteInfo);
        if (this.isExcerptSelectionRect) {
            m40805n(canvas, noteInfo);
        } else {
            m40806o(canvas, noteInfo);
        }
        m40796d(canvas);
        m40801j(canvas, noteInfo);
        m40800i(canvas, noteInfo);
        m40798f(canvas, noteInfo);
    }

    /* renamed from: s */
    public final int m40810s() {
        if (!this.isExcerptSelectionRect) {
            return UniversalThemeUtils.INSTANCE.getThemePrimaryColor();
        }
        Paint paint = this.excerptStrokePaint;
        if (paint != null) {
            return paint.getColor();
        }
        Paint createStrokePaint = MMKVNote.INSTANCE.getExcerptShapeAttrOption().get().createStrokePaint();
        this.excerptStrokePaint = createStrokePaint;
        return createStrokePaint.getColor();
    }

    public final void setRenderingShapes(boolean z) {
        this.renderingShapes = z;
    }

    public final void setShowHandle(boolean z) {
        this.isShowHandle = z;
    }

    public final void setTransformAction(@NotNull ShapeTransformAction shapeTransformAction) {
        Intrinsics.checkNotNullParameter(shapeTransformAction, "<set-?>");
        this.transformAction = shapeTransformAction;
    }

    /* renamed from: t */
    public final PointF m40811t(float x, float y, Matrix matrix) {
        PointF pointF = new PointF(x, y);
        MatrixKt.mapSelfPoint(matrix, pointF);
        return pointF;
    }

    /* renamed from: u */
    public final Paint m40812u(int color) {
        Paint paint = this.strokePaint;
        if (paint == null) {
            Paint paint2 = new Paint();
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(SelectionRect.INSTANCE.getSELECTION_RECT_STROKE_WIDTH());
            paint2.setColor(color);
            this.strokePaint = paint2;
        } else if (paint != null) {
            paint.setColor(color);
        }
        Paint paint3 = this.strokePaint;
        Intrinsics.checkNotNull(paint3);
        return paint3;
    }
}
