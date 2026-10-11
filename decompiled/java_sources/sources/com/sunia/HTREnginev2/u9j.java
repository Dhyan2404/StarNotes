package com.sunia.HTREnginev2;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleDrawableCompat;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class u9j {

    /* renamed from: u */
    @ChecksSdkIntAtLeast(api = 21)
    public static final boolean f86243u = true;

    /* renamed from: v */
    public static final boolean f86244v = false;

    /* renamed from: a */
    public final MaterialButton f86245a;

    /* renamed from: b */
    @NonNull
    public ShapeAppearanceModel f86246b;

    /* renamed from: c */
    public int f86247c;

    /* renamed from: d */
    public int f86248d;

    /* renamed from: e */
    public int f86249e;

    /* renamed from: f */
    public int f86250f;

    /* renamed from: g */
    public int f86251g;

    /* renamed from: h */
    public int f86252h;

    /* renamed from: i */
    @Nullable
    public PorterDuff.Mode f86253i;

    /* renamed from: j */
    @Nullable
    public ColorStateList f86254j;

    /* renamed from: k */
    @Nullable
    public ColorStateList f86255k;

    /* renamed from: l */
    @Nullable
    public ColorStateList f86256l;

    /* renamed from: m */
    @Nullable
    public Drawable f86257m;

    /* renamed from: q */
    public boolean f86261q;

    /* renamed from: s */
    public LayerDrawable f86263s;

    /* renamed from: t */
    public int f86264t;

    /* renamed from: n */
    public boolean f86258n = false;

    /* renamed from: o */
    public boolean f86259o = false;

    /* renamed from: p */
    public boolean f86260p = false;

    /* renamed from: r */
    public boolean f86262r = true;

    public u9j(MaterialButton materialButton, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f86245a = materialButton;
        this.f86246b = shapeAppearanceModel;
    }

    /* renamed from: A */
    public void m57563A(boolean z) {
        this.f86258n = z;
        m57573K();
    }

    /* renamed from: B */
    public void m57564B(@Nullable ColorStateList colorStateList) {
        if (this.f86255k != colorStateList) {
            this.f86255k = colorStateList;
            m57573K();
        }
    }

    /* renamed from: C */
    public void m57565C(int i) {
        if (this.f86252h != i) {
            this.f86252h = i;
            m57573K();
        }
    }

    /* renamed from: D */
    public void m57566D(@Nullable ColorStateList colorStateList) {
        if (this.f86254j != colorStateList) {
            this.f86254j = colorStateList;
            if (m57580f() != null) {
                DrawableCompat.setTintList(m57580f(), this.f86254j);
            }
        }
    }

    /* renamed from: E */
    public void m57567E(@Nullable PorterDuff.Mode mode) {
        if (this.f86253i != mode) {
            this.f86253i = mode;
            if (m57580f() == null || this.f86253i == null) {
                return;
            }
            DrawableCompat.setTintMode(m57580f(), this.f86253i);
        }
    }

    /* renamed from: F */
    public void m57568F(boolean z) {
        this.f86262r = z;
    }

    /* renamed from: G */
    public final void m57569G(@Dimension int i, @Dimension int i2) {
        int paddingStart = ViewCompat.getPaddingStart(this.f86245a);
        int paddingTop = this.f86245a.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f86245a);
        int paddingBottom = this.f86245a.getPaddingBottom();
        int i3 = this.f86249e;
        int i4 = this.f86250f;
        this.f86250f = i2;
        this.f86249e = i;
        if (!this.f86259o) {
            m57570H();
        }
        ViewCompat.setPaddingRelative(this.f86245a, paddingStart, (paddingTop + i) - i3, paddingEnd, (paddingBottom + i2) - i4);
    }

    /* renamed from: H */
    public final void m57570H() {
        this.f86245a.setInternalBackground(m57575a());
        MaterialShapeDrawable m57580f = m57580f();
        if (m57580f != null) {
            m57580f.setElevation(this.f86264t);
            m57580f.setState(this.f86245a.getDrawableState());
        }
    }

    /* renamed from: I */
    public final void m57571I(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        if (f86244v && !this.f86259o) {
            int paddingStart = ViewCompat.getPaddingStart(this.f86245a);
            int paddingTop = this.f86245a.getPaddingTop();
            int paddingEnd = ViewCompat.getPaddingEnd(this.f86245a);
            int paddingBottom = this.f86245a.getPaddingBottom();
            m57570H();
            ViewCompat.setPaddingRelative(this.f86245a, paddingStart, paddingTop, paddingEnd, paddingBottom);
            return;
        }
        if (m57580f() != null) {
            m57580f().setShapeAppearanceModel(shapeAppearanceModel);
        }
        if (m57588n() != null) {
            m57588n().setShapeAppearanceModel(shapeAppearanceModel);
        }
        if (m57579e() != null) {
            m57579e().setShapeAppearanceModel(shapeAppearanceModel);
        }
    }

    /* renamed from: J */
    public void m57572J(int i, int i2) {
        Drawable drawable = this.f86257m;
        if (drawable != null) {
            drawable.setBounds(this.f86247c, this.f86249e, i2 - this.f86248d, i - this.f86250f);
        }
    }

    /* renamed from: K */
    public final void m57573K() {
        MaterialShapeDrawable m57580f = m57580f();
        MaterialShapeDrawable m57588n = m57588n();
        if (m57580f != null) {
            m57580f.setStroke(this.f86252h, this.f86255k);
            if (m57588n != null) {
                m57588n.setStroke(this.f86252h, this.f86258n ? MaterialColors.getColor(this.f86245a, C5139R.attr.colorSurface) : 0);
            }
        }
    }

    @NonNull
    /* renamed from: L */
    public final InsetDrawable m57574L(Drawable drawable) {
        return new InsetDrawable(drawable, this.f86247c, this.f86249e, this.f86248d, this.f86250f);
    }

    /* renamed from: a */
    public final Drawable m57575a() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f86246b);
        materialShapeDrawable.initializeElevationOverlay(this.f86245a.getContext());
        DrawableCompat.setTintList(materialShapeDrawable, this.f86254j);
        PorterDuff.Mode mode = this.f86253i;
        if (mode != null) {
            DrawableCompat.setTintMode(materialShapeDrawable, mode);
        }
        materialShapeDrawable.setStroke(this.f86252h, this.f86255k);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(this.f86246b);
        materialShapeDrawable2.setTint(0);
        materialShapeDrawable2.setStroke(this.f86252h, this.f86258n ? MaterialColors.getColor(this.f86245a, C5139R.attr.colorSurface) : 0);
        if (f86243u) {
            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(this.f86246b);
            this.f86257m = materialShapeDrawable3;
            DrawableCompat.setTint(materialShapeDrawable3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(this.f86256l), m57574L(new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable})), this.f86257m);
            this.f86263s = rippleDrawable;
            return rippleDrawable;
        }
        RippleDrawableCompat rippleDrawableCompat = new RippleDrawableCompat(this.f86246b);
        this.f86257m = rippleDrawableCompat;
        DrawableCompat.setTintList(rippleDrawableCompat, RippleUtils.sanitizeRippleDrawableColor(this.f86256l));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable, this.f86257m});
        this.f86263s = layerDrawable;
        return m57574L(layerDrawable);
    }

    /* renamed from: b */
    public int m57576b() {
        return this.f86251g;
    }

    /* renamed from: c */
    public int m57577c() {
        return this.f86250f;
    }

    /* renamed from: d */
    public int m57578d() {
        return this.f86249e;
    }

    @Nullable
    /* renamed from: e */
    public Shapeable m57579e() {
        LayerDrawable layerDrawable = this.f86263s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f86263s.getNumberOfLayers() > 2 ? (Shapeable) this.f86263s.getDrawable(2) : (Shapeable) this.f86263s.getDrawable(1);
    }

    @Nullable
    /* renamed from: f */
    public MaterialShapeDrawable m57580f() {
        return m57581g(false);
    }

    @Nullable
    /* renamed from: g */
    public final MaterialShapeDrawable m57581g(boolean z) {
        LayerDrawable layerDrawable = this.f86263s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f86243u ? (MaterialShapeDrawable) ((LayerDrawable) ((InsetDrawable) this.f86263s.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0) : (MaterialShapeDrawable) this.f86263s.getDrawable(!z ? 1 : 0);
    }

    @Nullable
    /* renamed from: h */
    public ColorStateList m57582h() {
        return this.f86256l;
    }

    @NonNull
    /* renamed from: i */
    public ShapeAppearanceModel m57583i() {
        return this.f86246b;
    }

    @Nullable
    /* renamed from: j */
    public ColorStateList m57584j() {
        return this.f86255k;
    }

    /* renamed from: k */
    public int m57585k() {
        return this.f86252h;
    }

    /* renamed from: l */
    public ColorStateList m57586l() {
        return this.f86254j;
    }

    /* renamed from: m */
    public PorterDuff.Mode m57587m() {
        return this.f86253i;
    }

    @Nullable
    /* renamed from: n */
    public final MaterialShapeDrawable m57588n() {
        return m57581g(true);
    }

    /* renamed from: o */
    public boolean m57589o() {
        return this.f86259o;
    }

    /* renamed from: p */
    public boolean m57590p() {
        return this.f86261q;
    }

    /* renamed from: q */
    public boolean m57591q() {
        return this.f86262r;
    }

    /* renamed from: r */
    public void m57592r(@NonNull TypedArray typedArray) {
        this.f86247c = typedArray.getDimensionPixelOffset(C5139R.styleable.MaterialButton_android_insetLeft, 0);
        this.f86248d = typedArray.getDimensionPixelOffset(C5139R.styleable.MaterialButton_android_insetRight, 0);
        this.f86249e = typedArray.getDimensionPixelOffset(C5139R.styleable.MaterialButton_android_insetTop, 0);
        this.f86250f = typedArray.getDimensionPixelOffset(C5139R.styleable.MaterialButton_android_insetBottom, 0);
        if (typedArray.hasValue(C5139R.styleable.MaterialButton_cornerRadius)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(C5139R.styleable.MaterialButton_cornerRadius, -1);
            this.f86251g = dimensionPixelSize;
            m57600z(this.f86246b.withCornerSize(dimensionPixelSize));
            this.f86260p = true;
        }
        this.f86252h = typedArray.getDimensionPixelSize(C5139R.styleable.MaterialButton_strokeWidth, 0);
        this.f86253i = ViewUtils.parseTintMode(typedArray.getInt(C5139R.styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f86254j = MaterialResources.getColorStateList(this.f86245a.getContext(), typedArray, C5139R.styleable.MaterialButton_backgroundTint);
        this.f86255k = MaterialResources.getColorStateList(this.f86245a.getContext(), typedArray, C5139R.styleable.MaterialButton_strokeColor);
        this.f86256l = MaterialResources.getColorStateList(this.f86245a.getContext(), typedArray, C5139R.styleable.MaterialButton_rippleColor);
        this.f86261q = typedArray.getBoolean(C5139R.styleable.MaterialButton_android_checkable, false);
        this.f86264t = typedArray.getDimensionPixelSize(C5139R.styleable.MaterialButton_elevation, 0);
        this.f86262r = typedArray.getBoolean(C5139R.styleable.MaterialButton_toggleCheckedStateOnClick, true);
        int paddingStart = ViewCompat.getPaddingStart(this.f86245a);
        int paddingTop = this.f86245a.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f86245a);
        int paddingBottom = this.f86245a.getPaddingBottom();
        if (typedArray.hasValue(C5139R.styleable.MaterialButton_android_background)) {
            m57594t();
        } else {
            m57570H();
        }
        ViewCompat.setPaddingRelative(this.f86245a, paddingStart + this.f86247c, paddingTop + this.f86249e, paddingEnd + this.f86248d, paddingBottom + this.f86250f);
    }

    /* renamed from: s */
    public void m57593s(int i) {
        if (m57580f() != null) {
            m57580f().setTint(i);
        }
    }

    /* renamed from: t */
    public void m57594t() {
        this.f86259o = true;
        this.f86245a.setSupportBackgroundTintList(this.f86254j);
        this.f86245a.setSupportBackgroundTintMode(this.f86253i);
    }

    /* renamed from: u */
    public void m57595u(boolean z) {
        this.f86261q = z;
    }

    /* renamed from: v */
    public void m57596v(int i) {
        if (this.f86260p && this.f86251g == i) {
            return;
        }
        this.f86251g = i;
        this.f86260p = true;
        m57600z(this.f86246b.withCornerSize(i));
    }

    /* renamed from: w */
    public void m57597w(@Dimension int i) {
        m57569G(this.f86249e, i);
    }

    /* renamed from: x */
    public void m57598x(@Dimension int i) {
        m57569G(i, this.f86250f);
    }

    /* renamed from: y */
    public void m57599y(@Nullable ColorStateList colorStateList) {
        if (this.f86256l != colorStateList) {
            this.f86256l = colorStateList;
            boolean z = f86243u;
            if (z && (this.f86245a.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f86245a.getBackground()).setColor(RippleUtils.sanitizeRippleDrawableColor(colorStateList));
            } else {
                if (z || !(this.f86245a.getBackground() instanceof RippleDrawableCompat)) {
                    return;
                }
                ((RippleDrawableCompat) this.f86245a.getBackground()).setTintList(RippleUtils.sanitizeRippleDrawableColor(colorStateList));
            }
        }
    }

    /* renamed from: z */
    public void m57600z(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f86246b = shapeAppearanceModel;
        m57571I(shapeAppearanceModel);
    }
}
