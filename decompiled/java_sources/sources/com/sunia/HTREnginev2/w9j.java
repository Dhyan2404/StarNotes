package com.sunia.HTREnginev2;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.CornerTreatment;
import com.google.android.material.shape.CutCornerTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.android.material.shape.ShapeAppearanceModel;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class w9j {

    /* renamed from: B */
    public static final float f88358B = 1.5f;

    /* renamed from: C */
    public static final int f88359C = 2;

    /* renamed from: E */
    public static final int f88361E = 300;

    /* renamed from: z */
    public static final int f88362z = -1;

    /* renamed from: a */
    @NonNull
    public final MaterialCardView f88363a;

    /* renamed from: c */
    @NonNull
    public final MaterialShapeDrawable f88365c;

    /* renamed from: d */
    @NonNull
    public final MaterialShapeDrawable f88366d;

    /* renamed from: e */
    @Dimension
    public int f88367e;

    /* renamed from: f */
    @Dimension
    public int f88368f;

    /* renamed from: g */
    public int f88369g;

    /* renamed from: h */
    @Dimension
    public int f88370h;

    /* renamed from: i */
    @Nullable
    public Drawable f88371i;

    /* renamed from: j */
    @Nullable
    public Drawable f88372j;

    /* renamed from: k */
    @Nullable
    public ColorStateList f88373k;

    /* renamed from: l */
    @Nullable
    public ColorStateList f88374l;

    /* renamed from: m */
    @Nullable
    public ShapeAppearanceModel f88375m;

    /* renamed from: n */
    @Nullable
    public ColorStateList f88376n;

    /* renamed from: o */
    @Nullable
    public Drawable f88377o;

    /* renamed from: p */
    @Nullable
    public LayerDrawable f88378p;

    /* renamed from: q */
    @Nullable
    public MaterialShapeDrawable f88379q;

    /* renamed from: r */
    @Nullable
    public MaterialShapeDrawable f88380r;

    /* renamed from: t */
    public boolean f88382t;

    /* renamed from: u */
    @Nullable
    public ValueAnimator f88383u;

    /* renamed from: v */
    public final TimeInterpolator f88384v;

    /* renamed from: w */
    public final int f88385w;

    /* renamed from: x */
    public final int f88386x;

    /* renamed from: A */
    public static final double f88357A = Math.cos(Math.toRadians(45.0d));

    /* renamed from: D */
    public static final Drawable f88360D = null;

    /* renamed from: b */
    @NonNull
    public final Rect f88364b = new Rect();

    /* renamed from: s */
    public boolean f88381s = false;

    /* renamed from: y */
    public float f88387y = 0.0f;

    /* renamed from: com.sunia.HTREnginev2.w9j$a */
    /* loaded from: classes6.dex */
    public class C14596a extends InsetDrawable {
        public C14596a(Drawable drawable, int i, int i2, int i3, int i4) {
            super(drawable, i, i2, i3, i4);
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumHeight() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumWidth() {
            return -1;
        }

        @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean getPadding(Rect rect) {
            return false;
        }
    }

    public w9j(@NonNull MaterialCardView materialCardView, AttributeSet attributeSet, int i, @StyleRes int i2) {
        this.f88363a = materialCardView;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(materialCardView.getContext(), attributeSet, i, i2);
        this.f88365c = materialShapeDrawable;
        materialShapeDrawable.initializeElevationOverlay(materialCardView.getContext());
        materialShapeDrawable.setShadowColor(-12303292);
        ShapeAppearanceModel.Builder builder = materialShapeDrawable.getShapeAppearanceModel().toBuilder();
        TypedArray obtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, C5139R.styleable.CardView, i, C5139R.style.CardView);
        if (obtainStyledAttributes.hasValue(C5139R.styleable.CardView_cardCornerRadius)) {
            builder.setAllCornerSizes(obtainStyledAttributes.getDimension(C5139R.styleable.CardView_cardCornerRadius, 0.0f));
        }
        this.f88366d = new MaterialShapeDrawable();
        m57975Z(builder.build());
        this.f88384v = MotionUtils.resolveThemeInterpolator(materialCardView.getContext(), C5139R.attr.motionEasingLinearInterpolator, AnimationUtils.LINEAR_INTERPOLATOR);
        this.f88385w = MotionUtils.resolveThemeDuration(materialCardView.getContext(), C5139R.attr.motionDurationShort2, 300);
        this.f88386x = MotionUtils.resolveThemeDuration(materialCardView.getContext(), C5139R.attr.motionDurationShort1, 300);
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public /* synthetic */ void m57949I(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f88372j.setAlpha((int) (255.0f * floatValue));
        this.f88387y = floatValue;
    }

    @Nullable
    /* renamed from: A */
    public ColorStateList m57951A() {
        return this.f88376n;
    }

    @Dimension
    /* renamed from: B */
    public int m57952B() {
        return this.f88370h;
    }

    @NonNull
    /* renamed from: C */
    public Rect m57953C() {
        return this.f88364b;
    }

    @NonNull
    /* renamed from: D */
    public final Drawable m57954D(Drawable drawable) {
        int i;
        int i2;
        if (this.f88363a.getUseCompatPadding()) {
            i2 = (int) Math.ceil(m57985f());
            i = (int) Math.ceil(m57983e());
        } else {
            i = 0;
            i2 = 0;
        }
        return new C14596a(drawable, i, i2, i, i2);
    }

    /* renamed from: E */
    public boolean m57955E() {
        return this.f88381s;
    }

    /* renamed from: F */
    public boolean m57956F() {
        return this.f88382t;
    }

    /* renamed from: G */
    public final boolean m57957G() {
        return (this.f88369g & 80) == 80;
    }

    /* renamed from: H */
    public final boolean m57958H() {
        return (this.f88369g & 8388613) == 8388613;
    }

    /* renamed from: J */
    public void m57959J(@NonNull TypedArray typedArray) {
        ColorStateList colorStateList = MaterialResources.getColorStateList(this.f88363a.getContext(), typedArray, C5139R.styleable.MaterialCardView_strokeColor);
        this.f88376n = colorStateList;
        if (colorStateList == null) {
            this.f88376n = ColorStateList.valueOf(-1);
        }
        this.f88370h = typedArray.getDimensionPixelSize(C5139R.styleable.MaterialCardView_strokeWidth, 0);
        boolean z = typedArray.getBoolean(C5139R.styleable.MaterialCardView_android_checkable, false);
        this.f88382t = z;
        this.f88363a.setLongClickable(z);
        this.f88374l = MaterialResources.getColorStateList(this.f88363a.getContext(), typedArray, C5139R.styleable.MaterialCardView_checkedIconTint);
        m57967R(MaterialResources.getDrawable(this.f88363a.getContext(), typedArray, C5139R.styleable.MaterialCardView_checkedIcon));
        m57970U(typedArray.getDimensionPixelSize(C5139R.styleable.MaterialCardView_checkedIconSize, 0));
        m57969T(typedArray.getDimensionPixelSize(C5139R.styleable.MaterialCardView_checkedIconMargin, 0));
        this.f88369g = typedArray.getInteger(C5139R.styleable.MaterialCardView_checkedIconGravity, 8388661);
        ColorStateList colorStateList2 = MaterialResources.getColorStateList(this.f88363a.getContext(), typedArray, C5139R.styleable.MaterialCardView_rippleColor);
        this.f88373k = colorStateList2;
        if (colorStateList2 == null) {
            this.f88373k = ColorStateList.valueOf(MaterialColors.getColor(this.f88363a, C5139R.attr.colorControlHighlight));
        }
        m57963N(MaterialResources.getColorStateList(this.f88363a.getContext(), typedArray, C5139R.styleable.MaterialCardView_cardForegroundColor));
        m57998l0();
        m57992i0();
        m58000m0();
        this.f88363a.setBackgroundInternal(m57954D(this.f88365c));
        Drawable m58007t = m57986f0() ? m58007t() : this.f88366d;
        this.f88371i = m58007t;
        this.f88363a.setForeground(m57954D(m58007t));
    }

    /* renamed from: K */
    public void m57960K(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.f88378p != null) {
            if (this.f88363a.getUseCompatPadding()) {
                i3 = (int) Math.ceil(m57985f() * 2.0f);
                i4 = (int) Math.ceil(m57983e() * 2.0f);
            } else {
                i3 = 0;
                i4 = 0;
            }
            int i7 = m57958H() ? ((i - this.f88367e) - this.f88368f) - i4 : this.f88367e;
            int i8 = m57957G() ? this.f88367e : ((i2 - this.f88367e) - this.f88368f) - i3;
            int i9 = m57958H() ? this.f88367e : ((i - this.f88367e) - this.f88368f) - i4;
            int i10 = m57957G() ? ((i2 - this.f88367e) - this.f88368f) - i3 : this.f88367e;
            if (ViewCompat.getLayoutDirection(this.f88363a) == 1) {
                i6 = i9;
                i5 = i7;
            } else {
                i5 = i9;
                i6 = i7;
            }
            this.f88378p.setLayerInset(2, i6, i10, i5, i8);
        }
    }

    /* renamed from: L */
    public void m57961L(boolean z) {
        this.f88381s = z;
    }

    /* renamed from: M */
    public void m57962M(ColorStateList colorStateList) {
        this.f88365c.setFillColor(colorStateList);
    }

    /* renamed from: N */
    public void m57963N(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.f88366d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        materialShapeDrawable.setFillColor(colorStateList);
    }

    /* renamed from: O */
    public void m57964O(boolean z) {
        this.f88382t = z;
    }

    /* renamed from: P */
    public void m57965P(boolean z) {
        m57966Q(z, false);
    }

    /* renamed from: Q */
    public void m57966Q(boolean z, boolean z2) {
        Drawable drawable = this.f88372j;
        if (drawable != null) {
            if (z2) {
                m57977b(z);
            } else {
                drawable.setAlpha(z ? 255 : 0);
                this.f88387y = z ? 1.0f : 0.0f;
            }
        }
    }

    /* renamed from: R */
    public void m57967R(@Nullable Drawable drawable) {
        if (drawable != null) {
            Drawable mutate = DrawableCompat.wrap(drawable).mutate();
            this.f88372j = mutate;
            DrawableCompat.setTintList(mutate, this.f88374l);
            m57965P(this.f88363a.isChecked());
        } else {
            this.f88372j = f88360D;
        }
        LayerDrawable layerDrawable = this.f88378p;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(C5139R.id.mtrl_card_checked_layer_id, this.f88372j);
        }
    }

    /* renamed from: S */
    public void m57968S(int i) {
        this.f88369g = i;
        m57960K(this.f88363a.getMeasuredWidth(), this.f88363a.getMeasuredHeight());
    }

    /* renamed from: T */
    public void m57969T(@Dimension int i) {
        this.f88367e = i;
    }

    /* renamed from: U */
    public void m57970U(@Dimension int i) {
        this.f88368f = i;
    }

    /* renamed from: V */
    public void m57971V(@Nullable ColorStateList colorStateList) {
        this.f88374l = colorStateList;
        Drawable drawable = this.f88372j;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
        }
    }

    /* renamed from: W */
    public void m57972W(float f) {
        m57975Z(this.f88375m.withCornerSize(f));
        this.f88371i.invalidateSelf();
        if (m57984e0() || m57982d0()) {
            m57990h0();
        }
        if (m57984e0()) {
            m57996k0();
        }
    }

    /* renamed from: X */
    public void m57973X(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        this.f88365c.setInterpolation(f);
        MaterialShapeDrawable materialShapeDrawable = this.f88366d;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setInterpolation(f);
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.f88380r;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.setInterpolation(f);
        }
    }

    /* renamed from: Y */
    public void m57974Y(@Nullable ColorStateList colorStateList) {
        this.f88373k = colorStateList;
        m57998l0();
    }

    /* renamed from: Z */
    public void m57975Z(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f88375m = shapeAppearanceModel;
        this.f88365c.setShapeAppearanceModel(shapeAppearanceModel);
        this.f88365c.setShadowBitmapDrawingEnable(!r0.isRoundRect());
        MaterialShapeDrawable materialShapeDrawable = this.f88366d;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.f88380r;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.setShapeAppearanceModel(shapeAppearanceModel);
        }
        MaterialShapeDrawable materialShapeDrawable3 = this.f88379q;
        if (materialShapeDrawable3 != null) {
            materialShapeDrawable3.setShapeAppearanceModel(shapeAppearanceModel);
        }
    }

    /* renamed from: a0 */
    public void m57976a0(ColorStateList colorStateList) {
        if (this.f88376n == colorStateList) {
            return;
        }
        this.f88376n = colorStateList;
        m58000m0();
    }

    /* renamed from: b */
    public void m57977b(boolean z) {
        float f = z ? 1.0f : 0.0f;
        float f2 = z ? 1.0f - this.f88387y : this.f88387y;
        ValueAnimator valueAnimator = this.f88383u;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f88383u = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f88387y, f);
        this.f88383u = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.v9j
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                w9j.this.m57949I(valueAnimator2);
            }
        });
        this.f88383u.setInterpolator(this.f88384v);
        this.f88383u.setDuration((z ? this.f88385w : this.f88386x) * f2);
        this.f88383u.start();
    }

    /* renamed from: b0 */
    public void m57978b0(@Dimension int i) {
        if (i == this.f88370h) {
            return;
        }
        this.f88370h = i;
        m58000m0();
    }

    /* renamed from: c */
    public final float m57979c() {
        return Math.max(Math.max(m57981d(this.f88375m.getTopLeftCorner(), this.f88365c.getTopLeftCornerResolvedSize()), m57981d(this.f88375m.getTopRightCorner(), this.f88365c.getTopRightCornerResolvedSize())), Math.max(m57981d(this.f88375m.getBottomRightCorner(), this.f88365c.getBottomRightCornerResolvedSize()), m57981d(this.f88375m.getBottomLeftCorner(), this.f88365c.getBottomLeftCornerResolvedSize())));
    }

    /* renamed from: c0 */
    public void m57980c0(int i, int i2, int i3, int i4) {
        this.f88364b.set(i, i2, i3, i4);
        m57990h0();
    }

    /* renamed from: d */
    public final float m57981d(CornerTreatment cornerTreatment, float f) {
        if (cornerTreatment instanceof RoundedCornerTreatment) {
            return (float) ((1.0d - f88357A) * f);
        }
        if (cornerTreatment instanceof CutCornerTreatment) {
            return f / 2.0f;
        }
        return 0.0f;
    }

    /* renamed from: d0 */
    public final boolean m57982d0() {
        return this.f88363a.getPreventCornerOverlap() && !m57987g();
    }

    /* renamed from: e */
    public final float m57983e() {
        return this.f88363a.getMaxCardElevation() + (m57984e0() ? m57979c() : 0.0f);
    }

    /* renamed from: e0 */
    public final boolean m57984e0() {
        return this.f88363a.getPreventCornerOverlap() && m57987g() && this.f88363a.getUseCompatPadding();
    }

    /* renamed from: f */
    public final float m57985f() {
        return (this.f88363a.getMaxCardElevation() * 1.5f) + (m57984e0() ? m57979c() : 0.0f);
    }

    /* renamed from: f0 */
    public final boolean m57986f0() {
        if (this.f88363a.isClickable()) {
            return true;
        }
        View view = this.f88363a;
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    /* renamed from: g */
    public final boolean m57987g() {
        return this.f88365c.isRoundRect();
    }

    /* renamed from: g0 */
    public void m57988g0() {
        Drawable drawable = this.f88371i;
        Drawable m58007t = m57986f0() ? m58007t() : this.f88366d;
        this.f88371i = m58007t;
        if (drawable != m58007t) {
            m57994j0(m58007t);
        }
    }

    @NonNull
    /* renamed from: h */
    public final Drawable m57989h() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        MaterialShapeDrawable m57993j = m57993j();
        this.f88379q = m57993j;
        m57993j.setFillColor(this.f88373k);
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, this.f88379q);
        return stateListDrawable;
    }

    /* renamed from: h0 */
    public void m57990h0() {
        int m57979c = (int) ((m57982d0() || m57984e0() ? m57979c() : 0.0f) - m58009v());
        MaterialCardView materialCardView = this.f88363a;
        Rect rect = this.f88364b;
        materialCardView.m23277f(rect.left + m57979c, rect.top + m57979c, rect.right + m57979c, rect.bottom + m57979c);
    }

    @NonNull
    /* renamed from: i */
    public final Drawable m57991i() {
        if (!RippleUtils.USE_FRAMEWORK_RIPPLE) {
            return m57989h();
        }
        this.f88380r = m57993j();
        return new RippleDrawable(this.f88373k, null, this.f88380r);
    }

    /* renamed from: i0 */
    public void m57992i0() {
        this.f88365c.setElevation(this.f88363a.getCardElevation());
    }

    @NonNull
    /* renamed from: j */
    public final MaterialShapeDrawable m57993j() {
        return new MaterialShapeDrawable(this.f88375m);
    }

    /* renamed from: j0 */
    public final void m57994j0(Drawable drawable) {
        if (this.f88363a.getForeground() instanceof InsetDrawable) {
            ((InsetDrawable) this.f88363a.getForeground()).setDrawable(drawable);
        } else {
            this.f88363a.setForeground(m57954D(drawable));
        }
    }

    @RequiresApi(api = 23)
    /* renamed from: k */
    public void m57995k() {
        Drawable drawable = this.f88377o;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i = bounds.bottom;
            this.f88377o.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
            this.f88377o.setBounds(bounds.left, bounds.top, bounds.right, i);
        }
    }

    /* renamed from: k0 */
    public void m57996k0() {
        if (!m57955E()) {
            this.f88363a.setBackgroundInternal(m57954D(this.f88365c));
        }
        this.f88363a.setForeground(m57954D(this.f88371i));
    }

    @NonNull
    /* renamed from: l */
    public MaterialShapeDrawable m57997l() {
        return this.f88365c;
    }

    /* renamed from: l0 */
    public final void m57998l0() {
        Drawable drawable;
        if (RippleUtils.USE_FRAMEWORK_RIPPLE && (drawable = this.f88377o) != null) {
            ((RippleDrawable) drawable).setColor(this.f88373k);
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = this.f88379q;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setFillColor(this.f88373k);
        }
    }

    /* renamed from: m */
    public ColorStateList m57999m() {
        return this.f88365c.getFillColor();
    }

    /* renamed from: m0 */
    public void m58000m0() {
        this.f88366d.setStroke(this.f88370h, this.f88376n);
    }

    /* renamed from: n */
    public ColorStateList m58001n() {
        return this.f88366d.getFillColor();
    }

    @Nullable
    /* renamed from: o */
    public Drawable m58002o() {
        return this.f88372j;
    }

    /* renamed from: p */
    public int m58003p() {
        return this.f88369g;
    }

    @Dimension
    /* renamed from: q */
    public int m58004q() {
        return this.f88367e;
    }

    @Dimension
    /* renamed from: r */
    public int m58005r() {
        return this.f88368f;
    }

    @Nullable
    /* renamed from: s */
    public ColorStateList m58006s() {
        return this.f88374l;
    }

    @NonNull
    /* renamed from: t */
    public final Drawable m58007t() {
        if (this.f88377o == null) {
            this.f88377o = m57991i();
        }
        if (this.f88378p == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f88377o, this.f88366d, this.f88372j});
            this.f88378p = layerDrawable;
            layerDrawable.setId(2, C5139R.id.mtrl_card_checked_layer_id);
        }
        return this.f88378p;
    }

    /* renamed from: u */
    public float m58008u() {
        return this.f88365c.getTopLeftCornerResolvedSize();
    }

    /* renamed from: v */
    public final float m58009v() {
        if (this.f88363a.getPreventCornerOverlap() && this.f88363a.getUseCompatPadding()) {
            return (float) ((1.0d - f88357A) * this.f88363a.getCardViewRadius());
        }
        return 0.0f;
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    /* renamed from: w */
    public float m58010w() {
        return this.f88365c.getInterpolation();
    }

    @Nullable
    /* renamed from: x */
    public ColorStateList m58011x() {
        return this.f88373k;
    }

    /* renamed from: y */
    public ShapeAppearanceModel m58012y() {
        return this.f88375m;
    }

    @ColorInt
    /* renamed from: z */
    public int m58013z() {
        ColorStateList colorStateList = this.f88376n;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }
}
