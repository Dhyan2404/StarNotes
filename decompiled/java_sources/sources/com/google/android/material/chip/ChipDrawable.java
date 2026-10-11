package com.google.android.material.chip;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.AnimatorRes;
import androidx.annotation.AttrRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.XmlRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.text.BidiFormatter;
import com.google.android.material.C5139R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* loaded from: classes6.dex */
public class ChipDrawable extends MaterialShapeDrawable implements TintAwareDrawable, Drawable.Callback, TextDrawableHelper.TextDrawableDelegate {

    /* renamed from: C1 */
    public static final boolean f30759C1 = false;

    /* renamed from: E1 */
    public static final String f30761E1 = "http://schemas.android.com/apk/res-auto";

    /* renamed from: F1 */
    public static final int f30762F1 = 24;

    /* renamed from: A0 */
    public boolean f30764A0;

    /* renamed from: A1 */
    public int f30765A1;

    /* renamed from: B0 */
    @Nullable
    public Drawable f30766B0;

    /* renamed from: B1 */
    public boolean f30767B1;

    /* renamed from: C0 */
    @Nullable
    public ColorStateList f30768C0;

    /* renamed from: D0 */
    public float f30769D0;

    /* renamed from: E0 */
    public boolean f30770E0;

    /* renamed from: F0 */
    public boolean f30771F0;

    /* renamed from: G0 */
    @Nullable
    public Drawable f30772G0;

    /* renamed from: H0 */
    @Nullable
    public Drawable f30773H0;

    /* renamed from: I0 */
    @Nullable
    public ColorStateList f30774I0;

    /* renamed from: J0 */
    public float f30775J0;

    /* renamed from: K0 */
    @Nullable
    public CharSequence f30776K0;

    /* renamed from: L0 */
    public boolean f30777L0;

    /* renamed from: M0 */
    public boolean f30778M0;

    /* renamed from: N0 */
    @Nullable
    public Drawable f30779N0;

    /* renamed from: O0 */
    @Nullable
    public ColorStateList f30780O0;

    /* renamed from: P0 */
    @Nullable
    public MotionSpec f30781P0;

    /* renamed from: Q0 */
    @Nullable
    public MotionSpec f30782Q0;

    /* renamed from: R0 */
    public float f30783R0;

    /* renamed from: S0 */
    public float f30784S0;

    /* renamed from: T0 */
    public float f30785T0;

    /* renamed from: U0 */
    public float f30786U0;

    /* renamed from: V0 */
    public float f30787V0;

    /* renamed from: W0 */
    public float f30788W0;

    /* renamed from: X0 */
    public float f30789X0;

    /* renamed from: Y0 */
    public float f30790Y0;

    /* renamed from: Z0 */
    @NonNull
    public final Context f30791Z0;

    /* renamed from: a1 */
    public final Paint f30792a1;

    /* renamed from: b1 */
    @Nullable
    public final Paint f30793b1;

    /* renamed from: c1 */
    public final Paint.FontMetrics f30794c1;

    /* renamed from: d1 */
    public final RectF f30795d1;

    /* renamed from: e1 */
    public final PointF f30796e1;

    /* renamed from: f1 */
    public final Path f30797f1;

    /* renamed from: g1 */
    @NonNull
    public final TextDrawableHelper f30798g1;

    /* renamed from: h1 */
    @ColorInt
    public int f30799h1;

    /* renamed from: i1 */
    @ColorInt
    public int f30800i1;

    /* renamed from: j1 */
    @ColorInt
    public int f30801j1;

    /* renamed from: k1 */
    @ColorInt
    public int f30802k1;

    /* renamed from: l1 */
    @ColorInt
    public int f30803l1;

    /* renamed from: m1 */
    @ColorInt
    public int f30804m1;

    /* renamed from: n1 */
    public boolean f30805n1;

    /* renamed from: o1 */
    @ColorInt
    public int f30806o1;

    /* renamed from: p1 */
    public int f30807p1;

    /* renamed from: q0 */
    @Nullable
    public ColorStateList f30808q0;

    /* renamed from: q1 */
    @Nullable
    public ColorFilter f30809q1;

    /* renamed from: r1 */
    @Nullable
    public PorterDuffColorFilter f30810r1;

    /* renamed from: s1 */
    @Nullable
    public ColorStateList f30811s1;

    /* renamed from: t0 */
    @Nullable
    public ColorStateList f30812t0;

    /* renamed from: t1 */
    @Nullable
    public PorterDuff.Mode f30813t1;

    /* renamed from: u0 */
    public float f30814u0;

    /* renamed from: u1 */
    public int[] f30815u1;

    /* renamed from: v0 */
    public float f30816v0;

    /* renamed from: v1 */
    public boolean f30817v1;

    /* renamed from: w0 */
    @Nullable
    public ColorStateList f30818w0;

    /* renamed from: w1 */
    @Nullable
    public ColorStateList f30819w1;

    /* renamed from: x0 */
    public float f30820x0;

    /* renamed from: x1 */
    @NonNull
    public WeakReference<Delegate> f30821x1;

    /* renamed from: y0 */
    @Nullable
    public ColorStateList f30822y0;

    /* renamed from: y1 */
    public TextUtils.TruncateAt f30823y1;

    /* renamed from: z0 */
    @Nullable
    public CharSequence f30824z0;

    /* renamed from: z1 */
    public boolean f30825z1;

    /* renamed from: D1 */
    public static final int[] f30760D1 = {R.attr.state_enabled};

    /* renamed from: G1 */
    public static final ShapeDrawable f30763G1 = new ShapeDrawable(new OvalShape());

    /* loaded from: classes6.dex */
    public interface Delegate {
        void onChipDrawableSizeChange();
    }

