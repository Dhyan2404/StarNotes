package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.Tintable;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0004\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010A\u001a\u00020@¢\u0006\u0004\bB\u0010CB\u001b\b\u0016\u0012\u0006\u0010A\u001a\u00020@\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\bB\u0010DB#\b\u0016\u0012\u0006\u0010A\u001a\u00020@\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010E\u001a\u00020\u0003¢\u0006\u0004\bB\u0010FJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0014J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014J\u000e\u0010\f\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rJ&\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rJ\u000e\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u000bJ\b\u0010\u0016\u001a\u00020\u0006H\u0016J\u0012\u0010\u0019\u001a\u00020\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002J\b\u0010\u001a\u001a\u00020\u0006H\u0002J\b\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001e\u001a\u00020\u001dH\u0002J\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010 \u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010!\u001a\u00020\u0006H\u0002R\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\"R\u0016\u0010\u0015\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010$\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010'R\u0016\u0010\u000e\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010'R\u0016\u0010-\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010'R\u0016\u0010\u0010\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010'R\u0016\u0010\u0011\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010'R\u0016\u0010\u0013\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010'R\u0016\u0010\u0012\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010'R\u0016\u00103\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010#R\u0016\u00105\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u0010#R\u0016\u00107\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u0010'R\u0016\u00109\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u0010#R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0014\u0010?\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010<¨\u0006G"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/ShadowLayout;", "Landroid/widget/FrameLayout;", "Lcom/onyx/android/sdk/theme/widgets/Tintable;", "", "widthMeasureSpec", "heightMeasureSpec", "", "onMeasure", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "", "showShadow", "", "shadowRadius", "setShadowRadius", "topLeftRadius", "topRightRadius", "bottomRightRadius", "bottomLeftRadius", "setCornerRadius", "showBorder", "tint", "Landroid/util/AttributeSet;", "attrs", "e", C6998g.f39679a, "", "b", "Landroid/graphics/RectF;", "a", "d", "c", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "I", "shadowColor", "", C6999h.f39688c, "F", "shadowDx", "i", "shadowDy", "j", C4921e.f26537n, "cornerRadius", "l", "m", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "p", "borderColor", "q", "borderColorRes", "r", "borderWidth", "s", "fillColorRes", "Landroid/graphics/Paint;", "t", "Landroid/graphics/Paint;", "paint", "u", "strokePaint", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ShadowLayout extends FrameLayout implements Tintable {

    /* renamed from: e, reason: from kotlin metadata */
    public boolean showShadow;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean showBorder;

    /* renamed from: g, reason: from kotlin metadata */
    public int shadowColor;

    /* renamed from: h, reason: from kotlin metadata */
    public float shadowDx;

    /* renamed from: i, reason: from kotlin metadata */
    public float shadowDy;

    /* renamed from: j, reason: from kotlin metadata */
    public float shadowRadius;

    /* renamed from: k, reason: from kotlin metadata */
    public float cornerRadius;

    /* renamed from: l, reason: from kotlin metadata */
    public float topLeftRadius;

    /* renamed from: m, reason: from kotlin metadata */
    public float topRightRadius;

    /* renamed from: n, reason: from kotlin metadata */
    public float bottomLeftRadius;

    /* renamed from: o, reason: from kotlin metadata */
    public float bottomRightRadius;

    /* renamed from: p, reason: from kotlin metadata */
    public int borderColor;

    /* renamed from: q, reason: from kotlin metadata */
    public int borderColorRes;

    /* renamed from: r, reason: from kotlin metadata */
    public float borderWidth;

    /* renamed from: s, reason: from kotlin metadata */
    public int fillColorRes;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Paint paint;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Paint strokePaint;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShadowLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: a */
    public final RectF m51464a() {
        return new RectF(getPaddingLeft(), getPaddingTop(), getMeasuredWidth() - getPaddingRight(), getMeasuredHeight() - getPaddingBottom());
    }

    /* renamed from: b */
    public final float[] m51465b() {
        float f = this.topLeftRadius;
        float f2 = this.topRightRadius;
        float f3 = this.bottomRightRadius;
        float f4 = this.bottomLeftRadius;
        return new float[]{f, f, f2, f2, f3, f3, f4, f4};
    }

    /* renamed from: c */
    public final void m51466c(Canvas canvas) {
        RectF m51464a = m51464a();
        float f = this.borderWidth;
        float f2 = 2;
        m51464a.inset((-f) / f2, (-f) / f2);
        Path path = new Path();
        path.addRoundRect(m51464a, m51465b(), Path.Direction.CW);
        canvas.drawPath(path, this.strokePaint);
    }

    /* renamed from: d */
    public final void m51467d(Canvas canvas) {
        Path path = new Path();
        path.addRoundRect(m51464a(), m51465b(), Path.Direction.CW);
        canvas.drawPath(path, this.paint);
    }

    /* renamed from: e */
    public final void m51468e(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.ShadowLayout);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.showShadow = obtainStyledAttributes.getBoolean(C10651R.styleable.ShadowLayout_showShadow, false);
        this.showBorder = obtainStyledAttributes.getBoolean(C10651R.styleable.ShadowLayout_showBorder, false);
        this.shadowColor = obtainStyledAttributes.getColor(C10651R.styleable.ShadowLayout_shadowColor, -16777216);
        this.shadowDx = obtainStyledAttributes.getDimension(C10651R.styleable.ShadowLayout_shadowDx, 0.0f);
        this.shadowDy = obtainStyledAttributes.getDimension(C10651R.styleable.ShadowLayout_shadowDy, 0.0f);
        this.shadowRadius = obtainStyledAttributes.getDimension(C10651R.styleable.ShadowLayout_shadowRadius, 0.0f);
        float dimension = obtainStyledAttributes.getDimension(C10651R.styleable.ShadowLayout_cornerRadius, 0.0f);
        this.cornerRadius = dimension;
        this.topLeftRadius = dimension;
        this.topRightRadius = dimension;
        this.bottomRightRadius = dimension;
        this.bottomLeftRadius = dimension;
        this.borderColor = obtainStyledAttributes.getColor(C10651R.styleable.ShadowLayout_borderColor, -16777216);
        this.borderColorRes = obtainStyledAttributes.getResourceId(C10651R.styleable.ShadowLayout_borderColorRes, -1);
        this.borderWidth = obtainStyledAttributes.getDimension(C10651R.styleable.ShadowLayout_borderWidth, this.borderWidth);
        this.fillColorRes = obtainStyledAttributes.getResourceId(C10651R.styleable.ShadowLayout_fillColor, C7996R.color.theme_background_color_01);
        if (obtainStyledAttributes.hasValue(C10651R.styleable.ShadowLayout_topLeftRadius)) {
            this.topLeftRadius = obtainStyledAttributes.getDimension(C10651R.styleable.ShadowLayout_topLeftRadius, 0.0f);
        }
        if (obtainStyledAttributes.hasValue(C10651R.styleable.ShadowLayout_topRightRadius)) {
            this.topRightRadius = obtainStyledAttributes.getDimension(C10651R.styleable.ShadowLayout_topRightRadius, 0.0f);
        }
        if (obtainStyledAttributes.hasValue(C10651R.styleable.ShadowLayout_bottomRightRadius)) {
            this.bottomRightRadius = obtainStyledAttributes.getDimension(C10651R.styleable.ShadowLayout_bottomRightRadius, 0.0f);
        }
        if (obtainStyledAttributes.hasValue(C10651R.styleable.ShadowLayout_bottomLeftRadius)) {
            this.bottomLeftRadius = obtainStyledAttributes.getDimension(C10651R.styleable.ShadowLayout_bottomLeftRadius, 0.0f);
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: f */
    public final void m51469f() {
        int i = this.borderColorRes;
        this.strokePaint.setColor(i != -1 ? ThemeUtils.getColorById(i) : this.borderColor);
    }

    /* renamed from: g */
    public final void m51470g() {
        float f = this.shadowRadius;
        float f2 = this.shadowDx;
        float f3 = f - f2;
        float f4 = this.shadowDy;
        float max = Math.max(f3, 0.0f);
        float max2 = Math.max(f - f4, 0.0f);
        float max3 = Math.max(f2 + f, 0.0f);
        float max4 = Math.max(f + f4, 0.0f);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(ThemeUtils.getColorById(this.fillColorRes));
        if (this.showShadow) {
            setWillNotDraw(false);
            this.paint.setShadowLayer(this.shadowRadius, this.shadowDx, this.shadowDy, this.shadowColor);
            setPadding((int) max, (int) max2, (int) max3, (int) max4);
        } else {
            setWillNotDraw(true);
            setPadding(0, 0, 0, 0);
        }
        this.strokePaint.setStyle(Paint.Style.STROKE);
        m51469f();
        this.strokePaint.setStrokeWidth(this.borderWidth);
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.showShadow) {
            m51467d(canvas);
        }
        if (this.showBorder) {
            m51466c(canvas);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        invalidate();
    }

    public final void setCornerRadius(@NotNull Number topLeftRadius, @NotNull Number topRightRadius, @NotNull Number bottomRightRadius, @NotNull Number bottomLeftRadius) {
        Intrinsics.checkNotNullParameter(topLeftRadius, "topLeftRadius");
        Intrinsics.checkNotNullParameter(topRightRadius, "topRightRadius");
        Intrinsics.checkNotNullParameter(bottomRightRadius, "bottomRightRadius");
        Intrinsics.checkNotNullParameter(bottomLeftRadius, "bottomLeftRadius");
        this.topLeftRadius = topLeftRadius.floatValue();
        this.topRightRadius = topRightRadius.floatValue();
        this.bottomRightRadius = bottomRightRadius.floatValue();
        this.bottomLeftRadius = bottomLeftRadius.floatValue();
        m51470g();
        invalidate();
    }

    public final void setShadowRadius(@NotNull Number shadowRadius) {
        Intrinsics.checkNotNullParameter(shadowRadius, "shadowRadius");
        this.shadowRadius = shadowRadius.floatValue();
        m51470g();
        invalidate();
    }

    public final void showBorder(boolean showBorder) {
        this.showBorder = showBorder;
        m51470g();
        invalidate();
    }

    public final void showShadow(boolean showShadow) {
        this.showShadow = showShadow;
        m51470g();
        invalidate();
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        m51469f();
        m51470g();
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShadowLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShadowLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.shadowColor = -16777216;
        this.borderColor = -16777216;
        this.borderColorRes = -1;
        this.borderWidth = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_1);
        this.fillColorRes = C7996R.color.theme_background_color_01;
        this.paint = new Paint();
        this.strokePaint = new Paint();
        m51468e(attributeSet);
        m51470g();
    }
}
