package com.google.android.material.materialswitch;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.material.C5139R;
import com.google.android.material.drawable.DrawableUtils;

/* loaded from: classes6.dex */
public class MaterialSwitch extends SwitchCompat {

    /* renamed from: h1 */
    public static final int f31714h1 = C5139R.style.Widget_Material3_CompoundButton_MaterialSwitch;

    /* renamed from: i1 */
    public static final int[] f31715i1 = {C5139R.attr.state_with_icon};

    /* renamed from: U0 */
    @Nullable
    public Drawable f31716U0;

    /* renamed from: V0 */
    @Nullable
    public Drawable f31717V0;

    /* renamed from: W0 */
    @Px
    public int f31718W0;

    /* renamed from: X0 */
    @Nullable
    public Drawable f31719X0;

    /* renamed from: Y0 */
    @Nullable
    public Drawable f31720Y0;

    /* renamed from: Z0 */
    @Nullable
    public ColorStateList f31721Z0;

    /* renamed from: a1 */
    @Nullable
    public ColorStateList f31722a1;

    /* renamed from: b1 */
    @NonNull
    public PorterDuff.Mode f31723b1;

    /* renamed from: c1 */
    @Nullable
    public ColorStateList f31724c1;

    /* renamed from: d1 */
    @Nullable
    public ColorStateList f31725d1;

    /* renamed from: e1 */
    @NonNull
    public PorterDuff.Mode f31726e1;

    /* renamed from: f1 */
    public int[] f31727f1;

    /* renamed from: g1 */
    public int[] f31728g1;

