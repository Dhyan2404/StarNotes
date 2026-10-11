package com.onyx.galaxy.note.editor.view.toolbar;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.data.PreviewTouchDataBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.toolbar.PenShapeView;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 j2\u00020\u0001:\u0001jB\u0013\b\u0016\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\be\u0010fB\u001d\b\u0016\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\b\u0010!\u001a\u0004\u0018\u00010 ¢\u0006\u0004\be\u0010gB%\b\u0016\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\b\u0010!\u001a\u0004\u0018\u00010 \u0012\u0006\u0010h\u001a\u00020\u0006¢\u0006\u0004\be\u0010iJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0014J\u0016\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nJ\u0016\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0002J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012J(\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0006H\u0014J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0014J\b\u0010\u001d\u001a\u00020\u0004H\u0014J\u001c\u0010\"\u001a\u00020\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\u0010!\u001a\u0004\u0018\u00010 H\u0002J\b\u0010#\u001a\u00020\u0004H\u0002J\u0018\u0010'\u001a\u00020\u00042\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$H\u0002J\b\u0010(\u001a\u00020\u0004H\u0002J\b\u0010)\u001a\u00020\u0004H\u0002J\b\u0010*\u001a\u00020\u0004H\u0002J\u0010\u0010+\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010-\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010.\u001a\u00020$2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u00100\u001a\u00020\u0004H\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u00102\u001a\u000201H\u0002J\u0010\u00103\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0002R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u00104R\u0016\u00107\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u00106R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u00106R\u0016\u00109\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u00106R&\u0010=\u001a\u0012\u0012\u0004\u0012\u0002010:j\b\u0012\u0004\u0012\u000201`;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010<R\u0017\u0010B\u001a\u00020>8\u0006¢\u0006\f\n\u0004\b)\u0010?\u001a\u0004\b@\u0010AR\u0016\u0010F\u001a\u00020C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0016\u0010I\u001a\u00020G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010HR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010JR\u0018\u0010M\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010LR\u0014\u0010P\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010OR\u0014\u0010S\u001a\u00020Q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010RR\u0016\u0010V\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0016\u0010Y\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0016\u0010[\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010XR\u0016\u0010^\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0014\u0010b\u001a\u00020_8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b`\u0010aR\u0016\u0010d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010X¨\u0006k"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;", "Landroid/view/View;", "Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;", "previewData", "", "setPointsData", "", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "", "isSelected", "isFromClick", "setViewSelect", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "shapeToolType", "previewTouchData", "initShapeData", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "onPenArgsChanged", "w", C6999h.f39688c, "oldw", "oldh", "onSizeChanged", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "onDetachedFromWindow", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "e", C6997f.f39671c, "", "width", "height", "l", "p", "j", "b", C6998g.f39679a, "i", GoogleApiAvailabilityLight.f29016b, "c", "m", C4921e.f26528e, "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "d", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "animPaint", "renderPaint", "bgPaint", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "Ljava/util/ArrayList;", "touchDataList", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "getPenProperty", "()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "penProperty", "Landroid/animation/ValueAnimator;", C4921e.f26537n, "Landroid/animation/ValueAnimator;", "alphaAnimator", "Landroid/graphics/Matrix;", "Landroid/graphics/Matrix;", "scaleMatrix", "Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "drawArgs", "q", Constants.HASIDCALL_INDEX_SIG, "isViewSelected", "r", "I", "previewBgColorResId", "s", "parentBgColorResId", "t", "F", "bgRadius", "Landroid/graphics/Path;", "u", "Landroid/graphics/Path;", "bgRoundRectPath", "v", "mirrorOffsetResId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPenShapeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PenShapeView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/PenShapeView\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,302:1\n30#2:303\n91#2,14:304\n52#2:318\n91#2,14:319\n1864#3,3:333\n*S KotlinDebug\n*F\n+ 1 PenShapeView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/PenShapeView\n*L\n151#1:303\n151#1:304,14\n156#1:318\n156#1:319,14\n232#1:333,3\n*E\n"})
/* loaded from: classes9.dex */
public final class PenShapeView extends View {
    public static final float ANIM_ALPHA_END_VALUE = 1.0f;
    public static final float ANIM_ALPHA_START_VALUE = 0.0f;
    public static final long ANIM_DURATION = 300;
    public static final float PEN_WIDTH_RATIO_INCREMENT = 2.0f;
    public static final float SHAPE_MARKER_DISPLAY_WITH = 12.0f;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public ShapeToolType shapeToolType;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Paint animPaint;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public Paint renderPaint;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Paint bgPaint;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public ArrayList<TouchData> touchDataList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final PenPropertyBean penProperty;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public ValueAnimator alphaAnimator;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public Matrix scaleMatrix;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public PreviewTouchDataBean previewTouchData;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public Shape shape;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final NoteDrawingArgs drawArgs;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean isViewSelected;

