package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C5139R;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.sunia.HTREnginev2.u9j;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes6.dex */
public class MaterialButton extends AppCompatButton implements Checkable, Shapeable {
    public static final int ICON_GRAVITY_END = 3;
    public static final int ICON_GRAVITY_START = 1;
    public static final int ICON_GRAVITY_TEXT_END = 4;
    public static final int ICON_GRAVITY_TEXT_START = 2;
    public static final int ICON_GRAVITY_TEXT_TOP = 32;
    public static final int ICON_GRAVITY_TOP = 16;

    /* renamed from: x */
    public static final String f30569x = "MaterialButton";

    /* renamed from: h */
    @NonNull
    public final u9j f30571h;

    /* renamed from: i */
    @NonNull
    public final LinkedHashSet<OnCheckedChangeListener> f30572i;

    /* renamed from: j */
    @Nullable
    public InterfaceC5189a f30573j;

    /* renamed from: k */
    @Nullable
    public PorterDuff.Mode f30574k;

    /* renamed from: l */
    @Nullable
    public ColorStateList f30575l;

    /* renamed from: m */
    @Nullable
    public Drawable f30576m;

    /* renamed from: n */
    @Nullable
    public String f30577n;

    /* renamed from: o */
    @Px
    public int f30578o;

    /* renamed from: p */
    @Px
    public int f30579p;

    /* renamed from: q */
    @Px
    public int f30580q;

    /* renamed from: r */
    @Px
    public int f30581r;

    /* renamed from: s */
    public boolean f30582s;

    /* renamed from: t */
    public boolean f30583t;

    /* renamed from: u */
    public int f30584u;

    /* renamed from: v */
    public static final int[] f30567v = {R.attr.state_checkable};

    /* renamed from: w */
    public static final int[] f30568w = {R.attr.state_checked};

