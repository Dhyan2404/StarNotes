package com.onyx.android.sdk.p039ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.Tintable;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B'\b\u0007\u0012\u0006\u0010B\u001a\u00020A\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010C\u001a\u00020\u0003¢\u0006\u0004\bD\u0010EJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0014J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014J\u000e\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0003J\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0003J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\u0012\u0010\u0012\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0006H\u0002J\b\u0010\u0014\u001a\u00020\u0006H\u0002J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0016\u0010'\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010 R\u0016\u0010)\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010 R\u0016\u0010+\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010 R\u0016\u0010-\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010 R\u0016\u00100\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00102\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010 R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0014\u0010:\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010<\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u00109R\u0014\u0010>\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u00109R\u0016\u0010@\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010/¨\u0006F"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/RoundImageView;", "Landroidx/appcompat/widget/AppCompatImageView;", "Lcom/onyx/android/sdk/theme/widgets/Tintable;", "", "widthMeasureSpec", "heightMeasureSpec", "", "onMeasure", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "color", "setImageBackgroundColor", "colorRes", "setBorderColorRes", "tint", "Landroid/util/AttributeSet;", "attrs", "b", "c", "d", "a", "Landroid/graphics/Path;", C6999h.f39688c, "Landroid/graphics/Path;", "roundRectPath", "Landroid/graphics/RectF;", "i", "Landroid/graphics/RectF;", "sizeRectF", "", "j", "F", "getRadius", "()F", "setRadius", "(F)V", "radius", C4921e.f26537n, "topLeftRadius", "l", "topRightRadius", "m", "bottomLeftRadius", GoogleApiAvailabilityLight.f29016b, "bottomRightRadius", C4921e.f26528e, "I", "borderColorRes", "p", "borderWidth", "", "q", Constants.HASIDCALL_INDEX_SIG, "isShadowAlphaBg", "Landroid/graphics/Paint;", "r", "Landroid/graphics/Paint;", "paint", "s", "imageBackgroundPaint", "t", "alphaPaint", "u", "imageBackgroundColor", "Landroid/content/Context;", "context", "defStyleAttr", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public class RoundImageView extends AppCompatImageView implements Tintable {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public Path roundRectPath;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public RectF sizeRectF;

    /* renamed from: j, reason: from kotlin metadata */
    public float radius;

    /* renamed from: k, reason: from kotlin metadata */
    public float topLeftRadius;

    /* renamed from: l, reason: from kotlin metadata */
    public float topRightRadius;

    /* renamed from: m, reason: from kotlin metadata */
    public float bottomLeftRadius;

    /* renamed from: n, reason: from kotlin metadata */
    public float bottomRightRadius;

    /* renamed from: o, reason: from kotlin metadata */
    public int borderColorRes;

    /* renamed from: p, reason: from kotlin metadata */
    public float borderWidth;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean isShadowAlphaBg;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final Paint paint;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final Paint imageBackgroundPaint;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Paint alphaPaint;

    /* renamed from: u, reason: from kotlin metadata */
    public int imageBackgroundColor;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundImageView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: a */
    public final void m36422a(Canvas canvas) {
        float dimension = ResManager.INSTANCE.getDimension(C8037R.dimen.alpha_bg_grid_size);
        int measuredWidth = (int) (getMeasuredWidth() / dimension);
        int measuredHeight = (int) (getMeasuredHeight() / dimension);
        if (measuredHeight < 0) {
            return;
        }
        int i = 0;
        while (true) {
            float f = i * dimension;
            float f2 = f + dimension;
            if (measuredWidth >= 0) {
                int i2 = 0;
                while (true) {
                    float f3 = i2 * dimension;
                    float f4 = f3 + dimension;
                    if (i % 2 == 0) {
                        this.alphaPaint.setColor(i2 % 2 == 0 ? ResManager.INSTANCE.getColor(C8037R.color.round_image_grid_color_dark) : ResManager.INSTANCE.getColor(C8037R.color.round_image_grid_color_light));
                    } else {
                        this.alphaPaint.setColor(i2 % 2 == 0 ? ResManager.INSTANCE.getColor(C8037R.color.round_image_grid_color_light) : ResManager.INSTANCE.getColor(C8037R.color.round_image_grid_color_dark));
                    }
                    canvas.drawRect(new RectF(f3, f, f4, f2), this.alphaPaint);
                    if (i2 == measuredWidth) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            if (i == measuredHeight) {
                return;
            } else {
                i++;
            }
        }
    }

    /* renamed from: b */
    public final void m36423b(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C8037R.styleable.RoundImageView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.radius = obtainStyledAttributes.getDimension(C8037R.styleable.RoundImageView_cornerRadius, 0.0f);
        this.topLeftRadius = obtainStyledAttributes.getDimension(C8037R.styleable.RoundImageView_android_topLeftRadius, 0.0f);
        this.topRightRadius = obtainStyledAttributes.getDimension(C8037R.styleable.RoundImageView_android_topRightRadius, 0.0f);
        this.bottomLeftRadius = obtainStyledAttributes.getDimension(C8037R.styleable.RoundImageView_android_bottomLeftRadius, 0.0f);
        this.bottomRightRadius = obtainStyledAttributes.getDimension(C8037R.styleable.RoundImageView_android_bottomRightRadius, 0.0f);
        this.borderColorRes = obtainStyledAttributes.getResourceId(C8037R.styleable.RoundImageView_borderColor, C7996R.color.theme_divider_color_01);
        this.borderWidth = obtainStyledAttributes.getDimension(C8037R.styleable.RoundImageView_borderWidth, this.borderWidth);
        this.isShadowAlphaBg = obtainStyledAttributes.getBoolean(C8037R.styleable.RoundImageView_showAlphaBg, false);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: c */
    public final void m36424c() {
        this.paint.setColor(ThemeUtils.getColorById(this.borderColorRes));
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(this.borderWidth);
        this.imageBackgroundPaint.setStyle(Paint.Style.FILL);
        this.imageBackgroundPaint.setAntiAlias(true);
        this.alphaPaint.setAntiAlias(true);
        this.alphaPaint.setStyle(Paint.Style.FILL);
    }

    /* renamed from: d */
    public final void m36425d() {
        if (this.radius > 0.0f) {
            Path path = new Path();
            this.roundRectPath = path;
            RectF rectF = this.sizeRectF;
            float f = this.radius;
            path.addRoundRect(rectF, f, f, Path.Direction.CW);
            return;
        }
        if (this.topLeftRadius > 0.0f || this.topRightRadius > 0.0f || this.bottomLeftRadius > 0.0f || this.bottomRightRadius > 0.0f) {
            Path path2 = new Path();
            this.roundRectPath = path2;
            float f2 = this.topLeftRadius;
            float f3 = this.topRightRadius;
            float f4 = this.bottomRightRadius;
            float f5 = this.bottomLeftRadius;
            path2.addRoundRect(this.sizeRectF, new float[]{f2, f2, f3, f3, f4, f4, f5, f5}, Path.Direction.CW);
        }
    }

    public final float getRadius() {
        return this.radius;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        this.imageBackgroundPaint.setColor(this.imageBackgroundColor);
        float paddingLeft = this.borderWidth + getPaddingLeft();
        float paddingTop = this.borderWidth + getPaddingTop();
        float measuredWidth = (getMeasuredWidth() - this.borderWidth) - getPaddingRight();
        float measuredHeight = (getMeasuredHeight() - this.borderWidth) - getPaddingBottom();
        float f = this.radius;
        canvas.drawRoundRect(paddingLeft, paddingTop, measuredWidth, measuredHeight, f, f, this.imageBackgroundPaint);
        canvas.save();
        Path path = this.roundRectPath;
        if (path != null) {
            canvas.clipPath(path);
        }
        if (this.isShadowAlphaBg) {
            m36422a(canvas);
        }
        super.onDraw(canvas);
        canvas.restore();
        float f2 = 2;
        float paddingLeft2 = (this.borderWidth / f2) + getPaddingLeft();
        float paddingTop2 = (this.borderWidth / f2) + getPaddingTop();
        float measuredWidth2 = (getMeasuredWidth() - (this.borderWidth / f2)) - getPaddingRight();
        float measuredHeight2 = (getMeasuredHeight() - (this.borderWidth / f2)) - getPaddingBottom();
        float f3 = this.radius;
        canvas.drawRoundRect(paddingLeft2, paddingTop2, measuredWidth2, measuredHeight2, f3, f3, this.paint);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.sizeRectF.set(getPaddingLeft() + this.borderWidth, getPaddingTop() + this.borderWidth, (getMeasuredWidth() - getPaddingRight()) - this.borderWidth, (getMeasuredHeight() - getPaddingBottom()) - this.borderWidth);
        m36425d();
    }

    public final void setBorderColorRes(int colorRes) {
        this.borderColorRes = colorRes;
        invalidate();
    }

    public final void setImageBackgroundColor(int color) {
        this.imageBackgroundColor = color;
        invalidate();
    }

    public final void setRadius(float f) {
        this.radius = f;
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        this.paint.setColor(ThemeUtils.getColorById(this.borderColorRes));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundImageView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ RoundImageView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundImageView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.sizeRectF = new RectF();
        this.borderColorRes = C7996R.color.theme_divider_color_01;
        this.paint = new Paint();
        this.imageBackgroundPaint = new Paint();
        this.alphaPaint = new Paint();
        m36423b(attributeSet);
        m36424c();
    }
}
