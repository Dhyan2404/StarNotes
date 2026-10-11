package com.google.android.material.checkbox;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import com.google.android.material.C5139R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ViewUtils;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes6.dex */
public class MaterialCheckBox extends AppCompatCheckBox {
    public static final int STATE_CHECKED = 1;
    public static final int STATE_INDETERMINATE = 2;
    public static final int STATE_UNCHECKED = 0;

    /* renamed from: q0 */
    public static final int[] f30701q0;

    /* renamed from: t0 */
    public static final int[][] f30702t0;

    /* renamed from: u0 */
    @SuppressLint({"DiscouragedApi"})
    public static final int f30703u0;

    /* renamed from: J */
    @Nullable
    public final AnimatedVectorDrawableCompat f30704J;

    /* renamed from: O */
    public final Animatable2Compat.AnimationCallback f30705O;

    /* renamed from: i */
    @NonNull
    public final LinkedHashSet<OnErrorChangedListener> f30706i;

    /* renamed from: j */
    @NonNull
    public final LinkedHashSet<OnCheckedStateChangedListener> f30707j;

    /* renamed from: k */
    @Nullable
    public ColorStateList f30708k;

    /* renamed from: l */
    public boolean f30709l;

    /* renamed from: m */
    public boolean f30710m;

    /* renamed from: n */
    public boolean f30711n;

    /* renamed from: o */
    @Nullable
    public CharSequence f30712o;

    /* renamed from: p */
    @Nullable
    public Drawable f30713p;

    /* renamed from: q */
    @Nullable
    public Drawable f30714q;

    /* renamed from: r */
    public boolean f30715r;

    /* renamed from: s */
    @Nullable
    public ColorStateList f30716s;

    /* renamed from: t */
    @Nullable
    public ColorStateList f30717t;

    /* renamed from: u */
    @NonNull
    public PorterDuff.Mode f30718u;

    /* renamed from: v */
    public int f30719v;

    /* renamed from: w */
    public int[] f30720w;

    /* renamed from: x */
    public boolean f30721x;

    /* renamed from: y */
    @Nullable
    public CharSequence f30722y;

    /* renamed from: z */
    @Nullable
    public CompoundButton.OnCheckedChangeListener f30723z;

    /* renamed from: Q */
    public static final int f30699Q = C5139R.style.Widget_MaterialComponents_CompoundButton_CheckBox;

    /* renamed from: k0 */
    public static final int[] f30700k0 = {C5139R.attr.state_indeterminate};

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface CheckedState {
    }

    /* loaded from: classes6.dex */
    public interface OnCheckedStateChangedListener {
        void onCheckedStateChangedListener(@NonNull MaterialCheckBox materialCheckBox, int i);
    }

    /* loaded from: classes6.dex */
    public interface OnErrorChangedListener {
        void onErrorChanged(@NonNull MaterialCheckBox materialCheckBox, boolean z);
    }

    /* loaded from: classes6.dex */
    public static class SavedState extends View.BaseSavedState {

        @NonNull
        public static final Parcelable.Creator<SavedState> CREATOR = new C5203a();
        int checkedState;

        /* renamed from: com.google.android.material.checkbox.MaterialCheckBox$SavedState$a */
        /* loaded from: classes6.dex */
        public class C5203a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public /* synthetic */ SavedState(Parcel parcel, C5204a c5204a) {
            this(parcel);
        }

        @NonNull
        private String getCheckedStateString() {
            int i = this.checkedState;
            return i != 1 ? i != 2 ? "unchecked" : "indeterminate" : "checked";
        }

        @NonNull
        public String toString() {
            return "MaterialCheckBox.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " CheckedState=" + getCheckedStateString() + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Integer.valueOf(this.checkedState));
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.checkedState = ((Integer) parcel.readValue(getClass().getClassLoader())).intValue();
        }
    }

