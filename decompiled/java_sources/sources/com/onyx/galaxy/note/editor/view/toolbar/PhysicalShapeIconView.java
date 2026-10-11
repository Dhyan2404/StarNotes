package com.onyx.galaxy.note.editor.view.toolbar;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.graphics.drawable.DrawableKt;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.Tintable;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.PhysicalShapeDrawableBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.IShapeViewOpt;
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\b\u0017\u0018\u0000 ~2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001~B\u0011\b\u0016\u0012\u0006\u0010x\u001a\u00020w¢\u0006\u0004\by\u0010zB\u001d\b\u0016\u0012\u0006\u0010x\u001a\u00020w\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\by\u0010{B%\b\u0016\u0012\u0006\u0010x\u001a\u00020w\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\u0006\u0010|\u001a\u00020\u0006¢\u0006\u0004\by\u0010}J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u001b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u000b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\fH\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002J?\u0010 \u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\b2#\b\u0002\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u001e0\u0019H\u0002J\u0012\u0010#\u001a\u00020\u00042\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010&\u001a\u00020\u00042\u0006\u0010%\u001a\u00020$H\u0016J\u000e\u0010)\u001a\u00020\u00042\u0006\u0010(\u001a\u00020'J\u0012\u0010,\u001a\u00020\u00042\b\b\u0002\u0010+\u001a\u00020*H\u0016J\u0019\u0010.\u001a\u0004\u0018\u00010-2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b.\u0010/J\u0018\u00102\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006H\u0014J\u0010\u00103\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0015J\u0010\u00105\u001a\u00020\u00042\u0006\u00104\u001a\u00020\u0006H\u0016J\u0018\u00108\u001a\u00020\u00042\u0006\u00106\u001a\u00020*2\u0006\u00107\u001a\u00020*H\u0016J\u0010\u0010;\u001a\u00020\u00042\u0006\u0010:\u001a\u000209H\u0016J\b\u0010<\u001a\u00020$H\u0016J\b\u0010=\u001a\u00020*H\u0016J\b\u0010>\u001a\u00020*H\u0016J\u0010\u0010@\u001a\u00020\u00042\u0006\u0010?\u001a\u00020*H\u0016J\b\u0010A\u001a\u00020\u0004H\u0016J\b\u0010B\u001a\u00020\u0004H\u0014R\"\u0010%\u001a\u00020$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR$\u0010N\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR$\u0010Q\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010I\u001a\u0004\bO\u0010K\"\u0004\bP\u0010MR$\u0010W\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR$\u0010Z\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010R\u001a\u0004\bX\u0010T\"\u0004\bY\u0010VR$\u0010]\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010I\u001a\u0004\b[\u0010K\"\u0004\b\\\u0010MR\u0014\u0010`\u001a\u00020^8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010_R\u0016\u0010c\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR\u0016\u0010e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010dR\u0016\u0010g\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010dR\u0016\u0010:\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010hR\u0018\u0010(\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010iR\u0016\u0010m\u001a\u00020j8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u0016\u0010o\u001a\u00020j8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010lR\u0018\u00104\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\u0016\u0010=\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010bR\u0016\u0010t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010dR\u0016\u0010v\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010d¨\u0006\u007f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;", "Landroid/view/View;", "Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;", "Lcom/onyx/android/sdk/theme/widgets/Tintable;", "", "i", "", "drawableId", "Landroid/graphics/drawable/Drawable;", C6998g.f39679a, "(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;", "p", "", "trans", C6999h.f39688c, "c", "m", C4921e.f26537n, "animValue", C4921e.f26528e, "j", "d", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, ResourceManager.f46830c, "Lkotlin/Function1;", "Landroid/graphics/Bitmap;", "Lkotlin/ParameterName;", "name", "bitmap", "Landroid/graphics/RectF;", "rectMapper", "e", "Landroid/util/AttributeSet;", "attrs", "initParams", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "shapeToolType", "setShapeTool", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "onPenArgsChanged", "", "roundedCorner", "setDrawableResource", "Landroid/graphics/drawable/VectorDrawable;", "getVectorDrawable", "(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "onDraw", "color", "setHintColor", "isSelected", "isFromClick", "setViewSelect", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", "setDockType", "getViewShapeType", "isViewSelected", "isVipType", "enable", "enableShapeView", "tint", "onDetachedFromWindow", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "getShapeToolType", "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "setShapeToolType", "(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V", C6997f.f39671c, "Landroid/graphics/drawable/Drawable;", "getStrokeDrawable", "()Landroid/graphics/drawable/Drawable;", "setStrokeDrawable", "(Landroid/graphics/drawable/Drawable;)V", "strokeDrawable", "getHighlightDrawable", "setHighlightDrawable", "highlightDrawable", "Landroid/graphics/drawable/VectorDrawable;", "getFillDrawable", "()Landroid/graphics/drawable/VectorDrawable;", "setFillDrawable", "(Landroid/graphics/drawable/VectorDrawable;)V", "fillDrawable", "getFillUnselectDrawable", "setFillUnselectDrawable", "fillUnselectDrawable", "getUnselectedDrawable", "setUnselectedDrawable", "unselectedDrawable", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "bitmapPaint", "l", Constants.HASIDCALL_INDEX_SIG, "isAlwaysShowFill", "I", "minTransResId", GoogleApiAvailabilityLight.f29016b, "maxTransResId", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "Landroid/animation/ValueAnimator;", "q", "Landroid/animation/ValueAnimator;", "alphaAnimator", "r", "transYAnimator", "s", Constants.INTEGER_SIG, "t", "u", "iconWidth", "v", "iconHeight", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SuppressLint({"UseCompatLoadingForDrawables"})
@SourceDebugExtension({"SMAP\nPhysicalShapeIconView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhysicalShapeIconView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,329:1\n1#2:330\n30#3:331\n91#3,14:332\n52#3:346\n91#3,14:347\n*S KotlinDebug\n*F\n+ 1 PhysicalShapeIconView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView\n*L\n262#1:331\n262#1:332,14\n266#1:346\n266#1:347,14\n*E\n"})
/* loaded from: classes9.dex */
public class PhysicalShapeIconView extends View implements IShapeViewOpt, Tintable {
    public static final float ANIM_ALPHA_END_VALUE = 1.0f;
    public static final float ANIM_ALPHA_START_VALUE = 0.3f;
    public static final long ANIM_DURATION = 200;
    public static final float ANIM_TRANS_Y_END_VALUE = 1.0f;
    public static final float ANIM_TRANS_Y_START_VALUE = 0.0f;
    public static final float ROTATION_LEFT = 270.0f;
    public static final float ROTATION_RIGHT = 90.0f;
    public static final float ROTATION_TOP_BOTTOM = 0.0f;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public ShapeToolType shapeToolType;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Drawable strokeDrawable;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Drawable highlightDrawable;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public VectorDrawable fillDrawable;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public VectorDrawable fillUnselectDrawable;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Drawable unselectedDrawable;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Paint bitmapPaint;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean isAlwaysShowFill;