    public ChipDrawable(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        this.f30816v0 = -1.0f;
        this.f30792a1 = new Paint(1);
        this.f30794c1 = new Paint.FontMetrics();
        this.f30795d1 = new RectF();
        this.f30796e1 = new PointF();
        this.f30797f1 = new Path();
        this.f30807p1 = 255;
        this.f30813t1 = PorterDuff.Mode.SRC_IN;
        this.f30821x1 = new WeakReference<>(null);
        initializeElevationOverlay(context);
        this.f30791Z0 = context;
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.f30798g1 = textDrawableHelper;
        this.f30824z0 = "";
        textDrawableHelper.getTextPaint().density = context.getResources().getDisplayMetrics().density;
        this.f30793b1 = null;
        int[] iArr = f30760D1;
        setState(iArr);
        setCloseIconState(iArr);
        this.f30825z1 = true;
        if (RippleUtils.USE_FRAMEWORK_RIPPLE) {
            f30763G1.setTint(-1);
        }
    }

    /* renamed from: V */
    public static boolean m23452V(@Nullable int[] iArr, @AttrRes int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: X */
    public static boolean m23453X(@Nullable ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    /* renamed from: Y */
    public static boolean m23454Y(@Nullable Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* renamed from: Z */
    public static boolean m23455Z(@Nullable TextAppearance textAppearance) {
        return (textAppearance == null || textAppearance.getTextColor() == null || !textAppearance.getTextColor().isStateful()) ? false : true;
    }

    @NonNull
    public static ChipDrawable createFromAttributes(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        ChipDrawable chipDrawable = new ChipDrawable(context, attributeSet, i, i2);
        chipDrawable.m23478a0(attributeSet, i, i2);
        return chipDrawable;
    }

    @NonNull
    public static ChipDrawable createFromResource(@NonNull Context context, @XmlRes int i) {
        AttributeSet parseDrawableXml = DrawableUtils.parseDrawableXml(context, i, "chip");
        int styleAttribute = parseDrawableXml.getStyleAttribute();
        if (styleAttribute == 0) {
            styleAttribute = C5139R.style.Widget_MaterialComponents_Chip_Entry;
        }
        return createFromAttributes(context, parseDrawableXml, C5139R.attr.chipStandaloneStyle, styleAttribute);
    }

    /* renamed from: A */
    public float m23456A() {
        if (m23484g0() || m23483f0()) {
            return this.f30784S0 + m23475T() + this.f30785T0;
        }
        return 0.0f;
    }

    /* renamed from: B */
    public final void m23457B(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.set(rect);
        if (m23485h0()) {
            float f = this.f30790Y0 + this.f30789X0 + this.f30775J0 + this.f30788W0 + this.f30787V0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = rect.right - f;
            } else {
                rectF.left = rect.left + f;
            }
        }
    }

    /* renamed from: C */
    public final void m23458C(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (m23485h0()) {
            float f = this.f30790Y0 + this.f30789X0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f2 = rect.right - f;
                rectF.right = f2;
                rectF.left = f2 - this.f30775J0;
            } else {
                float f3 = rect.left + f;
                rectF.left = f3;
                rectF.right = f3 + this.f30775J0;
            }
            float exactCenterY = rect.exactCenterY();
            float f4 = this.f30775J0;
            float f5 = exactCenterY - (f4 / 2.0f);
            rectF.top = f5;
            rectF.bottom = f5 + f4;
        }
    }

    /* renamed from: D */
    public final void m23459D(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (m23485h0()) {
            float f = this.f30790Y0 + this.f30789X0 + this.f30775J0 + this.f30788W0 + this.f30787V0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f2 = rect.right;
                rectF.right = f2;
                rectF.left = f2 - f;
            } else {
                int i = rect.left;
                rectF.left = i;
                rectF.right = i + f;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    /* renamed from: E */
    public float m23460E() {
        if (m23485h0()) {
            return this.f30788W0 + this.f30775J0 + this.f30789X0;
        }
        return 0.0f;
    }

    /* renamed from: F */
    public final void m23461F(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (this.f30824z0 != null) {
            float m23456A = this.f30783R0 + m23456A() + this.f30786U0;
            float m23460E = this.f30790Y0 + m23460E() + this.f30787V0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.left = rect.left + m23456A;
                rectF.right = rect.right - m23460E;
            } else {
                rectF.left = rect.left + m23460E;
                rectF.right = rect.right - m23456A;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    /* renamed from: G */
    public final float m23462G() {
        this.f30798g1.getTextPaint().getFontMetrics(this.f30794c1);
        Paint.FontMetrics fontMetrics = this.f30794c1;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    @NonNull
    /* renamed from: H */
    public Paint.Align m23463H(@NonNull Rect rect, @NonNull PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.f30824z0 != null) {
            float m23456A = this.f30783R0 + m23456A() + this.f30786U0;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                pointF.x = rect.left + m23456A;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - m23456A;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - m23462G();
        }
        return align;
    }

    /* renamed from: I */
    public final boolean m23464I() {
        return this.f30778M0 && this.f30779N0 != null && this.f30777L0;
    }

    /* renamed from: J */
    public final void m23465J(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (m23483f0()) {
            m23490z(rect, this.f30795d1);
            RectF rectF = this.f30795d1;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f30779N0.setBounds(0, 0, (int) this.f30795d1.width(), (int) this.f30795d1.height());
            this.f30779N0.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    /* renamed from: K */
    public final void m23466K(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f30767B1) {
            return;
        }
        this.f30792a1.setColor(this.f30800i1);
        this.f30792a1.setStyle(Paint.Style.FILL);
        this.f30792a1.setColorFilter(m23476U());
        this.f30795d1.set(rect);
        canvas.drawRoundRect(this.f30795d1, getChipCornerRadius(), getChipCornerRadius(), this.f30792a1);
    }

    /* renamed from: L */
    public final void m23467L(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (m23484g0()) {
            m23490z(rect, this.f30795d1);
            RectF rectF = this.f30795d1;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f30766B0.setBounds(0, 0, (int) this.f30795d1.width(), (int) this.f30795d1.height());
            this.f30766B0.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    /* renamed from: M */
    public final void m23468M(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f30820x0 <= 0.0f || this.f30767B1) {
            return;
        }
        this.f30792a1.setColor(this.f30802k1);
        this.f30792a1.setStyle(Paint.Style.STROKE);
        if (!this.f30767B1) {
            this.f30792a1.setColorFilter(m23476U());
        }
        RectF rectF = this.f30795d1;
        float f = rect.left;
        float f2 = this.f30820x0;
        rectF.set(f + (f2 / 2.0f), rect.top + (f2 / 2.0f), rect.right - (f2 / 2.0f), rect.bottom - (f2 / 2.0f));
        float f3 = this.f30816v0 - (this.f30820x0 / 2.0f);
        canvas.drawRoundRect(this.f30795d1, f3, f3, this.f30792a1);
    }

    /* renamed from: N */
    public final void m23469N(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f30767B1) {
            return;
        }
        this.f30792a1.setColor(this.f30799h1);
        this.f30792a1.setStyle(Paint.Style.FILL);
        this.f30795d1.set(rect);
        canvas.drawRoundRect(this.f30795d1, getChipCornerRadius(), getChipCornerRadius(), this.f30792a1);
    }

    /* renamed from: O */
    public final void m23470O(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (m23485h0()) {
            m23458C(rect, this.f30795d1);
            RectF rectF = this.f30795d1;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f30772G0.setBounds(0, 0, (int) this.f30795d1.width(), (int) this.f30795d1.height());
            if (RippleUtils.USE_FRAMEWORK_RIPPLE) {
                this.f30773H0.setBounds(this.f30772G0.getBounds());
                this.f30773H0.jumpToCurrentState();
                this.f30773H0.draw(canvas);
            } else {
                this.f30772G0.draw(canvas);
            }
            canvas.translate(-f, -f2);
        }
    }

    /* renamed from: P */
    public final void m23471P(@NonNull Canvas canvas, @NonNull Rect rect) {
        this.f30792a1.setColor(this.f30803l1);
        this.f30792a1.setStyle(Paint.Style.FILL);
        this.f30795d1.set(rect);
        if (!this.f30767B1) {
            canvas.drawRoundRect(this.f30795d1, getChipCornerRadius(), getChipCornerRadius(), this.f30792a1);
        } else {
            calculatePathForSize(new RectF(rect), this.f30797f1);
            super.drawShape(canvas, this.f30792a1, this.f30797f1, getBoundsAsRectF());
        }
    }

    /* renamed from: Q */
    public final void m23472Q(@NonNull Canvas canvas, @NonNull Rect rect) {
        Paint paint = this.f30793b1;
        if (paint != null) {
            paint.setColor(ColorUtils.setAlphaComponent(-16777216, 127));
            canvas.drawRect(rect, this.f30793b1);
            if (m23484g0() || m23483f0()) {
                m23490z(rect, this.f30795d1);
                canvas.drawRect(this.f30795d1, this.f30793b1);
            }
            if (this.f30824z0 != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.f30793b1);
            }
            if (m23485h0()) {
                m23458C(rect, this.f30795d1);
                canvas.drawRect(this.f30795d1, this.f30793b1);
            }
            this.f30793b1.setColor(ColorUtils.setAlphaComponent(-65536, 127));
            m23457B(rect, this.f30795d1);
            canvas.drawRect(this.f30795d1, this.f30793b1);
            this.f30793b1.setColor(ColorUtils.setAlphaComponent(-16711936, 127));
            m23459D(rect, this.f30795d1);
            canvas.drawRect(this.f30795d1, this.f30793b1);
        }
    }

    /* renamed from: R */
    public final void m23473R(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f30824z0 != null) {
            Paint.Align m23463H = m23463H(rect, this.f30796e1);
            m23461F(rect, this.f30795d1);
            if (this.f30798g1.getTextAppearance() != null) {
                this.f30798g1.getTextPaint().drawableState = getState();
                this.f30798g1.updateTextPaintDrawState(this.f30791Z0);
            }
            this.f30798g1.getTextPaint().setTextAlign(m23463H);
            int i = 0;
            boolean z = Math.round(this.f30798g1.getTextWidth(getText().toString())) > Math.round(this.f30795d1.width());
            if (z) {
                i = canvas.save();
                canvas.clipRect(this.f30795d1);
            }
            CharSequence charSequence = this.f30824z0;
            if (z && this.f30823y1 != null) {
                charSequence = TextUtils.ellipsize(charSequence, this.f30798g1.getTextPaint(), this.f30795d1.width(), this.f30823y1);
            }
            CharSequence charSequence2 = charSequence;
            int length = charSequence2.length();
            PointF pointF = this.f30796e1;
            canvas.drawText(charSequence2, 0, length, pointF.x, pointF.y, this.f30798g1.getTextPaint());
            if (z) {
                canvas.restoreToCount(i);
            }
        }
    }

    /* renamed from: S */
    public final float m23474S() {
        Drawable drawable = this.f30805n1 ? this.f30779N0 : this.f30766B0;
        float f = this.f30769D0;
        if (f > 0.0f || drawable == null) {
            return f;
        }
        float ceil = (float) Math.ceil(ViewUtils.dpToPx(this.f30791Z0, 24));
        return ((float) drawable.getIntrinsicHeight()) <= ceil ? drawable.getIntrinsicHeight() : ceil;
    }

    /* renamed from: T */
    public final float m23475T() {
        Drawable drawable = this.f30805n1 ? this.f30779N0 : this.f30766B0;
        float f = this.f30769D0;
        return (f > 0.0f || drawable == null) ? f : drawable.getIntrinsicWidth();
    }

    @Nullable
    /* renamed from: U */
    public final ColorFilter m23476U() {
        ColorFilter colorFilter = this.f30809q1;
        return colorFilter != null ? colorFilter : this.f30810r1;
    }

    /* renamed from: W */
    public boolean m23477W() {
        return this.f30767B1;
    }

    /* renamed from: a0 */
    public final void m23478a0(@Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(this.f30791Z0, attributeSet, C5139R.styleable.Chip, i, i2, new int[0]);
        this.f30767B1 = obtainStyledAttributes.hasValue(C5139R.styleable.Chip_shapeAppearance);
        m23480c0(MaterialResources.getColorStateList(this.f30791Z0, obtainStyledAttributes, C5139R.styleable.Chip_chipSurfaceColor));
        setChipBackgroundColor(MaterialResources.getColorStateList(this.f30791Z0, obtainStyledAttributes, C5139R.styleable.Chip_chipBackgroundColor));
        setChipMinHeight(obtainStyledAttributes.getDimension(C5139R.styleable.Chip_chipMinHeight, 0.0f));
        if (obtainStyledAttributes.hasValue(C5139R.styleable.Chip_chipCornerRadius)) {
            setChipCornerRadius(obtainStyledAttributes.getDimension(C5139R.styleable.Chip_chipCornerRadius, 0.0f));
        }
        setChipStrokeColor(MaterialResources.getColorStateList(this.f30791Z0, obtainStyledAttributes, C5139R.styleable.Chip_chipStrokeColor));
        setChipStrokeWidth(obtainStyledAttributes.getDimension(C5139R.styleable.Chip_chipStrokeWidth, 0.0f));
        setRippleColor(MaterialResources.getColorStateList(this.f30791Z0, obtainStyledAttributes, C5139R.styleable.Chip_rippleColor));
        setText(obtainStyledAttributes.getText(C5139R.styleable.Chip_android_text));
        TextAppearance textAppearance = MaterialResources.getTextAppearance(this.f30791Z0, obtainStyledAttributes, C5139R.styleable.Chip_android_textAppearance);
        textAppearance.setTextSize(obtainStyledAttributes.getDimension(C5139R.styleable.Chip_android_textSize, textAppearance.getTextSize()));
        setTextAppearance(textAppearance);
        int i3 = obtainStyledAttributes.getInt(C5139R.styleable.Chip_android_ellipsize, 0);
        if (i3 == 1) {
            setEllipsize(TextUtils.TruncateAt.START);
        } else if (i3 == 2) {
            setEllipsize(TextUtils.TruncateAt.MIDDLE);
        } else if (i3 == 3) {
            setEllipsize(TextUtils.TruncateAt.END);
        }
        setChipIconVisible(obtainStyledAttributes.getBoolean(C5139R.styleable.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            setChipIconVisible(obtainStyledAttributes.getBoolean(C5139R.styleable.Chip_chipIconEnabled, false));
        }
        setChipIcon(MaterialResources.getDrawable(this.f30791Z0, obtainStyledAttributes, C5139R.styleable.Chip_chipIcon));
        if (obtainStyledAttributes.hasValue(C5139R.styleable.Chip_chipIconTint)) {
            setChipIconTint(MaterialResources.getColorStateList(this.f30791Z0, obtainStyledAttributes, C5139R.styleable.Chip_chipIconTint));
        }
        setChipIconSize(obtainStyledAttributes.getDimension(C5139R.styleable.Chip_chipIconSize, -1.0f));
        setCloseIconVisible(obtainStyledAttributes.getBoolean(C5139R.styleable.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            setCloseIconVisible(obtainStyledAttributes.getBoolean(C5139R.styleable.Chip_closeIconEnabled, false));
        }
        setCloseIcon(MaterialResources.getDrawable(this.f30791Z0, obtainStyledAttributes, C5139R.styleable.Chip_closeIcon));
        setCloseIconTint(MaterialResources.getColorStateList(this.f30791Z0, obtainStyledAttributes, C5139R.styleable.Chip_closeIconTint));
        setCloseIconSize(obtainStyledAttributes.getDimension(C5139R.styleable.Chip_closeIconSize, 0.0f));
        setCheckable(obtainStyledAttributes.getBoolean(C5139R.styleable.Chip_android_checkable, false));
        setCheckedIconVisible(obtainStyledAttributes.getBoolean(C5139R.styleable.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            setCheckedIconVisible(obtainStyledAttributes.getBoolean(C5139R.styleable.Chip_checkedIconEnabled, false));
        }
        setCheckedIcon(MaterialResources.getDrawable(this.f30791Z0, obtainStyledAttributes, C5139R.styleable.Chip_checkedIcon));
        if (obtainStyledAttributes.hasValue(C5139R.styleable.Chip_checkedIconTint)) {
            setCheckedIconTint(MaterialResources.getColorStateList(this.f30791Z0, obtainStyledAttributes, C5139R.styleable.Chip_checkedIconTint));
        }
        setShowMotionSpec(MotionSpec.createFromAttribute(this.f30791Z0, obtainStyledAttributes, C5139R.styleable.Chip_showMotionSpec));
        setHideMotionSpec(MotionSpec.createFromAttribute(this.f30791Z0, obtainStyledAttributes, C5139R.styleable.Chip_hideMotionSpec));
        setChipStartPadding(obtainStyledAttributes.getDimension(C5139R.styleable.Chip_chipStartPadding, 0.0f));
        setIconStartPadding(obtainStyledAttributes.getDimension(C5139R.styleable.Chip_iconStartPadding, 0.0f));
        setIconEndPadding(obtainStyledAttributes.getDimension(C5139R.styleable.Chip_iconEndPadding, 0.0f));
        setTextStartPadding(obtainStyledAttributes.getDimension(C5139R.styleable.Chip_textStartPadding, 0.0f));
        setTextEndPadding(obtainStyledAttributes.getDimension(C5139R.styleable.Chip_textEndPadding, 0.0f));
        setCloseIconStartPadding(obtainStyledAttributes.getDimension(C5139R.styleable.Chip_closeIconStartPadding, 0.0f));
        setCloseIconEndPadding(obtainStyledAttributes.getDimension(C5139R.styleable.Chip_closeIconEndPadding, 0.0f));
        setChipEndPadding(obtainStyledAttributes.getDimension(C5139R.styleable.Chip_chipEndPadding, 0.0f));
        setMaxWidth(obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.Chip_android_maxWidth, Integer.MAX_VALUE));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b0 */
    public final boolean m23479b0(@NonNull int[] iArr, @NonNull int[] iArr2) {
        boolean z;
        boolean onStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList = this.f30808q0;
        int compositeElevationOverlayIfNeeded = compositeElevationOverlayIfNeeded(colorStateList != null ? colorStateList.getColorForState(iArr, this.f30799h1) : 0);
        boolean z2 = true;
        if (this.f30799h1 != compositeElevationOverlayIfNeeded) {
            this.f30799h1 = compositeElevationOverlayIfNeeded;
            onStateChange = true;
        }
        ColorStateList colorStateList2 = this.f30812t0;
        int compositeElevationOverlayIfNeeded2 = compositeElevationOverlayIfNeeded(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f30800i1) : 0);
        if (this.f30800i1 != compositeElevationOverlayIfNeeded2) {
            this.f30800i1 = compositeElevationOverlayIfNeeded2;
            onStateChange = true;
        }
        int layer = MaterialColors.layer(compositeElevationOverlayIfNeeded, compositeElevationOverlayIfNeeded2);
        if ((this.f30801j1 != layer) | (getFillColor() == null)) {
            this.f30801j1 = layer;
            setFillColor(ColorStateList.valueOf(layer));
            onStateChange = true;
        }
        ColorStateList colorStateList3 = this.f30818w0;
        int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f30802k1) : 0;
        if (this.f30802k1 != colorForState) {
            this.f30802k1 = colorForState;
            onStateChange = true;
        }
        int colorForState2 = (this.f30819w1 == null || !RippleUtils.shouldDrawRippleCompat(iArr)) ? 0 : this.f30819w1.getColorForState(iArr, this.f30803l1);
        if (this.f30803l1 != colorForState2) {
            this.f30803l1 = colorForState2;
            if (this.f30817v1) {
                onStateChange = true;
            }
        }
        int colorForState3 = (this.f30798g1.getTextAppearance() == null || this.f30798g1.getTextAppearance().getTextColor() == null) ? 0 : this.f30798g1.getTextAppearance().getTextColor().getColorForState(iArr, this.f30804m1);
        if (this.f30804m1 != colorForState3) {
            this.f30804m1 = colorForState3;
            onStateChange = true;
        }
        boolean z3 = m23452V(getState(), R.attr.state_checked) && this.f30777L0;
        if (this.f30805n1 == z3 || this.f30779N0 == null) {
            z = false;
        } else {
            float m23456A = m23456A();
            this.f30805n1 = z3;
            if (m23456A != m23456A()) {
                onStateChange = true;
                z = true;
            } else {
                z = false;
                onStateChange = true;
            }
        }
        ColorStateList colorStateList4 = this.f30811s1;
        int colorForState4 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.f30806o1) : 0;
        if (this.f30806o1 != colorForState4) {
            this.f30806o1 = colorForState4;
            this.f30810r1 = DrawableUtils.updateTintFilter(this, this.f30811s1, this.f30813t1);
        } else {
            z2 = onStateChange;
        }
        if (m23454Y(this.f30766B0)) {
            z2 |= this.f30766B0.setState(iArr);
        }
        if (m23454Y(this.f30779N0)) {
            z2 |= this.f30779N0.setState(iArr);
        }
        if (m23454Y(this.f30772G0)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            z2 |= this.f30772G0.setState(iArr3);
        }
        if (RippleUtils.USE_FRAMEWORK_RIPPLE && m23454Y(this.f30773H0)) {
            z2 |= this.f30773H0.setState(iArr2);
        }
        if (z2) {
            invalidateSelf();
        }
        if (z) {
            onSizeChange();
        }
        return z2;
    }

    /* renamed from: c0 */
    public final void m23480c0(@Nullable ColorStateList colorStateList) {
        if (this.f30808q0 != colorStateList) {
            this.f30808q0 = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: d0 */
    public void m23481d0(boolean z) {
        this.f30825z1 = z;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i = this.f30807p1;
        int saveLayerAlpha = i < 255 ? CanvasCompat.saveLayerAlpha(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i) : 0;
        m23469N(canvas, bounds);
        m23466K(canvas, bounds);
        if (this.f30767B1) {
            super.draw(canvas);
        }
        m23468M(canvas, bounds);
        m23471P(canvas, bounds);
        m23467L(canvas, bounds);
        m23465J(canvas, bounds);
        if (this.f30825z1) {
            m23473R(canvas, bounds);
        }
        m23470O(canvas, bounds);
        m23472Q(canvas, bounds);
        if (this.f30807p1 < 255) {
            canvas.restoreToCount(saveLayerAlpha);
        }
    }

    /* renamed from: e0 */
    public boolean m23482e0() {
        return this.f30825z1;
    }

    /* renamed from: f0 */
    public final boolean m23483f0() {
        return this.f30778M0 && this.f30779N0 != null && this.f30805n1;
    }

    /* renamed from: g0 */
    public final boolean m23484g0() {
        return this.f30764A0 && this.f30766B0 != null;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f30807p1;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.f30779N0;
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.f30780O0;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        return this.f30812t0;
    }

    public float getChipCornerRadius() {
        return this.f30767B1 ? getTopLeftCornerResolvedSize() : this.f30816v0;
    }

    public float getChipEndPadding() {
        return this.f30790Y0;
    }

    @Nullable
    public Drawable getChipIcon() {
        Drawable drawable = this.f30766B0;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    public float getChipIconSize() {
        return this.f30769D0;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        return this.f30768C0;
    }

    public float getChipMinHeight() {
        return this.f30814u0;
    }

    public float getChipStartPadding() {
        return this.f30783R0;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        return this.f30818w0;
    }

    public float getChipStrokeWidth() {
        return this.f30820x0;
    }

    public void getChipTouchBounds(@NonNull RectF rectF) {
        m23457B(getBounds(), rectF);
    }

    @Nullable
    public Drawable getCloseIcon() {
        Drawable drawable = this.f30772G0;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        return this.f30776K0;
    }

    public float getCloseIconEndPadding() {
        return this.f30789X0;
    }

    public float getCloseIconSize() {
        return this.f30775J0;
    }

    public float getCloseIconStartPadding() {
        return this.f30788W0;
    }

    @NonNull
    public int[] getCloseIconState() {
        return this.f30815u1;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        return this.f30774I0;
    }

    public void getCloseIconTouchBounds(@NonNull RectF rectF) {
        m23459D(getBounds(), rectF);
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.f30809q1;
    }

    public TextUtils.TruncateAt getEllipsize() {
        return this.f30823y1;
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        return this.f30782Q0;
    }

    public float getIconEndPadding() {
        return this.f30785T0;
    }

    public float getIconStartPadding() {
        return this.f30784S0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f30814u0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.f30783R0 + m23456A() + this.f30786U0 + this.f30798g1.getTextWidth(getText().toString()) + this.f30787V0 + m23460E() + this.f30790Y0), this.f30765A1);
    }

    @Px
    public int getMaxWidth() {
        return this.f30765A1;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f30767B1) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.f30816v0);
        } else {
            outline.setRoundRect(bounds, this.f30816v0);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    @Nullable
    public ColorStateList getRippleColor() {
        return this.f30822y0;
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        return this.f30781P0;
    }

    @Nullable
    public CharSequence getText() {
        return this.f30824z0;
    }

    @Nullable
    public TextAppearance getTextAppearance() {
        return this.f30798g1.getTextAppearance();
    }

    public float getTextEndPadding() {
        return this.f30787V0;
    }

    public float getTextStartPadding() {
        return this.f30786U0;
    }

    public boolean getUseCompatRipple() {
        return this.f30817v1;
    }

    /* renamed from: h0 */
    public final boolean m23485h0() {
        return this.f30771F0 && this.f30772G0 != null;
    }

    /* renamed from: i0 */
    public final void m23486i0(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public boolean isCheckable() {
        return this.f30777L0;
    }

    @Deprecated
    public boolean isCheckedIconEnabled() {
        return isCheckedIconVisible();
    }

    public boolean isCheckedIconVisible() {
        return this.f30778M0;
    }

    @Deprecated
    public boolean isChipIconEnabled() {
        return isChipIconVisible();
    }

    public boolean isChipIconVisible() {
        return this.f30764A0;
    }

    @Deprecated
    public boolean isCloseIconEnabled() {
        return isCloseIconVisible();
    }

    public boolean isCloseIconStateful() {
        return m23454Y(this.f30772G0);
    }

    public boolean isCloseIconVisible() {
        return this.f30771F0;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return m23453X(this.f30808q0) || m23453X(this.f30812t0) || m23453X(this.f30818w0) || (this.f30817v1 && m23453X(this.f30819w1)) || m23455Z(this.f30798g1.getTextAppearance()) || m23464I() || m23454Y(this.f30766B0) || m23454Y(this.f30779N0) || m23453X(this.f30811s1);
    }

    /* renamed from: j0 */
    public final void m23487j0() {
        this.f30819w1 = this.f30817v1 ? RippleUtils.sanitizeRippleDrawableColor(this.f30822y0) : null;
    }

    @TargetApi(21)
    /* renamed from: k0 */
    public final void m23488k0() {
        this.f30773H0 = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(getRippleColor()), this.f30772G0, f30763G1);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (m23484g0()) {
            onLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f30766B0, i);
        }
        if (m23483f0()) {
            onLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f30779N0, i);
        }
        if (m23485h0()) {
            onLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f30772G0, i);
        }
        if (!onLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        if (m23484g0()) {
            onLevelChange |= this.f30766B0.setLevel(i);
        }
        if (m23483f0()) {
            onLevelChange |= this.f30779N0.setLevel(i);
        }
        if (m23485h0()) {
            onLevelChange |= this.f30772G0.setLevel(i);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    public void onSizeChange() {
        Delegate delegate = this.f30821x1.get();
        if (delegate != null) {
            delegate.onChipDrawableSizeChange();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(@NonNull int[] iArr) {
        if (this.f30767B1) {
            super.onStateChange(iArr);
        }
        return m23479b0(iArr, getCloseIconState());
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public void onTextSizeChange() {
        onSizeChange();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f30807p1 != i) {
            this.f30807p1 = i;
            invalidateSelf();
        }
    }

    public void setCheckable(boolean z) {
        if (this.f30777L0 != z) {
            this.f30777L0 = z;
            float m23456A = m23456A();
            if (!z && this.f30805n1) {
                this.f30805n1 = false;
            }
            float m23456A2 = m23456A();
            invalidateSelf();
            if (m23456A != m23456A2) {
                onSizeChange();
            }
        }
    }

    public void setCheckableResource(@BoolRes int i) {
        setCheckable(this.f30791Z0.getResources().getBoolean(i));
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        if (this.f30779N0 != drawable) {
            float m23456A = m23456A();
            this.f30779N0 = drawable;
            float m23456A2 = m23456A();
            m23486i0(this.f30779N0);
            m23489y(this.f30779N0);
            invalidateSelf();
            if (m23456A != m23456A2) {
                onSizeChange();
            }
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i) {
        setCheckedIconVisible(this.f30791Z0.getResources().getBoolean(i));
    }

    public void setCheckedIconResource(@DrawableRes int i) {
        setCheckedIcon(AppCompatResources.getDrawable(this.f30791Z0, i));
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f30780O0 != colorStateList) {
            this.f30780O0 = colorStateList;
            if (m23464I()) {
                DrawableCompat.setTintList(this.f30779N0, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void setCheckedIconTintResource(@ColorRes int i) {
        setCheckedIconTint(AppCompatResources.getColorStateList(this.f30791Z0, i));
    }

    public void setCheckedIconVisible(@BoolRes int i) {
        setCheckedIconVisible(this.f30791Z0.getResources().getBoolean(i));
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        if (this.f30812t0 != colorStateList) {
            this.f30812t0 = colorStateList;
            onStateChange(getState());
        }
    }

    public void setChipBackgroundColorResource(@ColorRes int i) {
        setChipBackgroundColor(AppCompatResources.getColorStateList(this.f30791Z0, i));
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        if (this.f30816v0 != f) {
            this.f30816v0 = f;
            setShapeAppearanceModel(getShapeAppearanceModel().withCornerSize(f));
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(@DimenRes int i) {
        setChipCornerRadius(this.f30791Z0.getResources().getDimension(i));
    }

    public void setChipEndPadding(float f) {
        if (this.f30790Y0 != f) {
            this.f30790Y0 = f;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setChipEndPaddingResource(@DimenRes int i) {
        setChipEndPadding(this.f30791Z0.getResources().getDimension(i));
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        Drawable chipIcon = getChipIcon();
        if (chipIcon != drawable) {
            float m23456A = m23456A();
            this.f30766B0 = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float m23456A2 = m23456A();
            m23486i0(chipIcon);
            if (m23484g0()) {
                m23489y(this.f30766B0);
            }
            invalidateSelf();
            if (m23456A != m23456A2) {
                onSizeChange();
            }
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(@DrawableRes int i) {
        setChipIcon(AppCompatResources.getDrawable(this.f30791Z0, i));
    }

    public void setChipIconSize(float f) {
        if (this.f30769D0 != f) {
            float m23456A = m23456A();
            this.f30769D0 = f;
            float m23456A2 = m23456A();
            invalidateSelf();
            if (m23456A != m23456A2) {
                onSizeChange();
            }
        }
    }

    public void setChipIconSizeResource(@DimenRes int i) {
        setChipIconSize(this.f30791Z0.getResources().getDimension(i));
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        this.f30770E0 = true;
        if (this.f30768C0 != colorStateList) {
            this.f30768C0 = colorStateList;
            if (m23484g0()) {
                DrawableCompat.setTintList(this.f30766B0, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void setChipIconTintResource(@ColorRes int i) {
        setChipIconTint(AppCompatResources.getColorStateList(this.f30791Z0, i));
    }

    public void setChipIconVisible(@BoolRes int i) {
        setChipIconVisible(this.f30791Z0.getResources().getBoolean(i));
    }

    public void setChipMinHeight(float f) {
        if (this.f30814u0 != f) {
            this.f30814u0 = f;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setChipMinHeightResource(@DimenRes int i) {
        setChipMinHeight(this.f30791Z0.getResources().getDimension(i));
    }

    public void setChipStartPadding(float f) {
        if (this.f30783R0 != f) {
            this.f30783R0 = f;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setChipStartPaddingResource(@DimenRes int i) {
        setChipStartPadding(this.f30791Z0.getResources().getDimension(i));
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        if (this.f30818w0 != colorStateList) {
            this.f30818w0 = colorStateList;
            if (this.f30767B1) {
                setStrokeColor(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void setChipStrokeColorResource(@ColorRes int i) {
        setChipStrokeColor(AppCompatResources.getColorStateList(this.f30791Z0, i));
    }

    public void setChipStrokeWidth(float f) {
        if (this.f30820x0 != f) {
            this.f30820x0 = f;
            this.f30792a1.setStrokeWidth(f);
            if (this.f30767B1) {
                super.setStrokeWidth(f);
            }
            invalidateSelf();
        }
    }

    public void setChipStrokeWidthResource(@DimenRes int i) {
        setChipStrokeWidth(this.f30791Z0.getResources().getDimension(i));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        Drawable closeIcon = getCloseIcon();
        if (closeIcon != drawable) {
            float m23460E = m23460E();
            this.f30772G0 = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            if (RippleUtils.USE_FRAMEWORK_RIPPLE) {
                m23488k0();
            }
            float m23460E2 = m23460E();
            m23486i0(closeIcon);
            if (m23485h0()) {
                m23489y(this.f30772G0);
            }
            invalidateSelf();
            if (m23460E != m23460E2) {
                onSizeChange();
            }
        }
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        if (this.f30776K0 != charSequence) {
            this.f30776K0 = BidiFormatter.getInstance().unicodeWrap(charSequence);
            invalidateSelf();
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        if (this.f30789X0 != f) {
            this.f30789X0 = f;
            invalidateSelf();
            if (m23485h0()) {
                onSizeChange();
            }
        }
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i) {
        setCloseIconEndPadding(this.f30791Z0.getResources().getDimension(i));
    }

    public void setCloseIconResource(@DrawableRes int i) {
        setCloseIcon(AppCompatResources.getDrawable(this.f30791Z0, i));
    }

    public void setCloseIconSize(float f) {
        if (this.f30775J0 != f) {
            this.f30775J0 = f;
            invalidateSelf();
            if (m23485h0()) {
                onSizeChange();
            }
        }
    }

    public void setCloseIconSizeResource(@DimenRes int i) {
        setCloseIconSize(this.f30791Z0.getResources().getDimension(i));
    }

    public void setCloseIconStartPadding(float f) {
        if (this.f30788W0 != f) {
            this.f30788W0 = f;
            invalidateSelf();
            if (m23485h0()) {
                onSizeChange();
            }
        }
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i) {
        setCloseIconStartPadding(this.f30791Z0.getResources().getDimension(i));
    }

    public boolean setCloseIconState(@NonNull int[] iArr) {
        if (Arrays.equals(this.f30815u1, iArr)) {
            return false;
        }
        this.f30815u1 = iArr;
        if (m23485h0()) {
            return m23479b0(getState(), iArr);
        }
        return false;
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f30774I0 != colorStateList) {
            this.f30774I0 = colorStateList;
            if (m23485h0()) {
                DrawableCompat.setTintList(this.f30772G0, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void setCloseIconTintResource(@ColorRes int i) {
        setCloseIconTint(AppCompatResources.getColorStateList(this.f30791Z0, i));
    }

    public void setCloseIconVisible(@BoolRes int i) {
        setCloseIconVisible(this.f30791Z0.getResources().getBoolean(i));
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.f30809q1 != colorFilter) {
            this.f30809q1 = colorFilter;
            invalidateSelf();
        }
    }

    public void setDelegate(@Nullable Delegate delegate) {
        this.f30821x1 = new WeakReference<>(delegate);
    }

    public void setEllipsize(@Nullable TextUtils.TruncateAt truncateAt) {
        this.f30823y1 = truncateAt;
    }

    public void setHideMotionSpec(@Nullable MotionSpec motionSpec) {
        this.f30782Q0 = motionSpec;
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        setHideMotionSpec(MotionSpec.createFromResource(this.f30791Z0, i));
    }

    public void setIconEndPadding(float f) {
        if (this.f30785T0 != f) {
            float m23456A = m23456A();
            this.f30785T0 = f;
            float m23456A2 = m23456A();
            invalidateSelf();
            if (m23456A != m23456A2) {
                onSizeChange();
            }
        }
    }

    public void setIconEndPaddingResource(@DimenRes int i) {
        setIconEndPadding(this.f30791Z0.getResources().getDimension(i));
    }

    public void setIconStartPadding(float f) {
        if (this.f30784S0 != f) {
            float m23456A = m23456A();
            this.f30784S0 = f;
            float m23456A2 = m23456A();
            invalidateSelf();
            if (m23456A != m23456A2) {
                onSizeChange();
            }
        }
    }

    public void setIconStartPaddingResource(@DimenRes int i) {
        setIconStartPadding(this.f30791Z0.getResources().getDimension(i));
    }

    public void setMaxWidth(@Px int i) {
        this.f30765A1 = i;
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f30822y0 != colorStateList) {
            this.f30822y0 = colorStateList;
            m23487j0();
            onStateChange(getState());
        }
    }

    public void setRippleColorResource(@ColorRes int i) {
        setRippleColor(AppCompatResources.getColorStateList(this.f30791Z0, i));
    }

    public void setShowMotionSpec(@Nullable MotionSpec motionSpec) {
        this.f30781P0 = motionSpec;
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        setShowMotionSpec(MotionSpec.createFromResource(this.f30791Z0, i));
    }

    public void setText(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (TextUtils.equals(this.f30824z0, charSequence)) {
            return;
        }
        this.f30824z0 = charSequence;
        this.f30798g1.setTextWidthDirty(true);
        invalidateSelf();
        onSizeChange();
    }

    public void setTextAppearance(@Nullable TextAppearance textAppearance) {
        this.f30798g1.setTextAppearance(textAppearance, this.f30791Z0);
    }

    public void setTextAppearanceResource(@StyleRes int i) {
        setTextAppearance(new TextAppearance(this.f30791Z0, i));
    }

    public void setTextColor(@ColorInt int i) {
        setTextColor(ColorStateList.valueOf(i));
    }

    public void setTextEndPadding(float f) {
        if (this.f30787V0 != f) {
            this.f30787V0 = f;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setTextEndPaddingResource(@DimenRes int i) {
        setTextEndPadding(this.f30791Z0.getResources().getDimension(i));
    }

    public void setTextResource(@StringRes int i) {
        setText(this.f30791Z0.getResources().getString(i));
    }

    public void setTextSize(@Dimension float f) {
        TextAppearance textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.setTextSize(f);
            this.f30798g1.getTextPaint().setTextSize(f);
            onTextSizeChange();
        }
    }

    public void setTextStartPadding(float f) {
        if (this.f30786U0 != f) {
            this.f30786U0 = f;
            invalidateSelf();
            onSizeChange();
        }
    }

    public void setTextStartPaddingResource(@DimenRes int i) {
        setTextStartPadding(this.f30791Z0.getResources().getDimension(i));
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        if (this.f30811s1 != colorStateList) {
            this.f30811s1 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.f30813t1 != mode) {
            this.f30813t1 = mode;
            this.f30810r1 = DrawableUtils.updateTintFilter(this, this.f30811s1, mode);
            invalidateSelf();
        }
    }

    public void setUseCompatRipple(boolean z) {
        if (this.f30817v1 != z) {
            this.f30817v1 = z;
            m23487j0();
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (m23484g0()) {
            visible |= this.f30766B0.setVisible(z, z2);
        }
        if (m23483f0()) {
            visible |= this.f30779N0.setVisible(z, z2);
        }
        if (m23485h0()) {
            visible |= this.f30772G0.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* renamed from: y */
    public final void m23489y(@Nullable Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f30772G0) {
            if (drawable.isStateful()) {
                drawable.setState(getCloseIconState());
            }
            DrawableCompat.setTintList(drawable, this.f30774I0);
            return;
        }
        Drawable drawable2 = this.f30766B0;
        if (drawable == drawable2 && this.f30770E0) {
            DrawableCompat.setTintList(drawable2, this.f30768C0);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    /* renamed from: z */
    public final void m23490z(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (m23484g0() || m23483f0()) {
            float f = this.f30783R0 + this.f30784S0;
            float m23475T = m23475T();
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f2 = rect.left + f;
                rectF.left = f2;
                rectF.right = f2 + m23475T;
            } else {
                float f3 = rect.right - f;
                rectF.right = f3;
                rectF.left = f3 - m23475T;
            }
            float m23474S = m23474S();
            float exactCenterY = rect.exactCenterY() - (m23474S / 2.0f);
            rectF.top = exactCenterY;
            rectF.bottom = exactCenterY + m23474S;
        }
    }

    public void setCheckedIconVisible(boolean z) {
        if (this.f30778M0 != z) {
            boolean m23483f0 = m23483f0();
            this.f30778M0 = z;
            boolean m23483f02 = m23483f0();
            if (m23483f0 != m23483f02) {
                if (m23483f02) {
                    m23489y(this.f30779N0);
                } else {
                    m23486i0(this.f30779N0);
                }
                invalidateSelf();
                onSizeChange();
            }
        }
    }

    public void setChipIconVisible(boolean z) {
        if (this.f30764A0 != z) {
            boolean m23484g0 = m23484g0();
            this.f30764A0 = z;
            boolean m23484g02 = m23484g0();
            if (m23484g0 != m23484g02) {
                if (m23484g02) {
                    m23489y(this.f30766B0);
                } else {
                    m23486i0(this.f30766B0);
                }
                invalidateSelf();
                onSizeChange();
            }
        }
    }

    public void setCloseIconVisible(boolean z) {
        if (this.f30771F0 != z) {
            boolean m23485h0 = m23485h0();
            this.f30771F0 = z;
            boolean m23485h02 = m23485h0();
            if (m23485h0 != m23485h02) {
                if (m23485h02) {
                    m23489y(this.f30772G0);
                } else {
                    m23486i0(this.f30772G0);
                }
                invalidateSelf();
                onSizeChange();
            }
        }
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        TextAppearance textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.setTextColor(colorStateList);
            invalidateSelf();
        }
    }
}