    /* renamed from: r, reason: from kotlin metadata */
    public int previewBgColorResId;

    /* renamed from: s, reason: from kotlin metadata */
    public int parentBgColorResId;

    /* renamed from: t, reason: from kotlin metadata */
    public float bgRadius;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Path bgRoundRectPath;

    /* renamed from: v, reason: from kotlin metadata */
    public int mirrorOffsetResId;

    public PenShapeView(@Nullable Context context) {
        this(context, null);
    }

    /* renamed from: k */
    public static final void m50089k(PenShapeView this$0, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        if (floatValue == 1.0f) {
            return;
        }
        if (this$0.isViewSelected) {
            this$0.animPaint.setAlpha((int) (floatValue * ResManager.INSTANCE.getFloat(C8037R.dimen.alpha_255)));
        }
        this$0.invalidate();
    }

    private final void setPointsData(PreviewTouchDataBean previewData) {
        m50095g(previewData);
        this.touchDataList.clear();
        this.touchDataList.addAll(previewData.getPointList());
    }

    /* renamed from: b */
    public final void m50090b() {
        this.alphaAnimator.cancel();
    }

    /* renamed from: c */
    public final float m50091c(PenArgs penArgs) {
        if (penArgs.getType() == 15) {
            return 12.0f;
        }
        return penArgs.getWidth();
    }

    /* renamed from: d */
    public final void m50092d(Canvas canvas) {
        PenArgs penArgs = this.drawArgs.getPenArgs();
        if (penArgs != null) {
            if (ColorKt.isLowContrastRatio$default(penArgs.getColor(), ThemeUtils.getColorById(this.parentBgColorResId), 0.0f, 2, null)) {
                this.bgPaint.setColor(ThemeUtils.getColorById(this.previewBgColorResId));
                canvas.drawPath(this.bgRoundRectPath, this.bgPaint);
            }
        }
    }