    /* renamed from: com.google.android.material.checkbox.MaterialCheckBox$a */
    /* loaded from: classes6.dex */
    public class C5204a extends Animatable2Compat.AnimationCallback {
        public C5204a() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            super.onAnimationEnd(drawable);
            ColorStateList colorStateList = MaterialCheckBox.this.f30716s;
            if (colorStateList != null) {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationStart(Drawable drawable) {
            super.onAnimationStart(drawable);
            MaterialCheckBox materialCheckBox = MaterialCheckBox.this;
            ColorStateList colorStateList = materialCheckBox.f30716s;
            if (colorStateList != null) {
                DrawableCompat.setTint(drawable, colorStateList.getColorForState(materialCheckBox.f30720w, MaterialCheckBox.this.f30716s.getDefaultColor()));
            }
        }
    }

    static {
        int i = C5139R.attr.state_error;
        f30701q0 = new int[]{i};
        f30702t0 = new int[][]{new int[]{R.attr.state_enabled, i}, new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
        f30703u0 = Resources.getSystem().getIdentifier("btn_check_material_anim", ResourceManager.f46830c, "android");
    }

    public MaterialCheckBox(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m23419d() {
        this.f30714q.jumpToCurrentState();
    }

    @NonNull
    private String getButtonStateDescription() {
        int i = this.f30719v;
        return i == 1 ? getResources().getString(C5139R.string.mtrl_checkbox_state_description_checked) : i == 0 ? getResources().getString(C5139R.string.mtrl_checkbox_state_description_unchecked) : getResources().getString(C5139R.string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f30708k == null) {
            int[][] iArr = f30702t0;
            int[] iArr2 = new int[iArr.length];
            int color = MaterialColors.getColor(this, C5139R.attr.colorControlActivated);
            int color2 = MaterialColors.getColor(this, C5139R.attr.colorError);
            int color3 = MaterialColors.getColor(this, C5139R.attr.colorSurface);
            int color4 = MaterialColors.getColor(this, C5139R.attr.colorOnSurface);
            iArr2[0] = MaterialColors.layer(color3, color2, 1.0f);
            iArr2[1] = MaterialColors.layer(color3, color, 1.0f);
            iArr2[2] = MaterialColors.layer(color3, color4, 0.54f);
            iArr2[3] = MaterialColors.layer(color3, color4, 0.38f);
            iArr2[4] = MaterialColors.layer(color3, color4, 0.38f);
            this.f30708k = new ColorStateList(iArr, iArr2);
        }
        return this.f30708k;
    }

    @Nullable
    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.f30716s;
        return colorStateList != null ? colorStateList : super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    public void addOnCheckedStateChangedListener(@NonNull OnCheckedStateChangedListener onCheckedStateChangedListener) {
        this.f30707j.add(onCheckedStateChangedListener);
    }

    public void addOnErrorChangedListener(@NonNull OnErrorChangedListener onErrorChangedListener) {
        this.f30706i.add(onErrorChangedListener);
    }

    /* renamed from: c */
    public final boolean m23420c(TintTypedArray tintTypedArray) {
        return tintTypedArray.getResourceId(C5139R.styleable.MaterialCheckBox_android_button, 0) == f30703u0 && tintTypedArray.getResourceId(C5139R.styleable.MaterialCheckBox_buttonCompat, 0) == 0;
    }

    public void clearOnCheckedStateChangedListeners() {
        this.f30707j.clear();
    }

    public void clearOnErrorChangedListeners() {
        this.f30706i.clear();
    }

    /* renamed from: e */
    public final void m23421e() {
        this.f30713p = DrawableUtils.createTintableMutatedDrawableIfNeeded(this.f30713p, this.f30716s, CompoundButtonCompat.getButtonTintMode(this));
        this.f30714q = DrawableUtils.createTintableMutatedDrawableIfNeeded(this.f30714q, this.f30717t, this.f30718u);
        m23423g();
        m23424h();
        super.setButtonDrawable(DrawableUtils.compositeTwoLayeredDrawable(this.f30713p, this.f30714q));
        refreshDrawableState();
    }

    /* renamed from: f */
    public final void m23422f() {
        if (Build.VERSION.SDK_INT < 30 || this.f30722y != null) {
            return;
        }
        super.setStateDescription(getButtonStateDescription());
    }

    /* renamed from: g */
    public final void m23423g() {
        AnimatedVectorDrawableCompat animatedVectorDrawableCompat;
        if (this.f30715r) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat2 = this.f30704J;
            if (animatedVectorDrawableCompat2 != null) {
                animatedVectorDrawableCompat2.unregisterAnimationCallback(this.f30705O);
                this.f30704J.registerAnimationCallback(this.f30705O);
            }
            Drawable drawable = this.f30713p;
            if (!(drawable instanceof AnimatedStateListDrawable) || (animatedVectorDrawableCompat = this.f30704J) == null) {
                return;
            }
            ((AnimatedStateListDrawable) drawable).addTransition(C5139R.id.checked, C5139R.id.unchecked, animatedVectorDrawableCompat, false);
            ((AnimatedStateListDrawable) this.f30713p).addTransition(C5139R.id.indeterminate, C5139R.id.unchecked, this.f30704J, false);
        }
    }

    @Override // android.widget.CompoundButton
    @Nullable
    public Drawable getButtonDrawable() {
        return this.f30713p;
    }

    @Nullable
    public Drawable getButtonIconDrawable() {
        return this.f30714q;
    }

    @Nullable
    public ColorStateList getButtonIconTintList() {
        return this.f30717t;
    }

    @NonNull
    public PorterDuff.Mode getButtonIconTintMode() {
        return this.f30718u;
    }

    @Override // android.widget.CompoundButton
    @Nullable
    public ColorStateList getButtonTintList() {
        return this.f30716s;
    }

    public int getCheckedState() {
        return this.f30719v;
    }

    @Nullable
    public CharSequence getErrorAccessibilityLabel() {
        return this.f30712o;
    }

    /* renamed from: h */
    public final void m23424h() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        Drawable drawable = this.f30713p;
        if (drawable != null && (colorStateList2 = this.f30716s) != null) {
            DrawableCompat.setTintList(drawable, colorStateList2);
        }
        Drawable drawable2 = this.f30714q;
        if (drawable2 == null || (colorStateList = this.f30717t) == null) {
            return;
        }
        DrawableCompat.setTintList(drawable2, colorStateList);
    }