    /* renamed from: y */
    public static final int f30570y = C5139R.style.Widget_MaterialComponents_Button;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface IconGravity {
    }

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes6.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<MaterialButton> {

        /* renamed from: a */
        public boolean f30585a = false;

        /* renamed from: b */
        public int f30586b;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f30586b = propertyMapper.mapInt("iconPadding", C5139R.attr.iconPadding);
            this.f30585a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull MaterialButton materialButton, @NonNull PropertyReader propertyReader) {
            if (this.f30585a) {
                propertyReader.readInt(this.f30586b, materialButton.getIconPadding());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    /* loaded from: classes6.dex */
    public interface OnCheckedChangeListener {
        void onCheckedChanged(MaterialButton materialButton, boolean z);
    }

    /* loaded from: classes6.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C5188a();
        boolean checked;

        /* renamed from: com.google.android.material.button.MaterialButton$SavedState$a */
        /* loaded from: classes6.dex */
        public class C5188a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void readFromParcel(@NonNull Parcel parcel) {
            this.checked = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.checked ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            readFromParcel(parcel);
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButton$a */
    /* loaded from: classes6.dex */
    public interface InterfaceC5189a {
        /* renamed from: a */
        void mo23250a(MaterialButton materialButton, boolean z);
    }

    public MaterialButton(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: d */
    private boolean m23239d() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        return textAlignment != 1 ? (textAlignment == 6 || textAlignment == 3) ? Layout.Alignment.ALIGN_OPPOSITE : textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER : getGravityTextAlignment();
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        return gravity != 1 ? (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float f = 0.0f;
        for (int i = 0; i < lineCount; i++) {
            f = Math.max(f, getLayout().getLineWidth(i));
        }
        return (int) Math.ceil(f);
    }

    /* renamed from: a */
    public final boolean m23240a() {
        int i = this.f30584u;
        return i == 3 || i == 4;
    }

    public void addOnCheckedChangeListener(@NonNull OnCheckedChangeListener onCheckedChangeListener) {
        this.f30572i.add(onCheckedChangeListener);
    }

    /* renamed from: b */
    public final boolean m23241b() {
        int i = this.f30584u;
        return i == 1 || i == 2;
    }

    /* renamed from: c */
    public final boolean m23242c() {
        int i = this.f30584u;
        return i == 16 || i == 32;
    }

    public void clearOnCheckedChangeListeners() {
        this.f30572i.clear();
    }

    /* renamed from: e */
    public final boolean m23243e() {
        u9j u9jVar = this.f30571h;
        return (u9jVar == null || u9jVar.m57589o()) ? false : true;
    }

    /* renamed from: f */
    public final void m23244f() {
        if (m23241b()) {
            TextViewCompat.setCompoundDrawablesRelative(this, this.f30576m, null, null, null);
        } else if (m23240a()) {
            TextViewCompat.setCompoundDrawablesRelative(this, null, null, this.f30576m, null);
        } else if (m23242c()) {
            TextViewCompat.setCompoundDrawablesRelative(this, null, this.f30576m, null, null);
        }
    }

    /* renamed from: g */
    public final void m23245g(boolean z) {
        Drawable drawable = this.f30576m;
        boolean z2 = true;
        if (drawable != null) {
            Drawable mutate = DrawableCompat.wrap(drawable).mutate();
            this.f30576m = mutate;
            DrawableCompat.setTintList(mutate, this.f30575l);
            PorterDuff.Mode mode = this.f30574k;
            if (mode != null) {
                DrawableCompat.setTintMode(this.f30576m, mode);
            }
            int i = this.f30578o;
            if (i == 0) {
                i = this.f30576m.getIntrinsicWidth();
            }
            int i2 = this.f30578o;
            if (i2 == 0) {
                i2 = this.f30576m.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f30576m;
            int i3 = this.f30579p;
            int i4 = this.f30580q;
            drawable2.setBounds(i3, i4, i + i3, i2 + i4);
            this.f30576m.setVisible(true, z);
        }
        if (z) {
            m23244f();
            return;
        }
        Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this);
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        if ((!m23241b() || drawable3 == this.f30576m) && ((!m23240a() || drawable5 == this.f30576m) && (!m23242c() || drawable4 == this.f30576m))) {
            z2 = false;
        }
        if (z2) {
            m23244f();
        }
    }

    @NonNull
    public String getA11yClassName() {
        if (TextUtils.isEmpty(this.f30577n)) {
            return (isCheckable() ? CompoundButton.class : Button.class).getName();
        }
        return this.f30577n;
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Px
    public int getCornerRadius() {
        if (m23243e()) {
            return this.f30571h.m57576b();
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f30576m;
    }

    public int getIconGravity() {
        return this.f30584u;
    }

    @Px
    public int getIconPadding() {
        return this.f30581r;
    }

    @Px
    public int getIconSize() {
        return this.f30578o;
    }

    public ColorStateList getIconTint() {
        return this.f30575l;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f30574k;
    }

    @Dimension
    public int getInsetBottom() {
        return this.f30571h.m57577c();
    }

    @Dimension
    public int getInsetTop() {
        return this.f30571h.m57578d();
    }

    @Nullable
    public ColorStateList getRippleColor() {
        if (m23243e()) {
            return this.f30571h.m57582h();
        }
        return null;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        if (m23243e()) {
            return this.f30571h.m57583i();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (m23243e()) {
            return this.f30571h.m57584j();
        }
        return null;
    }

    @Px
    public int getStrokeWidth() {
        if (m23243e()) {
            return this.f30571h.m57585k();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        return m23243e() ? this.f30571h.m57586l() : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return m23243e() ? this.f30571h.m57587m() : super.getSupportBackgroundTintMode();
    }

    /* renamed from: h */
    public final void m23246h(int i, int i2) {
        if (this.f30576m == null || getLayout() == null) {
            return;
        }
        if (!m23241b() && !m23240a()) {
            if (m23242c()) {
                this.f30579p = 0;
                if (this.f30584u == 16) {
                    this.f30580q = 0;
                    m23245g(false);
                    return;
                }
                int i3 = this.f30578o;
                if (i3 == 0) {
                    i3 = this.f30576m.getIntrinsicHeight();
                }
                int max = Math.max(0, (((((i2 - getTextHeight()) - getPaddingTop()) - i3) - this.f30581r) - getPaddingBottom()) / 2);
                if (this.f30580q != max) {
                    this.f30580q = max;
                    m23245g(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f30580q = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i4 = this.f30584u;
        if (i4 == 1 || i4 == 3 || ((i4 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i4 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f30579p = 0;
            m23245g(false);
            return;
        }
        int i5 = this.f30578o;
        if (i5 == 0) {
            i5 = this.f30576m.getIntrinsicWidth();
        }
        int textLayoutWidth = ((((i - getTextLayoutWidth()) - ViewCompat.getPaddingEnd(this)) - i5) - this.f30581r) - ViewCompat.getPaddingStart(this);
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        if (m23239d() != (this.f30584u == 4)) {
            textLayoutWidth = -textLayoutWidth;
        }
        if (this.f30579p != textLayoutWidth) {
            this.f30579p = textLayoutWidth;
            m23245g(false);
        }
    }

    public boolean isCheckable() {
        u9j u9jVar = this.f30571h;
        return u9jVar != null && u9jVar.m57590p();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f30582s;
    }

    public boolean isToggleCheckedStateOnClick() {
        return this.f30571h.m57591q();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (m23243e()) {
            MaterialShapeUtils.setParentAbsoluteElevation(this, this.f30571h.m57580f());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isCheckable()) {
            View.mergeDrawableStates(onCreateDrawableState, f30567v);
        }
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f30568w);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m23246h(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.checked);
    }

    @Override // android.widget.TextView, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.checked = this.f30582s;
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        m23246h(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public boolean performClick() {
        if (this.f30571h.m57591q()) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f30576m != null) {
            if (this.f30576m.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public void removeOnCheckedChangeListener(@NonNull OnCheckedChangeListener onCheckedChangeListener) {
        this.f30572i.remove(onCheckedChangeListener);
    }

    public void setA11yClassName(@Nullable String str) {
        this.f30577n = str;
    }

    @Override // android.view.View
    public void setBackground(@NonNull Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        if (m23243e()) {
            this.f30571h.m57593s(i);
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(@NonNull Drawable drawable) {
        if (!m23243e()) {
            super.setBackgroundDrawable(drawable);
        } else {
            if (drawable == getBackground()) {
                getBackground().setState(drawable.getState());
                return;
            }
            Log.w(f30569x, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
            this.f30571h.m57594t();
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        setBackgroundDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (m23243e()) {
            this.f30571h.m57595u(z);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (isCheckable() && isEnabled() && this.f30582s != z) {
            this.f30582s = z;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                ((MaterialButtonToggleGroup) getParent()).m23261j(this, this.f30582s);
            }
            if (this.f30583t) {
                return;
            }
            this.f30583t = true;
            Iterator<OnCheckedChangeListener> it2 = this.f30572i.iterator();
            while (it2.hasNext()) {
                it2.next().onCheckedChanged(this, this.f30582s);
            }
            this.f30583t = false;
        }
    }

    public void setCornerRadius(@Px int i) {
        if (m23243e()) {
            this.f30571h.m57596v(i);
        }
    }

    public void setCornerRadiusResource(@DimenRes int i) {
        if (m23243e()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        if (m23243e()) {
            this.f30571h.m57580f().setElevation(f);
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (this.f30576m != drawable) {
            this.f30576m = drawable;
            m23245g(true);
            m23246h(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.f30584u != i) {
            this.f30584u = i;
            m23246h(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(@Px int i) {
        if (this.f30581r != i) {
            this.f30581r = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(@DrawableRes int i) {
        setIcon(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public void setIconSize(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f30578o != i) {
            this.f30578o = i;
            m23245g(true);
        }
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f30575l != colorStateList) {
            this.f30575l = colorStateList;
            m23245g(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f30574k != mode) {
            this.f30574k = mode;
            m23245g(false);
        }
    }

    public void setIconTintResource(@ColorRes int i) {
        setIconTint(AppCompatResources.getColorStateList(getContext(), i));
    }

    public void setInsetBottom(@Dimension int i) {
        this.f30571h.m57597w(i);
    }

    public void setInsetTop(@Dimension int i) {
        this.f30571h.m57598x(i);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(@Nullable InterfaceC5189a interfaceC5189a) {
        this.f30573j = interfaceC5189a;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        InterfaceC5189a interfaceC5189a = this.f30573j;
        if (interfaceC5189a != null) {
            interfaceC5189a.mo23250a(this, z);
        }
        super.setPressed(z);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (m23243e()) {
            this.f30571h.m57599y(colorStateList);
        }
    }

    public void setRippleColorResource(@ColorRes int i) {
        if (m23243e()) {
            setRippleColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        if (!m23243e()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f30571h.m57600z(shapeAppearanceModel);
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (m23243e()) {
            this.f30571h.m57563A(z);
        }
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (m23243e()) {
            this.f30571h.m57564B(colorStateList);
        }
    }

    public void setStrokeColorResource(@ColorRes int i) {
        if (m23243e()) {
            setStrokeColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    public void setStrokeWidth(@Px int i) {
        if (m23243e()) {
            this.f30571h.m57565C(i);
        }
    }

    public void setStrokeWidthResource(@DimenRes int i) {
        if (m23243e()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (m23243e()) {
            this.f30571h.m57566D(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (m23243e()) {
            this.f30571h.m57567E(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // android.view.View
    @RequiresApi(17)
    public void setTextAlignment(int i) {
        super.setTextAlignment(i);
        m23246h(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z) {
        this.f30571h.m57568F(z);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f30582s);
    }

    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.materialButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButton(@androidx.annotation.NonNull android.content.Context r9, @androidx.annotation.Nullable android.util.AttributeSet r10, int r11) {
        /*
            r8 = this;
            int r6 = com.google.android.material.button.MaterialButton.f30570y
            android.content.Context r9 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r9, r10, r11, r6)
            r8.<init>(r9, r10, r11)
            java.util.LinkedHashSet r9 = new java.util.LinkedHashSet
            r9.<init>()
            r8.f30572i = r9
            r9 = 0
            r8.f30582s = r9
            r8.f30583t = r9
            android.content.Context r7 = r8.getContext()
            int[] r2 = com.google.android.material.C5139R.styleable.MaterialButton
            int[] r5 = new int[r9]
            r0 = r7
            r1 = r10
            r3 = r11
            r4 = r6
            android.content.res.TypedArray r0 = com.google.android.material.internal.ThemeEnforcement.obtainStyledAttributes(r0, r1, r2, r3, r4, r5)
            int r1 = com.google.android.material.C5139R.styleable.MaterialButton_iconPadding
            int r1 = r0.getDimensionPixelSize(r1, r9)
            r8.f30581r = r1
            int r1 = com.google.android.material.C5139R.styleable.MaterialButton_iconTintMode
            r2 = -1
            int r1 = r0.getInt(r1, r2)
            android.graphics.PorterDuff$Mode r2 = android.graphics.PorterDuff.Mode.SRC_IN
            android.graphics.PorterDuff$Mode r1 = com.google.android.material.internal.ViewUtils.parseTintMode(r1, r2)
            r8.f30574k = r1
            android.content.Context r1 = r8.getContext()
            int r2 = com.google.android.material.C5139R.styleable.MaterialButton_iconTint
            android.content.res.ColorStateList r1 = com.google.android.material.resources.MaterialResources.getColorStateList(r1, r0, r2)
            r8.f30575l = r1
            android.content.Context r1 = r8.getContext()
            int r2 = com.google.android.material.C5139R.styleable.MaterialButton_icon
            android.graphics.drawable.Drawable r1 = com.google.android.material.resources.MaterialResources.getDrawable(r1, r0, r2)
            r8.f30576m = r1
            int r1 = com.google.android.material.C5139R.styleable.MaterialButton_iconGravity
            r2 = 1
            int r1 = r0.getInteger(r1, r2)
            r8.f30584u = r1
            int r1 = com.google.android.material.C5139R.styleable.MaterialButton_iconSize
            int r1 = r0.getDimensionPixelSize(r1, r9)
            r8.f30578o = r1
            com.google.android.material.shape.ShapeAppearanceModel$Builder r10 = com.google.android.material.shape.ShapeAppearanceModel.builder(r7, r10, r11, r6)
            com.google.android.material.shape.ShapeAppearanceModel r10 = r10.build()
            com.sunia.HTREnginev2.u9j r11 = new com.sunia.HTREnginev2.u9j
            r11.<init>(r8, r10)
            r8.f30571h = r11
            r11.m57592r(r0)
            r0.recycle()
            int r10 = r8.f30581r
            r8.setCompoundDrawablePadding(r10)
            android.graphics.drawable.Drawable r10 = r8.f30576m
            if (r10 == 0) goto L84
            r9 = r2
        L84:
            r8.m23245g(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