    /* renamed from: e */
    public final void m50093e(Context context, AttributeSet attrs) {
        if (context != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C10651R.styleable.ShapeIconView);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
            this.previewBgColorResId = obtainStyledAttributes.getResourceId(C10651R.styleable.PenShapeView_previewBg, C7996R.color.theme_divider_color_04);
            this.parentBgColorResId = obtainStyledAttributes.getResourceId(C10651R.styleable.PenShapeView_parentBg, C7996R.color.theme_background_popup_color_01);
            this.bgRadius = obtainStyledAttributes.getDimension(C10651R.styleable.PenShapeView_cornerRadius, ResManager.INSTANCE.getDimension(C7384R.dimen.dp_8));
            m50094f();
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: f */
    public final void m50094f() {
        Paint paint = this.animPaint;
        paint.setAntiAlias(true);
        paint.setDither(true);
        Paint paint2 = this.renderPaint;
        paint2.setAntiAlias(true);
        paint2.setDither(true);
        Paint paint3 = this.bgPaint;
        paint3.setAntiAlias(true);
        paint3.setDither(true);
        paint3.setStyle(Paint.Style.FILL_AND_STROKE);
        paint3.setColor(ThemeUtils.getColorById(this.previewBgColorResId));
        setLayerType(2, this.animPaint);
    }

    /* renamed from: g */
    public final void m50095g(PreviewTouchDataBean previewData) {
        this.renderContext.createBitmap(new Rect(0, 0, (int) previewData.getPreviewWidth(), (int) previewData.getPreviewHeight()));
        this.renderContext.updateCanvas();
        this.renderContext.setPaint(this.renderPaint);
    }

    @NotNull
    public final PenPropertyBean getPenProperty() {
        return this.penProperty;
    }

    /* renamed from: h */
    public final void m50096h(TouchData touchData) {
        int action = touchData.getAction();
        if (action == 0) {
            Shape shape = this.shape;
            Intrinsics.checkNotNull(shape);
            shape.getPoints().clear();
            Shape shape2 = this.shape;
            Intrinsics.checkNotNull(shape2);
            shape2.onDown(touchData.getTouchPoint().copy(), touchData.getTouchPoint());
            return;
        }
        if (action == 1) {
            Shape shape3 = this.shape;
            Intrinsics.checkNotNull(shape3);
            shape3.onUp(touchData.getTouchPoint().copy(), touchData.getTouchPoint());
        } else {
            if (action != 2) {
                return;
            }
            Shape shape4 = this.shape;
            Intrinsics.checkNotNull(shape4);
            shape4.onMove(touchData.getTouchPoint().copy(), touchData.getTouchPoint());
        }
    }

    /* renamed from: i */
    public final void m50097i(PenArgs penArgs) {
        m50100m(penArgs);
        m50101n(penArgs);
    }

    public final void initShapeData(@NotNull ShapeToolType shapeToolType, @NotNull PreviewTouchDataBean previewTouchData) {
        Intrinsics.checkNotNullParameter(shapeToolType, "shapeToolType");
        Intrinsics.checkNotNullParameter(previewTouchData, "previewTouchData");
        this.shapeToolType = shapeToolType;
        this.previewTouchData = previewTouchData;
        PenArgs m72358clone = this.penProperty.getPenArgsOption(shapeToolType.getShapeType()).get().m72358clone();
        setPointsData(previewTouchData);
        onPenArgsChanged(m72358clone);
    }

    /* renamed from: j */
    public final void m50098j() {
        m50090b();
        this.alphaAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.b2l
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PenShapeView.m50089k(PenShapeView.this, valueAnimator);
            }
        });
        this.alphaAnimator.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.PenShapeView$showShapeAnim$$inlined$doOnEnd$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                Paint paint;
                paint = PenShapeView.this.animPaint;
                paint.setAlpha((int) ResManager.INSTANCE.getFloat(C8037R.dimen.alpha_255));
                PenShapeView.this.invalidate();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        this.alphaAnimator.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.PenShapeView$showShapeAnim$$inlined$doOnCancel$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
                Paint paint;
                paint = PenShapeView.this.animPaint;
                paint.setAlpha((int) ResManager.INSTANCE.getFloat(C8037R.dimen.alpha_255));
                PenShapeView.this.invalidate();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        this.alphaAnimator.start();
        invalidate();
    }

    /* renamed from: l */
    public final void m50099l(float width, float height) {
        RectF rectF = new RectF(0.0f, 0.0f, width, height);
        Path path = this.bgRoundRectPath;
        float f = this.bgRadius;
        path.addRoundRect(rectF, f, f, Path.Direction.CCW);
    }

    /* renamed from: m */
    public final void m50100m(PenArgs penArgs) {
        this.drawArgs.setCurrentShapeType(penArgs.getType());
        this.drawArgs.setPenArgs(penArgs);
        this.drawArgs.setStrokeColor(penArgs.getColor());
        this.drawArgs.setStrokeWidth(m50091c(penArgs));
    }

    /* renamed from: n */
    public final void m50101n(PenArgs penArgs) {
        Shape shape = this.shape;
        if (shape == null) {
            this.shape = ShapeUtils.INSTANCE.createFreeShape(this.drawArgs, this.renderContext);
        } else {
            ShapeUtils shapeUtils = ShapeUtils.INSTANCE;
            Intrinsics.checkNotNull(shape);
            shapeUtils.setShapeArgs(shape, this.renderContext, this.drawArgs);
        }
        Shape shape2 = this.shape;
        if (shape2 != null) {
            shape2.setStrokeColor(penArgs.getColor());
        }
        Shape shape3 = this.shape;
        if (shape3 != null) {
            shape3.setFillColor(penArgs.getColor());
        }
        Shape shape4 = this.shape;
        if (shape4 != null) {
            shape4.setStrokeWidth(m50091c(penArgs));
        }
        if (this.shapeToolType == ShapeToolType.MARKER_PEN) {
            Shape shape5 = this.shape;
            Intrinsics.checkNotNull(shape5);
            ShapePersistOptionsKt.setRoundCorner(shape5, penArgs.getRoundCorner());
            Shape shape6 = this.shape;
            Intrinsics.checkNotNull(shape6);
            ShapePersistOptionsKt.setUnderContent(shape6, false);
            Shape shape7 = this.shape;
            Intrinsics.checkNotNull(shape7);
            ShapePersistOptionsKt.setBottom(shape7, false);
        }
    }

    /* renamed from: o */
    public final void m50102o() {
        this.renderContext.eraseBitmap();
        int i = 0;
        for (Object obj : this.touchDataList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            m50096h((TouchData) obj);
            i = i2;
        }
        Shape shape = this.shape;
        if (shape != null) {
            shape.clearRender();
        }
        Shape shape2 = this.shape;
        if (shape2 != null) {
            shape2.render(this.renderContext);
        }
        invalidate();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m50090b();
        Shape shape = this.shape;
        if (shape != null) {
            shape.clearRender();
        }
        Shape shape2 = this.shape;
        if (shape2 != null) {
            shape2.clearLowLatencyData();
        }
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Bitmap bitmap;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        if (!this.isViewSelected || (bitmap = this.renderContext.getBitmap()) == null) {
            return;
        }
        canvas.setMatrix(this.scaleMatrix);
        m50092d(canvas);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.animPaint);
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public final void onPenArgsChanged(@NotNull PenArgs penArgs) {
        Intrinsics.checkNotNullParameter(penArgs, "penArgs");
        ShapeToolType shapeToolType = this.shapeToolType;
        boolean z = false;
        if (shapeToolType != null && penArgs.getType() == shapeToolType.getShapeType()) {
            z = true;
        }
        if (z) {
            m50097i(penArgs);
            m50102o();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        PreviewTouchDataBean previewTouchDataBean;
        super.onSizeChanged(w, h, oldw, oldh);
        if (w > 0 && (previewTouchDataBean = this.previewTouchData) != null) {
            Intrinsics.checkNotNull(previewTouchDataBean);
            float previewWidth = w / previewTouchDataBean.getPreviewWidth();
            PreviewTouchDataBean previewTouchDataBean2 = this.previewTouchData;
            Intrinsics.checkNotNull(previewTouchDataBean2);
            float previewWidth2 = previewTouchDataBean2.getPreviewWidth();
            PreviewTouchDataBean previewTouchDataBean3 = this.previewTouchData;
            Intrinsics.checkNotNull(previewTouchDataBean3);
            m50099l(previewWidth2, previewTouchDataBean3.getPreviewHeight());
            this.bgRoundRectPath.transform(this.scaleMatrix);
            this.scaleMatrix.setScale(previewWidth, previewWidth);
            if (ViewExtKt.isLayoutDirectionRtl(this)) {
                this.scaleMatrix.setScale(-1.0f, 1.0f);
                this.scaleMatrix.postTranslate(getWidth() + ResManager.INSTANCE.getDimension(this.mirrorOffsetResId), 0.0f);
            }
        }
        if ((w == oldw && h == oldh) || oldh == 0 || oldw == 0) {
            return;
        }
        m50102o();
    }

    /* renamed from: p */
    public final void m50103p() {
        this.animPaint.setAlpha((int) ResManager.INSTANCE.getFloat(C8037R.dimen.alpha_255));
        invalidate();
    }

    public final void setViewSelect(boolean isSelected, boolean isFromClick) {
        if (this.isViewSelected == isSelected && isFromClick) {
            return;
        }
        this.isViewSelected = isSelected;
        if (isFromClick) {
            m50098j();
        } else {
            m50103p();
        }
        m50103p();
    }

    public PenShapeView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public PenShapeView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.animPaint = new Paint();
        this.renderPaint = new Paint();
        this.bgPaint = new Paint();
        this.touchDataList = new ArrayList<>();
        this.penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(300L);
        ofFloat.setRepeatCount(0);
        Intrinsics.checkNotNullExpressionValue(ofFloat, "apply(...)");
        this.alphaAnimator = ofFloat;
        this.scaleMatrix = new Matrix();
        this.renderContext = new RenderContext();
        this.drawArgs = new NoteDrawingArgs(0.0f, 0, 0, 0, 0.0f, 0, null, null, 255, null);
        this.previewBgColorResId = C7996R.color.theme_divider_color_04;
        this.parentBgColorResId = C7996R.color.theme_background_popup_color_01;
        this.bgRadius = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_8);
        this.bgRoundRectPath = new Path();
        this.mirrorOffsetResId = C7384R.dimen.dp_4;
        m50093e(context, attributeSet);
        m50094f();
    }
}