    /* renamed from: m, reason: from kotlin metadata */
    public int minTransResId;

    /* renamed from: n, reason: from kotlin metadata */
    public int maxTransResId;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public DockType dockType;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public PenArgs penArgs;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public ValueAnimator alphaAnimator;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public ValueAnimator transYAnimator;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public Integer color;

    /* renamed from: t, reason: from kotlin metadata */
    public boolean isViewSelected;

    /* renamed from: u, reason: from kotlin metadata */
    public int iconWidth;

    /* renamed from: v, reason: from kotlin metadata */
    public int iconHeight;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DockType.values().length];
            try {
                iArr[DockType.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DockType.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DockType.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DockType.RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PhysicalShapeIconView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public static /* synthetic */ void m50114f(final PhysicalShapeIconView physicalShapeIconView, Canvas canvas, Drawable drawable, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawDrawable");
        }
        if ((i & 4) != 0) {
            function1 = new Function1<Bitmap, RectF>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView$drawDrawable$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final RectF invoke(@NotNull Bitmap it2) {
                    int i2;
                    int i3;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    i2 = PhysicalShapeIconView.this.iconWidth;
                    i3 = PhysicalShapeIconView.this.iconHeight;
                    return new RectF(0.0f, 0.0f, i2, i3);
                }
            };
        }
        physicalShapeIconView.m50119e(canvas, drawable, function1);
    }

    /* renamed from: l */
    public static final void m50115l(PhysicalShapeIconView this$0, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        if (floatValue == 1.0f) {
            return;
        }
        if (floatValue == 0.3f) {
            return;
        }
        this$0.m50126o(floatValue);
        this$0.invalidate();
    }

    /* renamed from: n */
    public static final void m50116n(PhysicalShapeIconView this$0, float f, float f2, float f3, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        if (floatValue == 1.0f) {
            return;
        }
        if (floatValue == 0.3f) {
            return;
        }
        this$0.m50121h(this$0.isViewSelected ? f - (floatValue * f2) : f3 + (floatValue * f2));
    }

    public static /* synthetic */ void setDrawableResource$default(PhysicalShapeIconView physicalShapeIconView, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setDrawableResource");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        physicalShapeIconView.setDrawableResource(z);
    }

    /* renamed from: c */
    public final void m50117c() {
        m50118d();
        m50124k();
        m50125m();
    }

    /* renamed from: d */
    public final void m50118d() {
        m50123j();
        this.alphaAnimator.cancel();
        this.transYAnimator.cancel();
        this.alphaAnimator.removeAllUpdateListeners();
        this.transYAnimator.removeAllUpdateListeners();
    }

    /* renamed from: e */
    public final void m50119e(Canvas canvas, Drawable drawable, Function1<? super Bitmap, ? extends RectF> rectMapper) {
        Bitmap bitmap;
        if (drawable == null || (bitmap = DrawableKt.toBitmap(drawable, this.iconWidth, this.iconHeight, Bitmap.Config.ARGB_8888)) == null) {
            return;
        }
        canvas.drawBitmap(bitmap, new Rect(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight()), rectMapper.invoke(bitmap), this.bitmapPaint);
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public void enableShapeView(boolean enable) {
    }

    /* renamed from: g */
    public final Drawable m50120g(Integer drawableId) {
        Object orElse = AnyKt.getOrElse((int) drawableId, 0);
        if (!(((Number) orElse).intValue() > 0)) {
            orElse = null;
        }
        Integer num = (Integer) orElse;
        if (num != null) {
            return getResources().getDrawable(num.intValue(), null);
        }
        return null;
    }

    @Nullable
    public final VectorDrawable getFillDrawable() {
        return this.fillDrawable;
    }

    @Nullable
    public final VectorDrawable getFillUnselectDrawable() {
        return this.fillUnselectDrawable;
    }

    @Nullable
    public final Drawable getHighlightDrawable() {
        return this.highlightDrawable;
    }

    @NotNull
    public final ShapeToolType getShapeToolType() {
        return this.shapeToolType;
    }

    @Nullable
    public final Drawable getStrokeDrawable() {
        return this.strokeDrawable;
    }

    @Nullable
    public final Drawable getUnselectedDrawable() {
        return this.unselectedDrawable;
    }

    @Nullable
    public final VectorDrawable getVectorDrawable(@Nullable Integer drawableId) {
        Drawable m50120g = m50120g(drawableId);
        if (m50120g instanceof VectorDrawable) {
            return (VectorDrawable) m50120g;
        }
        return null;
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    @NotNull
    public ShapeToolType getViewShapeType() {
        return this.shapeToolType;
    }

    /* renamed from: h */
    public final void m50121h(float trans) {
        int i = WhenMappings.$EnumSwitchMapping$0[this.dockType.ordinal()];
        if (i == 1 || i == 2) {
            setTranslationY(trans);
        } else if (i == 3) {
            setTranslationX(trans);
        } else {
            if (i != 4) {
                return;
            }
            setTranslationX(-trans);
        }
    }

    /* renamed from: i */
    public final void m50122i() {
        this.bitmapPaint.setAntiAlias(true);
        this.bitmapPaint.setDither(true);
    }

    public void initParams(@Nullable AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.PhysicalShapeIconView);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
            this.isAlwaysShowFill = obtainStyledAttributes.getBoolean(C10651R.styleable.PhysicalShapeIconView_alwaysShowFillColor, false);
            this.minTransResId = obtainStyledAttributes.getResourceId(C10651R.styleable.PhysicalShapeIconView_minTrans, C7384R.dimen.dp_0);
            this.maxTransResId = obtainStyledAttributes.getResourceId(C10651R.styleable.PhysicalShapeIconView_maxTrans, C7384R.dimen.dp_20);
            obtainStyledAttributes.recycle();
        }
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    /* renamed from: isViewSelected, reason: from getter */
    public boolean getIsViewSelected() {
        return this.isViewSelected;
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public boolean isVipType() {
        return this.shapeToolType.getIsVipType();
    }

    /* renamed from: j */
    public final void m50123j() {
        VectorDrawable vectorDrawable = this.fillDrawable;
        if (vectorDrawable != null) {
            vectorDrawable.setAlpha((int) ResManager.INSTANCE.getFloat(C8037R.dimen.alpha_255));
        }
        Drawable drawable = this.unselectedDrawable;
        if (drawable == null) {
            return;
        }
        drawable.setAlpha((int) ResManager.INSTANCE.getFloat(C8037R.dimen.alpha_255));
    }

    /* renamed from: k */
    public final void m50124k() {
        m50126o(0.3f);
        this.alphaAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.w3l
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PhysicalShapeIconView.m50115l(PhysicalShapeIconView.this, valueAnimator);
            }
        });
        this.alphaAnimator.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView$showAlphaAnim$$inlined$doOnEnd$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                PhysicalShapeIconView.this.m50123j();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        this.alphaAnimator.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView$showAlphaAnim$$inlined$doOnCancel$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
                PhysicalShapeIconView.this.m50123j();
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
    }

    /* renamed from: m */
    public final void m50125m() {
        ResManager resManager = ResManager.INSTANCE;
        final float dimension = resManager.getDimension(this.maxTransResId);
        final float dimension2 = resManager.getDimension(this.minTransResId);
        final float f = dimension - dimension2;
        this.transYAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.x3l
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PhysicalShapeIconView.m50116n(PhysicalShapeIconView.this, dimension, f, dimension2, valueAnimator);
            }
        });
        this.transYAnimator.start();
    }

    /* renamed from: o */
    public final void m50126o(float animValue) {
        if (this.isViewSelected) {
            VectorDrawable vectorDrawable = this.fillDrawable;
            if (vectorDrawable != null) {
                vectorDrawable.setAlpha((int) (ResManager.INSTANCE.getFloat(C8037R.dimen.alpha_255) * animValue));
            }
            Drawable drawable = this.unselectedDrawable;
            if (drawable == null) {
                return;
            }
            drawable.setAlpha((int) ((1 - animValue) * ResManager.INSTANCE.getFloat(C8037R.dimen.alpha_255)));
            return;
        }
        VectorDrawable vectorDrawable2 = this.fillDrawable;
        if (vectorDrawable2 != null) {
            vectorDrawable2.setAlpha((int) ((1 - animValue) * ResManager.INSTANCE.getFloat(C8037R.dimen.alpha_255)));
        }
        Drawable drawable2 = this.unselectedDrawable;
        if (drawable2 == null) {
            return;
        }
        drawable2.setAlpha((int) (animValue * ResManager.INSTANCE.getFloat(C8037R.dimen.alpha_255)));
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m50118d();
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 0));
        if (this.isViewSelected) {
            if (this.alphaAnimator.isRunning()) {
                m50114f(this, canvas, this.unselectedDrawable, null, 4, null);
            }
            m50114f(this, canvas, this.fillDrawable, null, 4, null);
        } else {
            m50114f(this, canvas, this.unselectedDrawable, null, 4, null);
            if (this.alphaAnimator.isRunning() || this.isAlwaysShowFill) {
                m50114f(this, canvas, this.fillDrawable, null, 4, null);
            }
            m50114f(this, canvas, this.fillUnselectDrawable, null, 4, null);
        }
        m50114f(this, canvas, this.highlightDrawable, null, 4, null);
        m50114f(this, canvas, this.strokeDrawable, null, 4, null);
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.iconWidth = getMeasuredWidth();
        this.iconHeight = getMeasuredHeight();
    }

    public final void onPenArgsChanged(@NotNull PenArgs penArgs) {
        Intrinsics.checkNotNullParameter(penArgs, "penArgs");
        if (penArgs.getType() == this.shapeToolType.getShapeType()) {
            this.penArgs = penArgs;
            setDrawableResource(penArgs.getRoundCorner());
            setHintColor(penArgs.getColor());
        }
    }

    /* renamed from: p */
    public final void m50127p() {
        ResManager resManager;
        int i;
        if (this.isViewSelected) {
            resManager = ResManager.INSTANCE;
            i = this.minTransResId;
        } else {
            resManager = ResManager.INSTANCE;
            i = this.maxTransResId;
        }
        m50121h(resManager.getDimens(i));
        Drawable drawable = this.unselectedDrawable;
        if (drawable != null) {
            drawable.setAlpha((int) ResManager.INSTANCE.getFloat(C8037R.dimen.alpha_255));
        }
        VectorDrawable vectorDrawable = this.fillDrawable;
        if (vectorDrawable != null) {
            vectorDrawable.setAlpha((int) ResManager.INSTANCE.getFloat(C8037R.dimen.alpha_255));
        }
        invalidate();
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public void setDockType(@NotNull DockType dockType) {
        float f;
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.dockType = dockType;
        int i = WhenMappings.$EnumSwitchMapping$0[dockType.ordinal()];
        if (i == 1 || i == 2) {
            f = 0.0f;
        } else if (i == 3) {
            f = 270.0f;
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            f = 90.0f;
        }
        setRotation(f);
    }

    public void setDrawableResource(boolean roundedCorner) {
        try {
            PhysicalShapeDrawableBean physicsDrawables = this.shapeToolType.getPhysicsDrawables(roundedCorner);
            this.strokeDrawable = ThemeUtils.getThemeDrawable(physicsDrawables.getStrokeRes());
            this.highlightDrawable = ThemeUtils.getThemeDrawableById(getContext(), physicsDrawables.getHighlightRes());
            this.fillDrawable = getVectorDrawable(Integer.valueOf(physicsDrawables.getFillRes()));
            this.fillUnselectDrawable = getVectorDrawable(Integer.valueOf(physicsDrawables.getFillUnselectRes()));
            this.unselectedDrawable = ThemeUtils.getThemeDrawable(physicsDrawables.getUnselectRes());
        } catch (Exception e) {
            Debug.INSTANCE.m32035d(getClass(), "error:" + e.getLocalizedMessage(), new Object[0]);
            e.printStackTrace();
        }
    }

    public final void setFillDrawable(@Nullable VectorDrawable vectorDrawable) {
        this.fillDrawable = vectorDrawable;
    }

    public final void setFillUnselectDrawable(@Nullable VectorDrawable vectorDrawable) {
        this.fillUnselectDrawable = vectorDrawable;
    }

    public final void setHighlightDrawable(@Nullable Drawable drawable) {
        this.highlightDrawable = drawable;
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public void setHintColor(int color) {
        this.color = Integer.valueOf(color);
        VectorDrawable vectorDrawable = this.fillDrawable;
        if (vectorDrawable != null) {
            vectorDrawable.setTint(color);
        }
        VectorDrawable vectorDrawable2 = this.fillUnselectDrawable;
        if (vectorDrawable2 != null) {
            vectorDrawable2.setTint(color);
        }
        invalidate();
    }

    public void setShapeTool(@NotNull ShapeToolType shapeToolType) {
        Intrinsics.checkNotNullParameter(shapeToolType, "shapeToolType");
        this.shapeToolType = shapeToolType;
        setDrawableResource$default(this, false, 1, null);
    }

    public final void setShapeToolType(@NotNull ShapeToolType shapeToolType) {
        Intrinsics.checkNotNullParameter(shapeToolType, "<set-?>");
        this.shapeToolType = shapeToolType;
    }

    public final void setStrokeDrawable(@Nullable Drawable drawable) {
        this.strokeDrawable = drawable;
    }

    public final void setUnselectedDrawable(@Nullable Drawable drawable) {
        this.unselectedDrawable = drawable;
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public void setViewSelect(boolean isSelected, boolean isFromClick) {
        if (!isFromClick) {
            this.isViewSelected = isSelected;
            m50127p();
        } else {
            if (this.isViewSelected == isSelected) {
                return;
            }
            this.isViewSelected = isSelected;
            m50117c();
        }
    }

    public void tint() {
        PenArgs penArgs = this.penArgs;
        setDrawableResource(penArgs != null ? penArgs.getRoundCorner() : false);
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PhysicalShapeIconView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ PhysicalShapeIconView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhysicalShapeIconView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.shapeToolType = ShapeToolType.INK_PEN;
        this.bitmapPaint = new Paint();
        this.minTransResId = C7384R.dimen.dp_0;
        this.maxTransResId = C7384R.dimen.dp_20;
        this.dockType = DockType.TOP;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.3f, 1.0f);
        ofFloat.setDuration(200L);
        ofFloat.setRepeatCount(0);
        Intrinsics.checkNotNullExpressionValue(ofFloat, "apply(...)");
        this.alphaAnimator = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat2.setDuration(200L);
        ofFloat2.setRepeatCount(0);
        Intrinsics.checkNotNullExpressionValue(ofFloat2, "apply(...)");
        this.transYAnimator = ofFloat2;
        initParams(attributeSet);
        m50122i();
    }

    public /* synthetic */ PhysicalShapeIconView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
