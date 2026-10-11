package com.google.android.material.tooltip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.MarkerEdgeTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.OffsetEdgeTreatment;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class TooltipDrawable extends MaterialShapeDrawable implements TextDrawableHelper.TextDrawableDelegate {

    /* renamed from: K0 */
    @StyleRes
    public static final int f32984K0 = C5139R.style.Widget_MaterialComponents_Tooltip;

    /* renamed from: L0 */
    @AttrRes
    public static final int f32985L0 = C5139R.attr.tooltipStyle;

    /* renamed from: A0 */
    public int f32986A0;

    /* renamed from: B0 */
    public int f32987B0;

    /* renamed from: C0 */
    public boolean f32988C0;

    /* renamed from: D0 */
    public int f32989D0;

    /* renamed from: E0 */
    public int f32990E0;

    /* renamed from: F0 */
    public float f32991F0;

    /* renamed from: G0 */
    public float f32992G0;

    /* renamed from: H0 */
    public final float f32993H0;

    /* renamed from: I0 */
    public float f32994I0;

    /* renamed from: J0 */
    public float f32995J0;

    /* renamed from: q0 */
    @Nullable
    public CharSequence f32996q0;

    /* renamed from: t0 */
    @NonNull
    public final Context f32997t0;

    /* renamed from: u0 */
    @Nullable
    public final Paint.FontMetrics f32998u0;

    /* renamed from: v0 */
    @NonNull
    public final TextDrawableHelper f32999v0;

    /* renamed from: w0 */
    @NonNull
    public final View.OnLayoutChangeListener f33000w0;

    /* renamed from: x0 */
    @NonNull
    public final Rect f33001x0;

    /* renamed from: y0 */
    public int f33002y0;

    /* renamed from: z0 */
    public int f33003z0;

    /* renamed from: com.google.android.material.tooltip.TooltipDrawable$a */
    /* loaded from: classes6.dex */
    public class ViewOnLayoutChangeListenerC5447a implements View.OnLayoutChangeListener {
        public ViewOnLayoutChangeListenerC5447a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            TooltipDrawable.this.m25497G(view);
        }
    }

    public TooltipDrawable(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        this.f32998u0 = new Paint.FontMetrics();
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.f32999v0 = textDrawableHelper;
        this.f33000w0 = new ViewOnLayoutChangeListenerC5447a();
        this.f33001x0 = new Rect();
        this.f32991F0 = 1.0f;
        this.f32992G0 = 1.0f;
        this.f32993H0 = 0.5f;
        this.f32994I0 = 0.5f;
        this.f32995J0 = 1.0f;
        this.f32997t0 = context;
        textDrawableHelper.getTextPaint().density = context.getResources().getDisplayMetrics().density;
        textDrawableHelper.getTextPaint().setTextAlign(Paint.Align.CENTER);
    }

    @NonNull
    public static TooltipDrawable create(@NonNull Context context) {
        return createFromAttributes(context, null, f32985L0, f32984K0);
    }

    @NonNull
    public static TooltipDrawable createFromAttributes(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TooltipDrawable tooltipDrawable = new TooltipDrawable(context, attributeSet, i, i2);
        tooltipDrawable.m25496F(attributeSet, i, i2);
        return tooltipDrawable;
    }

    /* renamed from: A */
    public final float m25491A() {
        this.f32999v0.getTextPaint().getFontMetrics(this.f32998u0);
        Paint.FontMetrics fontMetrics = this.f32998u0;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    /* renamed from: B */
    public final float m25492B(@NonNull Rect rect) {
        return rect.centerY() - m25491A();
    }

    /* renamed from: C */
    public final EdgeTreatment m25493C() {
        float f = -m25498z();
        float width = ((float) (getBounds().width() - (this.f32989D0 * Math.sqrt(2.0d)))) / 2.0f;
        return new OffsetEdgeTreatment(new MarkerEdgeTreatment(this.f32989D0), Math.min(Math.max(f, -width), width));
    }

    /* renamed from: D */
    public final void m25494D(@NonNull Canvas canvas) {
        if (this.f32996q0 == null) {
            return;
        }
        int m25492B = (int) m25492B(getBounds());
        if (this.f32999v0.getTextAppearance() != null) {
            this.f32999v0.getTextPaint().drawableState = getState();
            this.f32999v0.updateTextPaintDrawState(this.f32997t0);
            this.f32999v0.getTextPaint().setAlpha((int) (this.f32995J0 * 255.0f));
        }
        CharSequence charSequence = this.f32996q0;
        canvas.drawText(charSequence, 0, charSequence.length(), r0.centerX(), m25492B, this.f32999v0.getTextPaint());
    }

    /* renamed from: E */
    public final float m25495E() {
        CharSequence charSequence = this.f32996q0;
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f32999v0.getTextWidth(charSequence.toString());
    }

    /* renamed from: F */
    public final void m25496F(@Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(this.f32997t0, attributeSet, C5139R.styleable.Tooltip, i, i2, new int[0]);
        this.f32989D0 = this.f32997t0.getResources().getDimensionPixelSize(C5139R.dimen.mtrl_tooltip_arrowSize);
        boolean z = obtainStyledAttributes.getBoolean(C5139R.styleable.Tooltip_showMarker, true);
        this.f32988C0 = z;
        if (z) {
            setShapeAppearanceModel(getShapeAppearanceModel().toBuilder().setBottomEdge(m25493C()).build());
        } else {
            this.f32989D0 = 0;
        }
        setText(obtainStyledAttributes.getText(C5139R.styleable.Tooltip_android_text));
        TextAppearance textAppearance = MaterialResources.getTextAppearance(this.f32997t0, obtainStyledAttributes, C5139R.styleable.Tooltip_android_textAppearance);
        if (textAppearance != null && obtainStyledAttributes.hasValue(C5139R.styleable.Tooltip_android_textColor)) {
            textAppearance.setTextColor(MaterialResources.getColorStateList(this.f32997t0, obtainStyledAttributes, C5139R.styleable.Tooltip_android_textColor));
        }
        setTextAppearance(textAppearance);
        setFillColor(ColorStateList.valueOf(obtainStyledAttributes.getColor(C5139R.styleable.Tooltip_backgroundTint, MaterialColors.layer(ColorUtils.setAlphaComponent(MaterialColors.getColor(this.f32997t0, R.attr.colorBackground, TooltipDrawable.class.getCanonicalName()), 229), ColorUtils.setAlphaComponent(MaterialColors.getColor(this.f32997t0, C5139R.attr.colorOnBackground, TooltipDrawable.class.getCanonicalName()), 153)))));
        setStrokeColor(ColorStateList.valueOf(MaterialColors.getColor(this.f32997t0, C5139R.attr.colorSurface, TooltipDrawable.class.getCanonicalName())));
        this.f33002y0 = obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Tooltip_android_padding, 0);
        this.f33003z0 = obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Tooltip_android_minWidth, 0);
        this.f32986A0 = obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Tooltip_android_minHeight, 0);
        this.f32987B0 = obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Tooltip_android_layout_margin, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: G */
    public final void m25497G(@NonNull View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.f32990E0 = iArr[0];
        view.getWindowVisibleDisplayFrame(this.f33001x0);
    }

    public void detachView(@Nullable View view) {
        if (view == null) {
            return;
        }
        view.removeOnLayoutChangeListener(this.f33000w0);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        canvas.save();
        float m25498z = m25498z();
        float f = (float) (-((this.f32989D0 * Math.sqrt(2.0d)) - this.f32989D0));
        canvas.scale(this.f32991F0, this.f32992G0, getBounds().left + (getBounds().width() * 0.5f), getBounds().top + (getBounds().height() * this.f32994I0));
        canvas.translate(m25498z, f);
        super.draw(canvas);
        m25494D(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.f32999v0.getTextPaint().getTextSize(), this.f32986A0);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) Math.max((this.f33002y0 * 2) + m25495E(), this.f33003z0);
    }

    public int getLayoutMargin() {
        return this.f32987B0;
    }

    public int getMinHeight() {
        return this.f32986A0;
    }

    public int getMinWidth() {
        return this.f33003z0;
    }

    @Nullable
    public CharSequence getText() {
        return this.f32996q0;
    }

    @Nullable
    public TextAppearance getTextAppearance() {
        return this.f32999v0.getTextAppearance();
    }

    public int getTextPadding() {
        return this.f33002y0;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.f32988C0) {
            setShapeAppearanceModel(getShapeAppearanceModel().toBuilder().setBottomEdge(m25493C()).build());
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public void onTextSizeChange() {
        invalidateSelf();
    }

    public void setLayoutMargin(@Px int i) {
        this.f32987B0 = i;
        invalidateSelf();
    }

    public void setMinHeight(@Px int i) {
        this.f32986A0 = i;
        invalidateSelf();
    }

    public void setMinWidth(@Px int i) {
        this.f33003z0 = i;
        invalidateSelf();
    }

    public void setRelativeToView(@Nullable View view) {
        if (view == null) {
            return;
        }
        m25497G(view);
        view.addOnLayoutChangeListener(this.f33000w0);
    }

    public void setRevealFraction(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        this.f32994I0 = 1.2f;
        this.f32991F0 = f;
        this.f32992G0 = f;
        this.f32995J0 = AnimationUtils.lerp(0.0f, 1.0f, 0.19f, 1.0f, f);
        invalidateSelf();
    }

    public void setText(@Nullable CharSequence charSequence) {
        if (TextUtils.equals(this.f32996q0, charSequence)) {
            return;
        }
        this.f32996q0 = charSequence;
        this.f32999v0.setTextWidthDirty(true);
        invalidateSelf();
    }

    public void setTextAppearance(@Nullable TextAppearance textAppearance) {
        this.f32999v0.setTextAppearance(textAppearance, this.f32997t0);
    }

    public void setTextAppearanceResource(@StyleRes int i) {
        setTextAppearance(new TextAppearance(this.f32997t0, i));
    }

    public void setTextPadding(@Px int i) {
        this.f33002y0 = i;
        invalidateSelf();
    }

    public void setTextResource(@StringRes int i) {
        setText(this.f32997t0.getResources().getString(i));
    }

    /* renamed from: z */
    public final float m25498z() {
        int i;
        if (((this.f33001x0.right - getBounds().right) - this.f32990E0) - this.f32987B0 < 0) {
            i = ((this.f33001x0.right - getBounds().right) - this.f32990E0) - this.f32987B0;
        } else {
            if (((this.f33001x0.left - getBounds().left) - this.f32990E0) + this.f32987B0 <= 0) {
                return 0.0f;
            }
            i = ((this.f33001x0.left - getBounds().left) - this.f32990E0) + this.f32987B0;
        }
        return i;
    }

    @NonNull
    public static TooltipDrawable createFromAttributes(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        return createFromAttributes(context, attributeSet, f32985L0, f32984K0);
    }
}
