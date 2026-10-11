package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.cardview.widget.CardView;
import com.google.android.material.C5139R;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.sunia.HTREnginev2.w9j;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes6.dex */
public class MaterialCardView extends CardView implements Checkable, Shapeable {
    public static final int CHECKED_ICON_GRAVITY_BOTTOM_END = 8388693;
    public static final int CHECKED_ICON_GRAVITY_BOTTOM_START = 8388691;
    public static final int CHECKED_ICON_GRAVITY_TOP_END = 8388661;
    public static final int CHECKED_ICON_GRAVITY_TOP_START = 8388659;

    /* renamed from: s */
    public static final int[] f30607s = {R.attr.state_checkable};

    /* renamed from: t */
    public static final int[] f30608t = {R.attr.state_checked};

    /* renamed from: u */
    public static final int[] f30609u = {C5139R.attr.state_dragged};

    /* renamed from: v */
    public static final int f30610v = C5139R.style.Widget_MaterialComponents_CardView;

    /* renamed from: w */
    public static final String f30611w = "MaterialCardView";

    /* renamed from: x */
    public static final String f30612x = "androidx.cardview.widget.CardView";

    /* renamed from: n */
    @NonNull
    public final w9j f30613n;

    /* renamed from: o */
    public boolean f30614o;

    /* renamed from: p */
    public boolean f30615p;

    /* renamed from: q */
    public boolean f30616q;

    /* renamed from: r */
    public OnCheckedChangeListener f30617r;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface CheckedIconGravity {
    }

    /* loaded from: classes6.dex */
    public interface OnCheckedChangeListener {
        void onCheckedChanged(MaterialCardView materialCardView, boolean z);
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }

