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
import android.util.AttributeSet;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.DrawableKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.Tintable;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010C\u001a\u00020B¢\u0006\u0004\bD\u0010EB\u001d\b\u0016\u0012\u0006\u0010C\u001a\u00020B\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\bD\u0010FB%\b\u0016\u0012\u0006\u0010C\u001a\u00020B\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010G\u001a\u00020\u0019¢\u0006\u0004\bD\u0010HJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0015J\u0016\u0010\u000b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003J\b\u0010\f\u001a\u00020\u0007H\u0016J\u0012\u0010\u000f\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\b\u0010\u0010\u001a\u00020\u0007H\u0002R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0013R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR\u0016\u0010 \u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u001bR\u0016\u0010\"\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001bR\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010\t\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010\n\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010(R\u0014\u0010+\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010(R\u0014\u0010-\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010(R*\u00102\u001a\u00020.2\u0006\u0010/\u001a\u00020.8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u0010;\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010\u001b\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R*\u0010A\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u00038\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010(\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@¨\u0006I"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/SizeView;", "Landroid/view/View;", "Lcom/onyx/android/sdk/theme/widgets/Tintable;", "", "getSizeWidth", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "onDraw", "maxSize", "minSize", "setMaxMinSize", "tint", "Landroid/util/AttributeSet;", "attrs", "a", "b", "Landroid/graphics/drawable/Drawable;", "e", "Landroid/graphics/drawable/Drawable;", "selectDrawable", C6997f.f39671c, "normalDrawable", C6998g.f39679a, "outlineDrawable", "", C6999h.f39688c, "I", "selectTintResId", "i", "normalTintResId", "j", "outlineTintResId", C4921e.f26537n, "sizeTintResId", "Landroid/graphics/Paint;", "l", "Landroid/graphics/Paint;", "paint", "m", "F", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "sizeMaxWidth", "p", "sizeMinWidth", "", "value", "q", Constants.HASIDCALL_INDEX_SIG, "isSelect", Constants.BOOLEAN_VALUE_SIG, "setSelect", "(Z)V", "r", "getIndex", "()I", "setIndex", "(I)V", FirebaseAnalytics.Param.INDEX, "s", "getSize", "()F", "setSize", "(F)V", "size", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SizeView extends View implements Tintable {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Drawable selectDrawable;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Drawable normalDrawable;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Drawable outlineDrawable;

    /* renamed from: h, reason: from kotlin metadata */
    public int selectTintResId;

    /* renamed from: i, reason: from kotlin metadata */
    public int normalTintResId;

    /* renamed from: j, reason: from kotlin metadata */
    public int outlineTintResId;

    /* renamed from: k, reason: from kotlin metadata */
    public int sizeTintResId;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Paint paint;

    /* renamed from: m, reason: from kotlin metadata */
    public float maxSize;

    /* renamed from: n, reason: from kotlin metadata */
    public float minSize;

    /* renamed from: o, reason: from kotlin metadata */
    public final float sizeMaxWidth;

    /* renamed from: p, reason: from kotlin metadata */
    public final float sizeMinWidth;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean isSelect;

    /* renamed from: r, reason: from kotlin metadata */
    public int index;

    /* renamed from: s, reason: from kotlin metadata */
    public float size;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SizeView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final float getSizeWidth() {
        float f = this.size;
        float f2 = this.minSize;
        float f3 = (f - f2) / (this.maxSize - f2);
        float f4 = this.sizeMinWidth;
        return f4 + (f3 * (this.sizeMaxWidth - f4));
    }

    /* renamed from: a */
    public final void m50255a(AttributeSet attrs) {
        this.paint.setAntiAlias(true);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.SizeView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.selectDrawable = obtainStyledAttributes.getDrawable(C10651R.styleable.SizeView_selectSrc);
        this.normalDrawable = obtainStyledAttributes.getDrawable(C10651R.styleable.SizeView_normalSrc);
        this.outlineDrawable = obtainStyledAttributes.getDrawable(C10651R.styleable.SizeView_outlineSrc);
        this.selectTintResId = obtainStyledAttributes.getResourceId(C10651R.styleable.SizeView_selectTint, 0);
        this.normalTintResId = obtainStyledAttributes.getResourceId(C10651R.styleable.SizeView_normalTint, C7996R.color.theme_background_color_02);
        this.outlineTintResId = obtainStyledAttributes.getResourceId(C10651R.styleable.SizeView_outlineTint, C7996R.color.theme_divider_color_01);
        this.sizeTintResId = obtainStyledAttributes.getResourceId(C10651R.styleable.SizeView_sizeTint, C7996R.color.theme_background_color_08);
        m50256b();
        setSelect(obtainStyledAttributes.getBoolean(C10651R.styleable.SizeView_isSelected, false));
        setSize(obtainStyledAttributes.getFloat(C10651R.styleable.SizeView_defaultSize, 0.0f));
        this.index = obtainStyledAttributes.getInt(C10651R.styleable.SizeView_index, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b */
    public final void m50256b() {
        int i = this.selectTintResId;
        if (i != 0) {
            int colorById = ThemeUtils.getColorById(i);
            Drawable drawable = this.selectDrawable;
            if (drawable != null) {
                drawable.setTint(colorById);
            }
        }
        Drawable drawable2 = this.normalDrawable;
        if (drawable2 != null) {
            drawable2.setTint(ThemeUtils.getColorById(this.normalTintResId));
        }
        Drawable drawable3 = this.outlineDrawable;
        if (drawable3 != null) {
            drawable3.setTint(ThemeUtils.getColorById(this.outlineTintResId));
        }
    }

    public final int getIndex() {
        return this.index;
    }

    public final float getSize() {
        return this.size;
    }

    /* renamed from: isSelect, reason: from getter */
    public final boolean getIsSelect() {
        return this.isSelect;
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    public void onDraw(@NotNull Canvas canvas) {
        Drawable drawable;
        Bitmap bitmap;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 0));
        if (this.isSelect && (drawable = this.selectDrawable) != null && (bitmap = DrawableKt.toBitmap(drawable)) != null) {
            canvas.drawBitmap(bitmap, (Rect) null, new RectF(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight()), this.paint);
        }
        Drawable drawable2 = this.normalDrawable;
        if (drawable2 != null) {
            Bitmap bitmap2 = DrawableKt.toBitmap(drawable2);
            if (bitmap2 == null) {
                return;
            } else {
                canvas.drawBitmap(bitmap2, (getMeasuredHeight() - drawable2.getIntrinsicWidth()) / 2.0f, (getMeasuredWidth() - drawable2.getIntrinsicHeight()) / 2.0f, this.paint);
            }
        }
        Drawable drawable3 = this.outlineDrawable;
        if (drawable3 != null) {
            Bitmap bitmap3 = DrawableKt.toBitmap(drawable3);
            if (bitmap3 == null) {
                return;
            } else {
                canvas.drawBitmap(bitmap3, (getMeasuredHeight() - drawable3.getIntrinsicWidth()) / 2.0f, (getMeasuredWidth() - drawable3.getIntrinsicHeight()) / 2.0f, this.paint);
            }
        }
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(ThemeUtils.getColorById(this.sizeTintResId));
        canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, getSizeWidth(), this.paint);
    }

    public final void setIndex(int i) {
        this.index = i;
    }

    public final void setMaxMinSize(float maxSize, float minSize) {
        this.maxSize = maxSize;
        this.minSize = minSize;
    }

    public final void setSelect(boolean z) {
        this.isSelect = z;
        invalidate();
    }

    public final void setSize(float f) {
        this.size = f;
        invalidate();
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        m50256b();
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SizeView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ SizeView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SizeView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.normalTintResId = C7996R.color.theme_background_color_02;
        this.outlineTintResId = C7996R.color.theme_divider_color_01;
        this.sizeTintResId = C7996R.color.theme_background_color_08;
        this.paint = new Paint();
        this.maxSize = 20.0f;
        this.minSize = 1.0f;
        ResManager resManager = ResManager.INSTANCE;
        this.sizeMaxWidth = resManager.getDimension(C10651R.dimen.size_max_width);
        this.sizeMinWidth = resManager.getDimension(C10651R.dimen.size_min_width);
        m50255a(attributeSet);
    }

    public /* synthetic */ SizeView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