    /* renamed from: i */
    public final void m23425i() {
    }

    public boolean isCenterIfNoTextEnabled() {
        return this.f30710m;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public boolean isChecked() {
        return this.f30719v == 1;
    }

    public boolean isErrorShown() {
        return this.f30711n;
    }

    public boolean isUseMaterialThemeColors() {
        return this.f30709l;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f30709l && this.f30716s == null && this.f30717t == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(onCreateDrawableState, f30700k0);
        }
        if (isErrorShown()) {
            View.mergeDrawableStates(onCreateDrawableState, f30701q0);
        }
        this.f30720w = DrawableUtils.getCheckedState(onCreateDrawableState);
        m23425i();
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (!this.f30710m || !TextUtils.isEmpty(getText()) || (buttonDrawable = CompoundButtonCompat.getButtonDrawable(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - buttonDrawable.getIntrinsicWidth()) / 2) * (ViewUtils.isLayoutRtl(this) ? -1 : 1);
        int save = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(save);
        if (getBackground() != null) {
            Rect bounds = buttonDrawable.getBounds();
            DrawableCompat.setHotspotBounds(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@Nullable AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && isErrorShown()) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.f30712o));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCheckedState(savedState.checkedState);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.checkedState = getCheckedState();
        return savedState;
    }

    public void removeOnCheckedStateChangedListener(@NonNull OnCheckedStateChangedListener onCheckedStateChangedListener) {
        this.f30707j.remove(onCheckedStateChangedListener);
    }