    @NonNull
    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f30613n.m57997l().getBounds());
        return rectF;
    }

    /* renamed from: e */
    public final void m23276e() {
        this.f30613n.m57995k();
    }

    /* renamed from: f */
    public void m23277f(int i, int i2, int i3, int i4) {
        super.setContentPadding(i, i2, i3, i4);
    }

    @Override // androidx.cardview.widget.CardView
    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return this.f30613n.m57999m();
    }

    @NonNull
    public ColorStateList getCardForegroundColor() {
        return this.f30613n.m58001n();
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.f30613n.m58002o();
    }

    public int getCheckedIconGravity() {
        return this.f30613n.m58003p();
    }

    @Dimension
    public int getCheckedIconMargin() {
        return this.f30613n.m58004q();
    }

    @Dimension
    public int getCheckedIconSize() {
        return this.f30613n.m58005r();
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.f30613n.m58006s();
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.f30613n.m57953C().bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.f30613n.m57953C().left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.f30613n.m57953C().right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.f30613n.m57953C().top;
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float getProgress() {
        return this.f30613n.m58010w();
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.f30613n.m58008u();
    }

    public ColorStateList getRippleColor() {
        return this.f30613n.m58011x();
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f30613n.m58012y();
    }

    @ColorInt
    @Deprecated
    public int getStrokeColor() {
        return this.f30613n.m58013z();
    }

    @Nullable
    public ColorStateList getStrokeColorStateList() {
        return this.f30613n.m57951A();
    }

    @Dimension
    public int getStrokeWidth() {
        return this.f30613n.m57952B();
    }

    public boolean isCheckable() {
        w9j w9jVar = this.f30613n;
        return w9jVar != null && w9jVar.m57956F();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f30615p;
    }

    public boolean isDragged() {
        return this.f30616q;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f30613n.m57988g0();
        MaterialShapeUtils.setParentAbsoluteElevation(this, this.f30613n.m57997l());
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (isCheckable()) {
            View.mergeDrawableStates(onCreateDrawableState, f30607s);
        }
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f30608t);
        }
        if (isDragged()) {
            View.mergeDrawableStates(onCreateDrawableState, f30609u);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(f30612x);
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(f30612x);
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f30613n.m57960K(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f30614o) {
            if (!this.f30613n.m57955E()) {
                Log.i(f30611w, "Setting a custom background is not supported.");
                this.f30613n.m57961L(true);
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@ColorInt int i) {
        this.f30613n.m57962M(ColorStateList.valueOf(i));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        this.f30613n.m57992i0();
    }

    public void setCardForegroundColor(@Nullable ColorStateList colorStateList) {
        this.f30613n.m57963N(colorStateList);
    }

    public void setCheckable(boolean z) {
        this.f30613n.m57964O(z);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f30615p != z) {
            toggle();
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        this.f30613n.m57967R(drawable);
    }

    public void setCheckedIconGravity(int i) {
        if (this.f30613n.m58003p() != i) {
            this.f30613n.m57968S(i);
        }
    }

    public void setCheckedIconMargin(@Dimension int i) {
        this.f30613n.m57969T(i);
    }

    public void setCheckedIconMarginResource(@DimenRes int i) {
        if (i != -1) {
            this.f30613n.m57969T(getResources().getDimensionPixelSize(i));
        }
    }

    public void setCheckedIconResource(@DrawableRes int i) {
        this.f30613n.m57967R(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setCheckedIconSize(@Dimension int i) {
        this.f30613n.m57970U(i);
    }

    public void setCheckedIconSizeResource(@DimenRes int i) {
        if (i != 0) {
            this.f30613n.m57970U(getResources().getDimensionPixelSize(i));
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        this.f30613n.m57971V(colorStateList);
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        w9j w9jVar = this.f30613n;
        if (w9jVar != null) {
            w9jVar.m57988g0();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.f30613n.m57980c0(i, i2, i3, i4);
    }

    public void setDragged(boolean z) {
        if (this.f30616q != z) {
            this.f30616q = z;
            refreshDrawableState();
            m23276e();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.f30613n.m57996k0();
    }

    public void setOnCheckedChangeListener(@Nullable OnCheckedChangeListener onCheckedChangeListener) {
        this.f30617r = onCheckedChangeListener;
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        this.f30613n.m57996k0();
        this.f30613n.m57990h0();
    }

    public void setProgress(@FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        this.f30613n.m57973X(f);
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f) {
        super.setRadius(f);
        this.f30613n.m57972W(f);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        this.f30613n.m57974Y(colorStateList);
    }

    public void setRippleColorResource(@ColorRes int i) {
        this.f30613n.m57974Y(AppCompatResources.getColorStateList(getContext(), i));
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        setClipToOutline(shapeAppearanceModel.isRoundRect(getBoundsAsRectF()));
        this.f30613n.m57975Z(shapeAppearanceModel);
    }

    public void setStrokeColor(@ColorInt int i) {
        setStrokeColor(ColorStateList.valueOf(i));
    }

    public void setStrokeWidth(@Dimension int i) {
        this.f30613n.m57978b0(i);
        invalidate();
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        this.f30613n.m57996k0();
        this.f30613n.m57990h0();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (isCheckable() && isEnabled()) {
            this.f30615p = !this.f30615p;
            refreshDrawableState();
            m23276e();
            this.f30613n.m57966Q(this.f30615p, true);
            OnCheckedChangeListener onCheckedChangeListener = this.f30617r;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.onCheckedChanged(this, this.f30615p);
            }
        }
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.materialCardViewStyle);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        this.f30613n.m57962M(colorStateList);
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f30613n.m57976a0(colorStateList);
        invalidate();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialCardView(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r6 = com.google.android.material.card.MaterialCardView.f30610v
            android.content.Context r8 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r8, r9, r10, r6)
            r7.<init>(r8, r9, r10)
            r8 = 0
            r7.f30615p = r8
            r7.f30616q = r8
            r0 = 1
            r7.f30614o = r0
            android.content.Context r0 = r7.getContext()
            int[] r2 = com.google.android.material.C5139R.styleable.MaterialCardView
            int[] r5 = new int[r8]
            r1 = r9
            r3 = r10
            r4 = r6
            android.content.res.TypedArray r8 = com.google.android.material.internal.ThemeEnforcement.obtainStyledAttributes(r0, r1, r2, r3, r4, r5)
            com.sunia.HTREnginev2.w9j r0 = new com.sunia.HTREnginev2.w9j
            r0.<init>(r7, r9, r10, r6)
            r7.f30613n = r0
            android.content.res.ColorStateList r9 = super.getCardBackgroundColor()
            r0.m57962M(r9)
            int r9 = super.getContentPaddingLeft()
            int r10 = super.getContentPaddingTop()
            int r1 = super.getContentPaddingRight()
            int r7 = super.getContentPaddingBottom()
            r0.m57980c0(r9, r10, r1, r7)
            r0.m57959J(r8)
            r8.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.card.MaterialCardView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