    public MaterialSwitch(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: r */
    public static void m24320r(@Nullable Drawable drawable, @Nullable ColorStateList colorStateList, @NonNull int[] iArr, @NonNull int[] iArr2, float f) {
        if (drawable == null || colorStateList == null) {
            return;
        }
        DrawableCompat.setTint(drawable, ColorUtils.blendARGB(colorStateList.getColorForState(iArr, 0), colorStateList.getColorForState(iArr2, 0), f));
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public Drawable getThumbDrawable() {
        return this.f31716U0;
    }

    @Nullable
    public Drawable getThumbIconDrawable() {
        return this.f31717V0;
    }

    @Px
    public int getThumbIconSize() {
        return this.f31718W0;
    }

    @Nullable
    public ColorStateList getThumbIconTintList() {
        return this.f31722a1;
    }

    @NonNull
    public PorterDuff.Mode getThumbIconTintMode() {
        return this.f31723b1;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public ColorStateList getThumbTintList() {
        return this.f31721Z0;
    }

    @Nullable
    public Drawable getTrackDecorationDrawable() {
        return this.f31720Y0;
    }

    @Nullable
    public ColorStateList getTrackDecorationTintList() {
        return this.f31725d1;
    }

    @NonNull
    public PorterDuff.Mode getTrackDecorationTintMode() {
        return this.f31726e1;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public Drawable getTrackDrawable() {
        return this.f31719X0;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public ColorStateList getTrackTintList() {
        return this.f31724c1;
    }

    @Override // android.view.View
    public void invalidate() {
        m24323s();
        super.invalidate();
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.f31717V0 != null) {
            View.mergeDrawableStates(onCreateDrawableState, f31715i1);
        }
        this.f31727f1 = DrawableUtils.getUncheckedState(onCreateDrawableState);
        this.f31728g1 = DrawableUtils.getCheckedState(onCreateDrawableState);
        return onCreateDrawableState;
    }

    /* renamed from: p */
    public final void m24321p() {
        this.f31716U0 = DrawableUtils.createTintableDrawableIfNeeded(this.f31716U0, this.f31721Z0, getThumbTintMode());
        this.f31717V0 = DrawableUtils.createTintableDrawableIfNeeded(this.f31717V0, this.f31722a1, this.f31723b1);
        m24323s();
        Drawable drawable = this.f31716U0;
        Drawable drawable2 = this.f31717V0;
        int i = this.f31718W0;
        super.setThumbDrawable(DrawableUtils.compositeTwoLayeredDrawable(drawable, drawable2, i, i));
        refreshDrawableState();
    }

    /* renamed from: q */
    public final void m24322q() {
        this.f31719X0 = DrawableUtils.createTintableDrawableIfNeeded(this.f31719X0, this.f31724c1, getTrackTintMode());
        this.f31720Y0 = DrawableUtils.createTintableDrawableIfNeeded(this.f31720Y0, this.f31725d1, this.f31726e1);
        m24323s();
        Drawable drawable = this.f31719X0;
        if (drawable != null && this.f31720Y0 != null) {
            drawable = new LayerDrawable(new Drawable[]{this.f31719X0, this.f31720Y0});
        } else if (drawable == null) {
            drawable = this.f31720Y0;
        }
        if (drawable != null) {
            setSwitchMinWidth(drawable.getIntrinsicWidth());
        }
        super.setTrackDrawable(drawable);
    }

    /* renamed from: s */
    public final void m24323s() {
        if (this.f31721Z0 == null && this.f31722a1 == null && this.f31724c1 == null && this.f31725d1 == null) {
            return;
        }
        float thumbPosition = getThumbPosition();
        ColorStateList colorStateList = this.f31721Z0;
        if (colorStateList != null) {
            m24320r(this.f31716U0, colorStateList, this.f31727f1, this.f31728g1, thumbPosition);
        }
        ColorStateList colorStateList2 = this.f31722a1;
        if (colorStateList2 != null) {
            m24320r(this.f31717V0, colorStateList2, this.f31727f1, this.f31728g1, thumbPosition);
        }
        ColorStateList colorStateList3 = this.f31724c1;
        if (colorStateList3 != null) {
            m24320r(this.f31719X0, colorStateList3, this.f31727f1, this.f31728g1, thumbPosition);
        }
        ColorStateList colorStateList4 = this.f31725d1;
        if (colorStateList4 != null) {
            m24320r(this.f31720Y0, colorStateList4, this.f31727f1, this.f31728g1, thumbPosition);
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbDrawable(@Nullable Drawable drawable) {
        this.f31716U0 = drawable;
        m24321p();
    }

    public void setThumbIconDrawable(@Nullable Drawable drawable) {
        this.f31717V0 = drawable;
        m24321p();
    }

    public void setThumbIconResource(@DrawableRes int i) {
        setThumbIconDrawable(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setThumbIconSize(@Px int i) {
        if (this.f31718W0 != i) {
            this.f31718W0 = i;
            m24321p();
        }
    }

    public void setThumbIconTintList(@Nullable ColorStateList colorStateList) {
        this.f31722a1 = colorStateList;
        m24321p();
    }

    public void setThumbIconTintMode(@NonNull PorterDuff.Mode mode) {
        this.f31723b1 = mode;
        m24321p();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.f31721Z0 = colorStateList;
        m24321p();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        super.setThumbTintMode(mode);
        m24321p();
    }

    public void setTrackDecorationDrawable(@Nullable Drawable drawable) {
        this.f31720Y0 = drawable;
        m24322q();
    }

    public void setTrackDecorationResource(@DrawableRes int i) {
        setTrackDecorationDrawable(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setTrackDecorationTintList(@Nullable ColorStateList colorStateList) {
        this.f31725d1 = colorStateList;
        m24322q();
    }

    public void setTrackDecorationTintMode(@NonNull PorterDuff.Mode mode) {
        this.f31726e1 = mode;
        m24322q();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackDrawable(@Nullable Drawable drawable) {
        this.f31719X0 = drawable;
        m24322q();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.f31724c1 = colorStateList;
        m24322q();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        super.setTrackTintMode(mode);
        m24322q();
    }

    public MaterialSwitch(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.materialSwitchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialSwitch(@androidx.annotation.NonNull android.content.Context r8, @androidx.annotation.Nullable android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r4 = com.google.android.material.materialswitch.MaterialSwitch.f31714h1
            android.content.Context r8 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r8, r9, r10, r4)
            r7.<init>(r8, r9, r10)
            r8 = -1
            r7.f31718W0 = r8
            android.content.Context r0 = r7.getContext()
            android.graphics.drawable.Drawable r1 = super.getThumbDrawable()
            r7.f31716U0 = r1
            android.content.res.ColorStateList r1 = super.getThumbTintList()
            r7.f31721Z0 = r1
            r1 = 0
            super.setThumbTintList(r1)
            android.graphics.drawable.Drawable r2 = super.getTrackDrawable()
            r7.f31719X0 = r2
            android.content.res.ColorStateList r2 = super.getTrackTintList()
            r7.f31724c1 = r2
            super.setTrackTintList(r1)
            int[] r2 = com.google.android.material.C5139R.styleable.MaterialSwitch
            r6 = 0
            int[] r5 = new int[r6]
            r1 = r9
            r3 = r10
            androidx.appcompat.widget.TintTypedArray r9 = com.google.android.material.internal.ThemeEnforcement.obtainTintedStyledAttributes(r0, r1, r2, r3, r4, r5)
            int r10 = com.google.android.material.C5139R.styleable.MaterialSwitch_thumbIcon
            android.graphics.drawable.Drawable r10 = r9.getDrawable(r10)
            r7.f31717V0 = r10
            int r10 = com.google.android.material.C5139R.styleable.MaterialSwitch_thumbIconSize
            int r10 = r9.getDimensionPixelSize(r10, r8)
            r7.f31718W0 = r10
            int r10 = com.google.android.material.C5139R.styleable.MaterialSwitch_thumbIconTint
            android.content.res.ColorStateList r10 = r9.getColorStateList(r10)
            r7.f31722a1 = r10
            int r10 = com.google.android.material.C5139R.styleable.MaterialSwitch_thumbIconTintMode
            int r10 = r9.getInt(r10, r8)
            android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.SRC_IN
            android.graphics.PorterDuff$Mode r10 = com.google.android.material.internal.ViewUtils.parseTintMode(r10, r0)
            r7.f31723b1 = r10
            int r10 = com.google.android.material.C5139R.styleable.MaterialSwitch_trackDecoration
            android.graphics.drawable.Drawable r10 = r9.getDrawable(r10)
            r7.f31720Y0 = r10
            int r10 = com.google.android.material.C5139R.styleable.MaterialSwitch_trackDecorationTint
            android.content.res.ColorStateList r10 = r9.getColorStateList(r10)
            r7.f31725d1 = r10
            int r10 = com.google.android.material.C5139R.styleable.MaterialSwitch_trackDecorationTintMode
            int r8 = r9.getInt(r10, r8)
            android.graphics.PorterDuff$Mode r10 = android.graphics.PorterDuff.Mode.SRC_IN
            android.graphics.PorterDuff$Mode r8 = com.google.android.material.internal.ViewUtils.parseTintMode(r8, r10)
            r7.f31726e1 = r8
            r9.recycle()
            r7.setEnforceSwitchWidth(r6)
            r7.m24321p()
            r7.m24322q()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.materialswitch.MaterialSwitch.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
