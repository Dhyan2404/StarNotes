package com.onyx.galaxy.note.editor.view.toolbar;

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
import androidx.annotation.ColorRes;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.DrawableKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.Tintable;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.ShapeDrawableBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.IShapeViewOpt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b2\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0011\b\u0016\u0012\u0006\u0010|\u001a\u00020{¢\u0006\u0004\b}\u0010~B\u001d\b\u0016\u0012\u0006\u0010|\u001a\u00020{\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b}\u0010\u007fB'\b\u0016\u0012\u0006\u0010|\u001a\u00020{\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0007\u0010\u0080\u0001\u001a\u00020\b¢\u0006\u0005\b}\u0010\u0081\u0001J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u001b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J?\u0010 \u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0018\u001a\u0004\u0018\u00010\r2#\b\u0002\u0010\u001f\u001a\u001d\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u001e0\u0019H\u0002J\u0010\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!H\u0016J\b\u0010$\u001a\u00020\u0006H\u0016J\u0010\u0010&\u001a\u00020\u00062\b\b\u0001\u0010%\u001a\u00020\bJ\u0010\u0010'\u001a\u00020\u00062\b\b\u0001\u0010%\u001a\u00020\bJ\u0010\u0010(\u001a\u00020\u00062\b\b\u0001\u0010%\u001a\u00020\bJ\u0006\u0010)\u001a\u00020\u0006J\u0018\u0010,\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\b2\u0006\u0010+\u001a\u00020\bH\u0014J\u0010\u0010-\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0015J\u0006\u0010.\u001a\u00020\u0006J\u0010\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\bH\u0016J\u0018\u00104\u001a\u00020\u00062\u0006\u00102\u001a\u0002012\u0006\u00103\u001a\u000201H\u0016J\b\u00105\u001a\u00020!H\u0016J\b\u00106\u001a\u000201H\u0016J\b\u00107\u001a\u000201H\u0016J\u0010\u00109\u001a\u00020\u00062\u0006\u00108\u001a\u000201H\u0016J\u0010\u0010<\u001a\u00020\u00062\u0006\u0010;\u001a\u00020:H\u0016J\b\u0010=\u001a\u00020\u0006H\u0016R\u0016\u0010?\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010>R\u0016\u0010@\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010>R\u0016\u0010A\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010>R\u0016\u0010B\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010>R\u0016\u0010C\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010>R\u0016\u0010E\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010DR\u0016\u0010F\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010DR\u0016\u0010H\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010DR\"\u0010\"\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR$\u0010U\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR$\u0010\\\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bV\u0010W\u001a\u0004\bX\u0010Y\"\u0004\bZ\u0010[R$\u0010`\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b]\u0010W\u001a\u0004\b^\u0010Y\"\u0004\b_\u0010[R$\u0010d\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\ba\u0010W\u001a\u0004\bb\u0010Y\"\u0004\bc\u0010[R$\u0010h\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\be\u0010P\u001a\u0004\bf\u0010R\"\u0004\bg\u0010TR$\u0010l\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bi\u0010P\u001a\u0004\bj\u0010R\"\u0004\bk\u0010TR\u0014\u0010p\u001a\u00020m8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bn\u0010oR\u0018\u0010/\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010rR\u0016\u0010t\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010DR\u0016\u0010x\u001a\u00020u8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\u0016\u0010z\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010D¨\u0006\u0082\u0001"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;", "Landroid/view/View;", "Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;", "Lcom/onyx/android/sdk/theme/widgets/Tintable;", "Landroid/util/AttributeSet;", "attrs", "", C4921e.f26537n, "", "drawableId", "Landroid/graphics/drawable/VectorDrawable;", "j", "(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;", "Landroid/graphics/drawable/Drawable;", "i", "(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "e", "a", C6998g.f39679a, "b", C6999h.f39688c, C6997f.f39671c, ResourceManager.f46830c, "Lkotlin/Function1;", "Landroid/graphics/Bitmap;", "Lkotlin/ParameterName;", "name", "bitmap", "Landroid/graphics/RectF;", "rectMapper", "c", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "shapeToolType", "setShapeTool", "setDrawableResource", "tintColorRes", "setNormalTint", "setArrowTint", "setSelectBgTint", "applyIconTheme", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "onDraw", "clearHintColor", "color", "setHintColor", "", "isSelected", "isFromClick", "setViewSelect", "getViewShapeType", "isViewSelected", "isVipType", "enable", "enableShapeView", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", "setDockType", "tint", "I", "normalTintColor", "unEnableTintColor", "selectArrowTintColor", "selectBgTintColor", "unSelectFillTintColor", Constants.HASIDCALL_INDEX_SIG, "alwaysShowFillColor", "showSelectArrowIndicator", "l", "showSelectedStroke", "m", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "getShapeToolType", "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "setShapeToolType", "(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V", GoogleApiAvailabilityLight.f29016b, "Landroid/graphics/drawable/Drawable;", "getSelectDrawable", "()Landroid/graphics/drawable/Drawable;", "setSelectDrawable", "(Landroid/graphics/drawable/Drawable;)V", "selectDrawable", C4921e.f26528e, "Landroid/graphics/drawable/VectorDrawable;", "getSelectArrowDrawable", "()Landroid/graphics/drawable/VectorDrawable;", "setSelectArrowDrawable", "(Landroid/graphics/drawable/VectorDrawable;)V", "selectArrowDrawable", "p", "getSelectFillDrawable", "setSelectFillDrawable", "selectFillDrawable", "q", "getNormalDrawable", "setNormalDrawable", "normalDrawable", "r", "getBgDrawable", "setBgDrawable", "bgDrawable", "s", "getSelectedStrokeDrawable", "setSelectedStrokeDrawable", "selectedStrokeDrawable", "Landroid/graphics/Paint;", "t", "Landroid/graphics/Paint;", "bitmapPaint", "u", Constants.INTEGER_SIG, "v", "isSelect", "", "w", "F", "iconSize", "x", "isArrowClicked", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SuppressLint({"UseCompatLoadingForDrawables"})
@SourceDebugExtension({"SMAP\nShapeIconView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeIconView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,301:1\n1#2:302\n*E\n"})
/* loaded from: classes9.dex */
public class ShapeIconView extends View implements IShapeViewOpt, Tintable {

    /* renamed from: e, reason: from kotlin metadata */
    public int normalTintColor;

    /* renamed from: f, reason: from kotlin metadata */
    public int unEnableTintColor;

    /* renamed from: g, reason: from kotlin metadata */
    public int selectArrowTintColor;

    /* renamed from: h, reason: from kotlin metadata */
    public int selectBgTintColor;

    /* renamed from: i, reason: from kotlin metadata */
    public int unSelectFillTintColor;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean alwaysShowFillColor;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean showSelectArrowIndicator;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean showSelectedStroke;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public ShapeToolType shapeToolType;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public Drawable selectDrawable;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public VectorDrawable selectArrowDrawable;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public VectorDrawable selectFillDrawable;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public VectorDrawable normalDrawable;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public Drawable bgDrawable;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public Drawable selectedStrokeDrawable;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Paint bitmapPaint;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public Integer color;

    /* renamed from: v, reason: from kotlin metadata */
    public boolean isSelect;

    /* renamed from: w, reason: from kotlin metadata */
    public float iconSize;

    /* renamed from: x, reason: from kotlin metadata */
    public boolean isArrowClicked;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeIconView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public static /* synthetic */ void m50166d(final ShapeIconView shapeIconView, Canvas canvas, Drawable drawable, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawDrawable");
        }
        if ((i & 4) != 0) {
            function1 = new Function1<Bitmap, RectF>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeIconView$drawDrawable$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final RectF invoke(@NotNull Bitmap it2) {
                    float f;
                    float f2;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    f = ShapeIconView.this.iconSize;
                    f2 = ShapeIconView.this.iconSize;
                    return new RectF(0.0f, 0.0f, f, f2);
                }
            };
        }
        shapeIconView.m50169c(canvas, drawable, function1);
    }

    /* renamed from: a */
    public final void m50167a(Canvas canvas) {
        if (isEnabled() && this.alwaysShowFillColor) {
            if (this.isSelect) {
                m50166d(this, canvas, this.bgDrawable, null, 4, null);
                if (this.showSelectedStroke) {
                    m50169c(canvas, this.selectedStrokeDrawable, new Function1<Bitmap, RectF>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeIconView$drawAlwaysSelectFillDrawable$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final RectF invoke(@NotNull Bitmap it2) {
                            Intrinsics.checkNotNullParameter(it2, "it");
                            return new RectF(0.0f, 0.0f, ShapeIconView.this.getMeasuredWidth(), ShapeIconView.this.getMeasuredHeight());
                        }
                    });
                }
            }
            m50173h(canvas);
            m50166d(this, canvas, this.selectDrawable, null, 4, null);
        }
    }

    public final void applyIconTheme() {
        VectorDrawable vectorDrawable = this.normalDrawable;
        if (vectorDrawable != null) {
            vectorDrawable.setTint(ThemeUtils.getColorById(this.normalTintColor));
        }
        VectorDrawable vectorDrawable2 = this.selectArrowDrawable;
        if (vectorDrawable2 != null) {
            vectorDrawable2.setTint(ThemeUtils.getColorById(this.selectArrowTintColor));
        }
        this.bgDrawable = ThemeUtils.getThemeDrawable(this.shapeToolType.getDrawableRes().getBgRes());
    }

    /* renamed from: b */
    public final void m50168b(Canvas canvas) {
        if (this.showSelectArrowIndicator) {
            m50169c(canvas, this.selectArrowDrawable, new Function1<Bitmap, RectF>() { // from class: com.onyx.galaxy.note.editor.view.toolbar.ShapeIconView$drawArrowIndicatorDrawable$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final RectF invoke(@NotNull Bitmap it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    float measuredWidth = ShapeIconView.this.getMeasuredWidth();
                    ResManager resManager = ResManager.INSTANCE;
                    float f = (measuredWidth / resManager.getFloat(C10651R.dimen.twice)) - (it2.getWidth() / resManager.getFloat(C10651R.dimen.twice));
                    return new RectF(f, (ShapeIconView.this.getMeasuredHeight() - resManager.getDimens(C10651R.dimen.shape_icon_arrow_bottom_padding)) - it2.getHeight(), it2.getWidth() + f, it2.getHeight() + r4);
                }
            });
        }
    }

    /* renamed from: c */
    public final void m50169c(Canvas canvas, Drawable drawable, Function1<? super Bitmap, ? extends RectF> rectMapper) {
        Bitmap bitmap;
        if (drawable == null || (bitmap = DrawableKt.toBitmap(drawable)) == null) {
            return;
        }
        canvas.drawBitmap(bitmap, (Rect) null, rectMapper.invoke(bitmap), this.bitmapPaint);
    }

    public final void clearHintColor() {
        this.color = null;
        VectorDrawable vectorDrawable = this.selectFillDrawable;
        if (vectorDrawable != null) {
            vectorDrawable.setTintList(null);
        }
        invalidate();
    }

    /* renamed from: e */
    public final void m50170e(Canvas canvas) {
        VectorDrawable vectorDrawable = this.normalDrawable;
        if (vectorDrawable != null) {
            vectorDrawable.setTint(ThemeUtils.getColorById(isEnabled() ? this.normalTintColor : this.unEnableTintColor));
        }
        m50166d(this, canvas, this.normalDrawable, null, 4, null);
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public void enableShapeView(boolean enable) {
        setEnabled(enable);
    }

    /* renamed from: f */
    public final void m50171f(Canvas canvas) {
        if (!isEnabled() || this.isSelect) {
            return;
        }
        int colorById = ThemeUtils.getColorById(this.unSelectFillTintColor);
        VectorDrawable vectorDrawable = this.selectFillDrawable;
        if (vectorDrawable != null) {
            vectorDrawable.setTint(colorById);
        }
        m50166d(this, canvas, this.selectFillDrawable, null, 4, null);
    }

    /* renamed from: g */
    public final void m50172g(Canvas canvas) {
        if (isEnabled() && this.isSelect) {
            m50166d(this, canvas, this.bgDrawable, null, 4, null);
            m50173h(canvas);
            m50166d(this, canvas, this.selectDrawable, null, 4, null);
            m50168b(canvas);
        }
    }

    @Nullable
    public final Drawable getBgDrawable() {
        return this.bgDrawable;
    }

    @Nullable
    public final VectorDrawable getNormalDrawable() {
        return this.normalDrawable;
    }

    @Nullable
    public final VectorDrawable getSelectArrowDrawable() {
        return this.selectArrowDrawable;
    }

    @Nullable
    public final Drawable getSelectDrawable() {
        return this.selectDrawable;
    }

    @Nullable
    public final VectorDrawable getSelectFillDrawable() {
        return this.selectFillDrawable;
    }

    @Nullable
    public final Drawable getSelectedStrokeDrawable() {
        return this.selectedStrokeDrawable;
    }

    @NotNull
    public final ShapeToolType getShapeToolType() {
        return this.shapeToolType;
    }

    @NotNull
    public ShapeToolType getViewShapeType() {
        return this.shapeToolType;
    }

    /* renamed from: h */
    public final void m50173h(Canvas canvas) {
        Integer num;
        VectorDrawable vectorDrawable = this.selectFillDrawable;
        if (vectorDrawable != null && (num = this.color) != null) {
            vectorDrawable.setTint(num.intValue());
        }
        m50166d(this, canvas, this.selectFillDrawable, null, 4, null);
    }

    /* renamed from: i */
    public final Drawable m50174i(Integer drawableId) {
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

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    /* renamed from: isViewSelected, reason: from getter */
    public boolean getIsSelect() {
        return this.isSelect;
    }

    public boolean isVipType() {
        return this.shapeToolType.getIsVipType();
    }

    /* renamed from: j */
    public final VectorDrawable m50175j(Integer drawableId) {
        Drawable m50174i = m50174i(drawableId);
        if (m50174i instanceof VectorDrawable) {
            return (VectorDrawable) m50174i;
        }
        return null;
    }

    /* renamed from: k */
    public final void m50176k(AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.ShapeIconView);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
            this.normalTintColor = obtainStyledAttributes.getResourceId(C10651R.styleable.ShapeIconView_normalTintColor, C7996R.color.theme_icon_color_01);
            this.selectArrowTintColor = obtainStyledAttributes.getResourceId(C10651R.styleable.ShapeIconView_selectArrowTintColor, C7996R.color.theme_primary_color_01);
            this.selectBgTintColor = obtainStyledAttributes.getResourceId(C10651R.styleable.ShapeIconView_normalTintColor, C7996R.color.theme_bg_primary_color_01);
            this.alwaysShowFillColor = obtainStyledAttributes.getBoolean(C10651R.styleable.ShapeIconView_alwaysShowFillColor, false);
            this.showSelectedStroke = obtainStyledAttributes.getBoolean(C10651R.styleable.ShapeIconView_showSelectedStroke, false);
            this.showSelectArrowIndicator = obtainStyledAttributes.getBoolean(C10651R.styleable.ShapeIconView_showSelectArrowIndicator, true);
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 0));
        m50167a(canvas);
        m50172g(canvas);
        m50171f(canvas);
        m50170e(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        float dimension = ResManager.INSTANCE.getDimension(C10651R.dimen.tool_icon_size);
        this.iconSize = dimension;
        setMeasuredDimension((int) dimension, (int) dimension);
    }

    public final void setArrowTint(@ColorRes int tintColorRes) {
        this.selectArrowTintColor = tintColorRes;
    }

    public final void setBgDrawable(@Nullable Drawable drawable) {
        this.bgDrawable = drawable;
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public void setDockType(@NotNull DockType dockType) {
        Intrinsics.checkNotNullParameter(dockType, "dockType");
    }

    public void setDrawableResource() {
        try {
            ShapeDrawableBean drawableRes = this.shapeToolType.getDrawableRes();
            this.bgDrawable = ThemeUtils.getThemeDrawable(drawableRes.getBgRes());
            this.selectDrawable = this.shapeToolType.getIsThemeIcon() ? ThemeUtils.getThemeDrawable(drawableRes.getSelectRes()) : m50175j(Integer.valueOf(drawableRes.getSelectRes()));
            this.selectArrowDrawable = m50175j(Integer.valueOf(drawableRes.getSelectArrow()));
            this.normalDrawable = m50175j(Integer.valueOf(drawableRes.getNormalRes()));
            this.selectFillDrawable = m50175j(drawableRes.getSelectFillRes());
            this.selectedStrokeDrawable = ThemeUtils.getThemeDrawable(C10651R.drawable.ic_shape_tool_select_stroke);
            applyIconTheme();
        } catch (Exception e) {
            Debug.INSTANCE.m32035d(getClass(), "error:" + e.getLocalizedMessage(), new Object[0]);
            e.printStackTrace();
        }
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public void setHintColor(int color) {
        this.color = Integer.valueOf(color);
        VectorDrawable vectorDrawable = this.selectFillDrawable;
        if (vectorDrawable != null) {
            vectorDrawable.setTint(color);
        }
        invalidate();
    }

    public final void setNormalDrawable(@Nullable VectorDrawable vectorDrawable) {
        this.normalDrawable = vectorDrawable;
    }

    public final void setNormalTint(@ColorRes int tintColorRes) {
        this.normalTintColor = tintColorRes;
    }

    public final void setSelectArrowDrawable(@Nullable VectorDrawable vectorDrawable) {
        this.selectArrowDrawable = vectorDrawable;
    }

    public final void setSelectBgTint(@ColorRes int tintColorRes) {
        this.selectBgTintColor = tintColorRes;
    }

    public final void setSelectDrawable(@Nullable Drawable drawable) {
        this.selectDrawable = drawable;
    }

    public final void setSelectFillDrawable(@Nullable VectorDrawable vectorDrawable) {
        this.selectFillDrawable = vectorDrawable;
    }

    public final void setSelectedStrokeDrawable(@Nullable Drawable drawable) {
        this.selectedStrokeDrawable = drawable;
    }

    public void setShapeTool(@NotNull ShapeToolType shapeToolType) {
        Intrinsics.checkNotNullParameter(shapeToolType, "shapeToolType");
        this.shapeToolType = shapeToolType;
        setDrawableResource();
    }

    public final void setShapeToolType(@NotNull ShapeToolType shapeToolType) {
        Intrinsics.checkNotNullParameter(shapeToolType, "<set-?>");
        this.shapeToolType = shapeToolType;
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public void setViewSelect(boolean isSelected, boolean isFromClick) {
        this.isSelect = isSelected;
        invalidate();
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        applyIconTheme();
        setDrawableResource();
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeIconView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ShapeIconView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapeIconView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.normalTintColor = C7996R.color.theme_icon_color_01;
        this.unEnableTintColor = C7996R.color.theme_icon_color_03;
        this.selectArrowTintColor = C7996R.color.theme_primary_color_01;
        this.selectBgTintColor = C7996R.color.theme_bg_primary_color_01;
        this.unSelectFillTintColor = C7996R.color.theme_icon_pen_tool_normal_bg;
        this.showSelectArrowIndicator = true;
        this.shapeToolType = ShapeToolType.INK_PEN;
        Paint paint = new Paint();
        this.bitmapPaint = paint;
        paint.setAntiAlias(true);
        m50176k(attributeSet);
    }

    public /* synthetic */ ShapeIconView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
