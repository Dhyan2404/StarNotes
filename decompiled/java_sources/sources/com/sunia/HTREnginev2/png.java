package com.sunia.HTREnginev2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import com.google.android.material.C5139R;
import com.google.android.material.floatingactionbutton.C5284b;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shadow.ShadowViewDelegate;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.ArrayList;

@RequiresApi(21)
/* loaded from: classes6.dex */
public class png extends C5284b {

    /* renamed from: c0 */
    @Nullable
    public StateListAnimator f80998c0;

    /* renamed from: com.sunia.HTREnginev2.png$a */
    /* loaded from: classes6.dex */
    public static class C14255a extends MaterialShapeDrawable {
        public C14255a(ShapeAppearanceModel shapeAppearanceModel) {
            super(shapeAppearanceModel);
        }

        @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }
    }

    public png(FloatingActionButton floatingActionButton, ShadowViewDelegate shadowViewDelegate) {
        super(floatingActionButton, shadowViewDelegate);
    }

    @Override // com.google.android.material.floatingactionbutton.C5284b
    /* renamed from: B */
    public void mo24114B() {
    }

    @Override // com.google.android.material.floatingactionbutton.C5284b
    /* renamed from: D */
    public void mo24116D() {
        m24154j0();
    }

    @Override // com.google.android.material.floatingactionbutton.C5284b
    /* renamed from: F */
    public void mo24118F(int[] iArr) {
    }

    @Override // com.google.android.material.floatingactionbutton.C5284b
    /* renamed from: G */
    public void mo24119G(float f, float f2, float f3) {
        if (this.f31401w.getStateListAnimator() == this.f80998c0) {
            StateListAnimator m56334n0 = m56334n0(f, f2, f3);
            this.f80998c0 = m56334n0;
            this.f31401w.setStateListAnimator(m56334n0);
        }
        if (mo24142d0()) {
            m24154j0();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C5284b
    /* renamed from: O */
    public boolean mo24127O() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.C5284b
    /* renamed from: Z */
    public void mo24138Z(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.f31381c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(RippleUtils.sanitizeRippleDrawableColor(colorStateList));
        } else {
            super.mo24138Z(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C5284b
    /* renamed from: d0 */
    public boolean mo24142d0() {
        return this.f31402x.isCompatPaddingEnabled() || !m24146f0();
    }

    @Override // com.google.android.material.floatingactionbutton.C5284b
    /* renamed from: h0 */
    public void mo24150h0() {
    }

    @Override // com.google.android.material.floatingactionbutton.C5284b
    @NonNull
    /* renamed from: l */
    public MaterialShapeDrawable mo24157l() {
        return new C14255a((ShapeAppearanceModel) Preconditions.checkNotNull(this.f31379a));
    }

    @NonNull
    /* renamed from: m0 */
    public C14472tt m56333m0(int i, ColorStateList colorStateList) {
        Context context = this.f31401w.getContext();
        C14472tt c14472tt = new C14472tt((ShapeAppearanceModel) Preconditions.checkNotNull(this.f31379a));
        c14472tt.m57449f(ContextCompat.getColor(context, C5139R.color.design_fab_stroke_top_outer_color), ContextCompat.getColor(context, C5139R.color.design_fab_stroke_top_inner_color), ContextCompat.getColor(context, C5139R.color.design_fab_stroke_end_inner_color), ContextCompat.getColor(context, C5139R.color.design_fab_stroke_end_outer_color));
        c14472tt.m57448e(i);
        c14472tt.m57447d(colorStateList);
        return c14472tt;
    }

    @Override // com.google.android.material.floatingactionbutton.C5284b
    /* renamed from: n */
    public float mo24160n() {
        return this.f31401w.getElevation();
    }

    @NonNull
    /* renamed from: n0 */
    public final StateListAnimator m56334n0(float f, float f2, float f3) {
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(C5284b.f31370W, m56335o0(f, f3));
        stateListAnimator.addState(C5284b.f31371X, m56335o0(f, f2));
        stateListAnimator.addState(C5284b.f31372Y, m56335o0(f, f2));
        stateListAnimator.addState(C5284b.f31373Z, m56335o0(f, f2));
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        arrayList.add(ObjectAnimator.ofFloat(this.f31401w, "elevation", f).setDuration(0L));
        arrayList.add(ObjectAnimator.ofFloat(this.f31401w, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
        animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
        animatorSet.setInterpolator(C5284b.f31351D);
        stateListAnimator.addState(C5284b.f31374a0, animatorSet);
        stateListAnimator.addState(C5284b.f31375b0, m56335o0(0.0f, 0.0f));
        return stateListAnimator;
    }

    @NonNull
    /* renamed from: o0 */
    public final Animator m56335o0(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f31401w, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f31401w, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(C5284b.f31351D);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.C5284b
    /* renamed from: s */
    public void mo24165s(@NonNull Rect rect) {
        if (this.f31402x.isCompatPaddingEnabled()) {
            super.mo24165s(rect);
        } else if (m24146f0()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.f31389k - this.f31401w.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C5284b
    /* renamed from: y */
    public void mo24171y(ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable drawable;
        MaterialShapeDrawable mo24157l = mo24157l();
        this.f31380b = mo24157l;
        mo24157l.setTintList(colorStateList);
        if (mode != null) {
            this.f31380b.setTintMode(mode);
        }
        this.f31380b.initializeElevationOverlay(this.f31401w.getContext());
        if (i > 0) {
            this.f31382d = m56333m0(i, colorStateList);
            drawable = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.checkNotNull(this.f31382d), (Drawable) Preconditions.checkNotNull(this.f31380b)});
        } else {
            this.f31382d = null;
            drawable = this.f31380b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(colorStateList2), drawable, null);
        this.f31381c = rippleDrawable;
        this.f31383e = rippleDrawable;
    }
}