    public void removeOnErrorChangedListener(@NonNull OnErrorChangedListener onErrorChangedListener) {
        this.f30706i.remove(onErrorChangedListener);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(@DrawableRes int i) {
        setButtonDrawable(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setButtonIconDrawable(@Nullable Drawable drawable) {
        this.f30714q = drawable;
        m23421e();
    }

    public void setButtonIconDrawableResource(@DrawableRes int i) {
        setButtonIconDrawable(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setButtonIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.f30717t == colorStateList) {
            return;
        }
        this.f30717t = colorStateList;
        m23421e();
    }

    public void setButtonIconTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.f30718u == mode) {
            return;
        }
        this.f30718u = mode;
        m23421e();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(@Nullable ColorStateList colorStateList) {
        if (this.f30716s == colorStateList) {
            return;
        }
        this.f30716s = colorStateList;
        m23421e();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        m23421e();
    }

    public void setCenterIfNoTextEnabled(boolean z) {
        this.f30710m = z;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedState(z ? 1 : 0);
    }

    public void setCheckedState(int i) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.f30719v != i) {
            this.f30719v = i;
            super.setChecked(i == 1);
            refreshDrawableState();
            m23422f();
            if (this.f30721x) {
                return;
            }
            this.f30721x = true;
            LinkedHashSet<OnCheckedStateChangedListener> linkedHashSet = this.f30707j;
            if (linkedHashSet != null) {
                Iterator<OnCheckedStateChangedListener> it2 = linkedHashSet.iterator();
                while (it2.hasNext()) {
                    it2.next().onCheckedStateChangedListener(this, this.f30719v);
                }
            }
            if (this.f30719v != 2 && (onCheckedChangeListener = this.f30723z) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            AutofillManager autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class);
            if (autofillManager != null) {
                autofillManager.notifyValueChanged(this);
            }
            this.f30721x = false;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        m23425i();
    }

    public void setErrorAccessibilityLabel(@Nullable CharSequence charSequence) {
        this.f30712o = charSequence;
    }

    public void setErrorAccessibilityLabelResource(@StringRes int i) {
        setErrorAccessibilityLabel(i != 0 ? getResources().getText(i) : null);
    }

    public void setErrorShown(boolean z) {
        if (this.f30711n == z) {
            return;
        }
        this.f30711n = z;
        refreshDrawableState();
        Iterator<OnErrorChangedListener> it2 = this.f30706i.iterator();
        while (it2.hasNext()) {
            it2.next().onErrorChanged(this, this.f30711n);
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f30723z = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    @RequiresApi(30)
    public void setStateDescription(@Nullable CharSequence charSequence) {
        this.f30722y = charSequence;
        if (charSequence == null) {
            m23422f();
        } else {
            super.setStateDescription(charSequence);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f30709l = z;
        if (z) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    public MaterialCheckBox(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.checkboxStyle);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(@Nullable Drawable drawable) {
        this.f30713p = drawable;
        this.f30715r = false;
        m23421e();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialCheckBox(android.content.Context r9, @androidx.annotation.Nullable android.util.AttributeSet r10, int r11) {
        /*
            r8 = this;
            int r4 = com.google.android.material.checkbox.MaterialCheckBox.f30699Q
            android.content.Context r9 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r9, r10, r11, r4)
            r8.<init>(r9, r10, r11)
            java.util.LinkedHashSet r9 = new java.util.LinkedHashSet
            r9.<init>()
            r8.f30706i = r9
            java.util.LinkedHashSet r9 = new java.util.LinkedHashSet
            r9.<init>()
            r8.f30707j = r9
            android.content.Context r9 = r8.getContext()
            int r0 = com.google.android.material.C5139R.drawable.mtrl_checkbox_button_checked_unchecked
            androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat r9 = androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.create(r9, r0)
            r8.f30704J = r9
            com.google.android.material.checkbox.MaterialCheckBox$a r9 = new com.google.android.material.checkbox.MaterialCheckBox$a
            r9.<init>()
            r8.f30705O = r9
            android.content.Context r9 = r8.getContext()
            android.graphics.drawable.Drawable r0 = androidx.core.widget.CompoundButtonCompat.getButtonDrawable(r8)
            r8.f30713p = r0
            android.content.res.ColorStateList r0 = r8.getSuperButtonTintList()
            r8.f30716s = r0
            r6 = 0
            r8.setSupportButtonTintList(r6)
            int[] r2 = com.google.android.material.C5139R.styleable.MaterialCheckBox
            r7 = 0
            int[] r5 = new int[r7]
            r0 = r9
            r1 = r10
            r3 = r11
            androidx.appcompat.widget.TintTypedArray r10 = com.google.android.material.internal.ThemeEnforcement.obtainTintedStyledAttributes(r0, r1, r2, r3, r4, r5)
            int r11 = com.google.android.material.C5139R.styleable.MaterialCheckBox_buttonIcon
            android.graphics.drawable.Drawable r11 = r10.getDrawable(r11)
            r8.f30714q = r11
            android.graphics.drawable.Drawable r11 = r8.f30713p
            r0 = 1
            if (r11 == 0) goto L7c
            boolean r11 = com.google.android.material.internal.ThemeEnforcement.isMaterial3Theme(r9)
            if (r11 == 0) goto L7c
            boolean r11 = r8.m23420c(r10)
            if (r11 == 0) goto L7c
            super.setButtonDrawable(r6)
            int r11 = com.google.android.material.C5139R.drawable.mtrl_checkbox_button
            android.graphics.drawable.Drawable r11 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r9, r11)
            r8.f30713p = r11
            r8.f30715r = r0
            android.graphics.drawable.Drawable r11 = r8.f30714q
            if (r11 != 0) goto L7c
            int r11 = com.google.android.material.C5139R.drawable.mtrl_checkbox_button_icon
            android.graphics.drawable.Drawable r11 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r9, r11)
            r8.f30714q = r11
        L7c:
            int r11 = com.google.android.material.C5139R.styleable.MaterialCheckBox_buttonIconTint
            android.content.res.ColorStateList r9 = com.google.android.material.resources.MaterialResources.getColorStateList(r9, r10, r11)
            r8.f30717t = r9
            int r9 = com.google.android.material.C5139R.styleable.MaterialCheckBox_buttonIconTintMode
            r11 = -1
            int r9 = r10.getInt(r9, r11)
            android.graphics.PorterDuff$Mode r11 = android.graphics.PorterDuff.Mode.SRC_IN
            android.graphics.PorterDuff$Mode r9 = com.google.android.material.internal.ViewUtils.parseTintMode(r9, r11)
            r8.f30718u = r9
            int r9 = com.google.android.material.C5139R.styleable.MaterialCheckBox_useMaterialThemeColors
            boolean r9 = r10.getBoolean(r9, r7)
            r8.f30709l = r9
            int r9 = com.google.android.material.C5139R.styleable.MaterialCheckBox_centerIfNoTextEnabled
            boolean r9 = r10.getBoolean(r9, r0)
            r8.f30710m = r9
            int r9 = com.google.android.material.C5139R.styleable.MaterialCheckBox_errorShown
            boolean r9 = r10.getBoolean(r9, r7)
            r8.f30711n = r9
            int r9 = com.google.android.material.C5139R.styleable.MaterialCheckBox_errorAccessibilityLabel
            java.lang.CharSequence r9 = r10.getText(r9)
            r8.f30712o = r9
            int r9 = com.google.android.material.C5139R.styleable.MaterialCheckBox_checkedState
            boolean r9 = r10.hasValue(r9)
            if (r9 == 0) goto Lc4
            int r9 = com.google.android.material.C5139R.styleable.MaterialCheckBox_checkedState
            int r9 = r10.getInt(r9, r7)
            r8.setCheckedState(r9)
        Lc4:
            r10.recycle()
            r8.m23421e()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.checkbox.MaterialCheckBox.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
