package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.textfield.TextInputLayout;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes6.dex */
public class uxm extends LinearLayout {

    /* renamed from: e */
    public final TextInputLayout f86938e;

    /* renamed from: f */
    public final TextView f86939f;

    /* renamed from: g */
    @Nullable
    public CharSequence f86940g;

    /* renamed from: h */
    public final CheckableImageButton f86941h;

    /* renamed from: i */
    public ColorStateList f86942i;

    /* renamed from: j */
    public PorterDuff.Mode f86943j;

    /* renamed from: k */
    public int f86944k;

    /* renamed from: l */
    @NonNull
    public ImageView.ScaleType f86945l;

    /* renamed from: m */
    public View.OnLongClickListener f86946m;

    /* renamed from: n */
    public boolean f86947n;

    public uxm(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        super(textInputLayout.getContext());
        this.f86938e = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.START));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(C5139R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f86941h = checkableImageButton;
        cgi.m53450e(checkableImageButton);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f86939f = appCompatTextView;
        m57689j(tintTypedArray);
        m57688i(tintTypedArray);
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    /* renamed from: A */
    public void m57676A(boolean z) {
        if (m57691l() != z) {
            this.f86941h.setVisibility(z ? 0 : 8);
            m57678C();
            m57679D();
        }
    }

    /* renamed from: B */
    public void m57677B(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.f86939f.getVisibility() != 0) {
            accessibilityNodeInfoCompat.setTraversalAfter(this.f86941h);
        } else {
            accessibilityNodeInfoCompat.setLabelFor(this.f86939f);
            accessibilityNodeInfoCompat.setTraversalAfter(this.f86939f);
        }
    }

    /* renamed from: C */
    public void m57678C() {
        EditText editText = this.f86938e.f32766h;
        if (editText == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f86939f, m57691l() ? 0 : ViewCompat.getPaddingStart(editText), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(C5139R.dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    /* renamed from: D */
    public final void m57679D() {
        int i = (this.f86940g == null || this.f86947n) ? 8 : 0;
        setVisibility(this.f86941h.getVisibility() == 0 || i == 0 ? 0 : 8);
        this.f86939f.setVisibility(i);
        this.f86938e.m25238k0();
    }

    @Nullable
    /* renamed from: a */
    public CharSequence m57680a() {
        return this.f86940g;
    }

    @Nullable
    /* renamed from: b */
    public ColorStateList m57681b() {
        return this.f86939f.getTextColors();
    }

    /* renamed from: c */
    public int m57682c() {
        return ViewCompat.getPaddingStart(this) + ViewCompat.getPaddingStart(this.f86939f) + (m57691l() ? this.f86941h.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) this.f86941h.getLayoutParams()) : 0);
    }

    @NonNull
    /* renamed from: d */
    public TextView m57683d() {
        return this.f86939f;
    }

    @Nullable
    /* renamed from: e */
    public CharSequence m57684e() {
        return this.f86941h.getContentDescription();
    }

    @Nullable
    /* renamed from: f */
    public Drawable m57685f() {
        return this.f86941h.getDrawable();
    }

    /* renamed from: g */
    public int m57686g() {
        return this.f86944k;
    }

    @NonNull
    /* renamed from: h */
    public ImageView.ScaleType m57687h() {
        return this.f86945l;
    }

    /* renamed from: i */
    public final void m57688i(TintTypedArray tintTypedArray) {
        this.f86939f.setVisibility(8);
        this.f86939f.setId(C5139R.id.textinput_prefix_text);
        this.f86939f.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ViewCompat.setAccessibilityLiveRegion(this.f86939f, 1);
        m57695p(tintTypedArray.getResourceId(C5139R.styleable.TextInputLayout_prefixTextAppearance, 0));
        if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_prefixTextColor)) {
            m57696q(tintTypedArray.getColorStateList(C5139R.styleable.TextInputLayout_prefixTextColor));
        }
        m57694o(tintTypedArray.getText(C5139R.styleable.TextInputLayout_prefixText));
    }

    /* renamed from: j */
    public final void m57689j(TintTypedArray tintTypedArray) {
        if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
            MarginLayoutParamsCompat.setMarginEnd((ViewGroup.MarginLayoutParams) this.f86941h.getLayoutParams(), 0);
        }
        m57701v(null);
        m57702w(null);
        if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_startIconTint)) {
            this.f86942i = MaterialResources.getColorStateList(getContext(), tintTypedArray, C5139R.styleable.TextInputLayout_startIconTint);
        }
        if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_startIconTintMode)) {
            this.f86943j = ViewUtils.parseTintMode(tintTypedArray.getInt(C5139R.styleable.TextInputLayout_startIconTintMode, -1), null);
        }
        if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_startIconDrawable)) {
            m57699t(tintTypedArray.getDrawable(C5139R.styleable.TextInputLayout_startIconDrawable));
            if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_startIconContentDescription)) {
                m57698s(tintTypedArray.getText(C5139R.styleable.TextInputLayout_startIconContentDescription));
            }
            m57697r(tintTypedArray.getBoolean(C5139R.styleable.TextInputLayout_startIconCheckable, true));
        }
        m57700u(tintTypedArray.getDimensionPixelSize(C5139R.styleable.TextInputLayout_startIconMinSize, getResources().getDimensionPixelSize(C5139R.dimen.mtrl_min_touch_target_size)));
        if (tintTypedArray.hasValue(C5139R.styleable.TextInputLayout_startIconScaleType)) {
            m57703x(cgi.m53447b(tintTypedArray.getInt(C5139R.styleable.TextInputLayout_startIconScaleType, -1)));
        }
    }

    /* renamed from: k */
    public boolean m57690k() {
        return this.f86941h.isCheckable();
    }

    /* renamed from: l */
    public boolean m57691l() {
        return this.f86941h.getVisibility() == 0;
    }

    /* renamed from: m */
    public void m57692m(boolean z) {
        this.f86947n = z;
        m57679D();
    }

    /* renamed from: n */
    public void m57693n() {
        cgi.m53449d(this.f86938e, this.f86941h, this.f86942i);
    }

    /* renamed from: o */
    public void m57694o(@Nullable CharSequence charSequence) {
        this.f86940g = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f86939f.setText(charSequence);
        m57679D();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        m57678C();
    }

    /* renamed from: p */
    public void m57695p(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.f86939f, i);
    }

    /* renamed from: q */
    public void m57696q(@NonNull ColorStateList colorStateList) {
        this.f86939f.setTextColor(colorStateList);
    }

    /* renamed from: r */
    public void m57697r(boolean z) {
        this.f86941h.setCheckable(z);
    }

    /* renamed from: s */
    public void m57698s(@Nullable CharSequence charSequence) {
        if (m57684e() != charSequence) {
            this.f86941h.setContentDescription(charSequence);
        }
    }

    /* renamed from: t */
    public void m57699t(@Nullable Drawable drawable) {
        this.f86941h.setImageDrawable(drawable);
        if (drawable != null) {
            cgi.m53446a(this.f86938e, this.f86941h, this.f86942i, this.f86943j);
            m57676A(true);
            m57693n();
        } else {
            m57676A(false);
            m57701v(null);
            m57702w(null);
            m57698s(null);
        }
    }

    /* renamed from: u */
    public void m57700u(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i != this.f86944k) {
            this.f86944k = i;
            cgi.m53452g(this.f86941h, i);
        }
    }

    /* renamed from: v */
    public void m57701v(@Nullable View.OnClickListener onClickListener) {
        cgi.m53453h(this.f86941h, onClickListener, this.f86946m);
    }

    /* renamed from: w */
    public void m57702w(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f86946m = onLongClickListener;
        cgi.m53454i(this.f86941h, onLongClickListener);
    }

    /* renamed from: x */
    public void m57703x(@NonNull ImageView.ScaleType scaleType) {
        this.f86945l = scaleType;
        cgi.m53455j(this.f86941h, scaleType);
    }

    /* renamed from: y */
    public void m57704y(@Nullable ColorStateList colorStateList) {
        if (this.f86942i != colorStateList) {
            this.f86942i = colorStateList;
            cgi.m53446a(this.f86938e, this.f86941h, colorStateList, this.f86943j);
        }
    }

    /* renamed from: z */
    public void m57705z(@Nullable PorterDuff.Mode mode) {
        if (this.f86943j != mode) {
            this.f86943j = mode;
            cgi.m53446a(this.f86938e, this.f86941h, this.f86942i, mode);
        }
    }
}
