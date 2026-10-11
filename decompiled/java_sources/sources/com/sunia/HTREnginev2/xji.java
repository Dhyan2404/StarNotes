package com.sunia.HTREnginev2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes6.dex */
public final class xji {

    /* renamed from: C */
    public static final int f89719C = 217;

    /* renamed from: D */
    public static final int f89720D = 167;

    /* renamed from: E */
    public static final int f89721E = 0;

    /* renamed from: F */
    public static final int f89722F = 1;

    /* renamed from: G */
    public static final int f89723G = 2;

    /* renamed from: H */
    public static final int f89724H = 0;

    /* renamed from: I */
    public static final int f89725I = 1;

    /* renamed from: J */
    public static final int f89726J = 2;

    /* renamed from: A */
    @Nullable
    public ColorStateList f89727A;

    /* renamed from: B */
    public Typeface f89728B;

    /* renamed from: a */
    public final int f89729a;

    /* renamed from: b */
    public final int f89730b;

    /* renamed from: c */
    public final int f89731c;

    /* renamed from: d */
    @NonNull
    public final TimeInterpolator f89732d;

    /* renamed from: e */
    @NonNull
    public final TimeInterpolator f89733e;

    /* renamed from: f */
    @NonNull
    public final TimeInterpolator f89734f;

    /* renamed from: g */
    public final Context f89735g;

    /* renamed from: h */
    @NonNull
    public final TextInputLayout f89736h;

    /* renamed from: i */
    public LinearLayout f89737i;

    /* renamed from: j */
    public int f89738j;

    /* renamed from: k */
    public FrameLayout f89739k;

    /* renamed from: l */
    @Nullable
    public Animator f89740l;

    /* renamed from: m */
    public final float f89741m;

    /* renamed from: n */
    public int f89742n;

    /* renamed from: o */
    public int f89743o;

    /* renamed from: p */
    @Nullable
    public CharSequence f89744p;

    /* renamed from: q */
    public boolean f89745q;

    /* renamed from: r */
    @Nullable
    public TextView f89746r;

    /* renamed from: s */
    @Nullable
    public CharSequence f89747s;

    /* renamed from: t */
    public int f89748t;

    /* renamed from: u */
    public int f89749u;

    /* renamed from: v */
    @Nullable
    public ColorStateList f89750v;

    /* renamed from: w */
    public CharSequence f89751w;

    /* renamed from: x */
    public boolean f89752x;

    /* renamed from: y */
    @Nullable
    public TextView f89753y;

    /* renamed from: z */
    public int f89754z;

    /* renamed from: com.sunia.HTREnginev2.xji$a */
    /* loaded from: classes6.dex */
    public class C14655a extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ int f89755e;

        /* renamed from: f */
        public final /* synthetic */ TextView f89756f;

        /* renamed from: g */
        public final /* synthetic */ int f89757g;

        /* renamed from: h */
        public final /* synthetic */ TextView f89758h;

        public C14655a(int i, TextView textView, int i2, TextView textView2) {
            this.f89755e = i;
            this.f89756f = textView;
            this.f89757g = i2;
            this.f89758h = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            xji.this.f89742n = this.f89755e;
            xji.this.f89740l = null;
            TextView textView = this.f89756f;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f89757g == 1 && xji.this.f89746r != null) {
                    xji.this.f89746r.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.f89758h;
            if (textView2 != null) {
                textView2.setTranslationY(0.0f);
                this.f89758h.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f89758h;
            if (textView != null) {
                textView.setVisibility(0);
                this.f89758h.setAlpha(0.0f);
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.xji$b */
    /* loaded from: classes6.dex */
    public class C14656b extends View.AccessibilityDelegate {
        public C14656b() {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            EditText editText = xji.this.f89736h.getEditText();
            if (editText != null) {
                accessibilityNodeInfo.setLabeledBy(editText);
            }
        }
    }

    public xji(@NonNull TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f89735g = context;
        this.f89736h = textInputLayout;
        this.f89741m = context.getResources().getDimensionPixelSize(C5139R.dimen.design_textinput_caption_translate_y);
        this.f89729a = MotionUtils.resolveThemeDuration(context, C5139R.attr.motionDurationShort4, 217);
        this.f89730b = MotionUtils.resolveThemeDuration(context, C5139R.attr.motionDurationMedium4, 167);
        this.f89731c = MotionUtils.resolveThemeDuration(context, C5139R.attr.motionDurationShort4, 167);
        this.f89732d = MotionUtils.resolveThemeInterpolator(context, C5139R.attr.motionEasingEmphasizedDecelerateInterpolator, AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        int i = C5139R.attr.motionEasingEmphasizedDecelerateInterpolator;
        TimeInterpolator timeInterpolator = AnimationUtils.LINEAR_INTERPOLATOR;
        this.f89733e = MotionUtils.resolveThemeInterpolator(context, i, timeInterpolator);
        this.f89734f = MotionUtils.resolveThemeInterpolator(context, C5139R.attr.motionEasingLinearInterpolator, timeInterpolator);
    }

    /* renamed from: A */
    public void m58222A() {
        this.f89744p = null;
        m58249h();
        if (this.f89742n == 1) {
            if (!this.f89752x || TextUtils.isEmpty(this.f89751w)) {
                this.f89743o = 0;
            } else {
                this.f89743o = 2;
            }
        }
        m58245X(this.f89742n, this.f89743o, m58242U(this.f89746r, ""));
    }

    /* renamed from: B */
    public void m58223B() {
        m58249h();
        int i = this.f89742n;
        if (i == 2) {
            this.f89743o = 0;
        }
        m58245X(i, this.f89743o, m58242U(this.f89753y, ""));
    }

    /* renamed from: C */
    public final boolean m58224C(int i) {
        return (i != 1 || this.f89746r == null || TextUtils.isEmpty(this.f89744p)) ? false : true;
    }

    /* renamed from: D */
    public final boolean m58225D(int i) {
        return (i != 2 || this.f89753y == null || TextUtils.isEmpty(this.f89751w)) ? false : true;
    }

    /* renamed from: E */
    public boolean m58226E(int i) {
        return i == 0 || i == 1;
    }

    /* renamed from: F */
    public boolean m58227F() {
        return this.f89745q;
    }

    /* renamed from: G */
    public boolean m58228G() {
        return this.f89752x;
    }

    /* renamed from: H */
    public void m58229H(TextView textView, int i) {
        FrameLayout frameLayout;
        if (this.f89737i == null) {
            return;
        }
        if (!m58226E(i) || (frameLayout = this.f89739k) == null) {
            this.f89737i.removeView(textView);
        } else {
            frameLayout.removeView(textView);
        }
        int i2 = this.f89738j - 1;
        this.f89738j = i2;
        m58241T(this.f89737i, i2);
    }

    /* renamed from: I */
    public final void m58230I(int i, int i2) {
        TextView m58255n;
        TextView m58255n2;
        if (i == i2) {
            return;
        }
        if (i2 != 0 && (m58255n2 = m58255n(i2)) != null) {
            m58255n2.setVisibility(0);
            m58255n2.setAlpha(1.0f);
        }
        if (i != 0 && (m58255n = m58255n(i)) != null) {
            m58255n.setVisibility(4);
            if (i == 1) {
                m58255n.setText((CharSequence) null);
            }
        }
        this.f89742n = i2;
    }

    /* renamed from: J */
    public void m58231J(int i) {
        this.f89748t = i;
        TextView textView = this.f89746r;
        if (textView != null) {
            ViewCompat.setAccessibilityLiveRegion(textView, i);
        }
    }

    /* renamed from: K */
    public void m58232K(@Nullable CharSequence charSequence) {
        this.f89747s = charSequence;
        TextView textView = this.f89746r;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    /* renamed from: L */
    public void m58233L(boolean z) {
        if (this.f89745q == z) {
            return;
        }
        m58249h();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f89735g);
            this.f89746r = appCompatTextView;
            appCompatTextView.setId(C5139R.id.textinput_error);
            this.f89746r.setTextAlignment(5);
            Typeface typeface = this.f89728B;
            if (typeface != null) {
                this.f89746r.setTypeface(typeface);
            }
            m58234M(this.f89749u);
            m58235N(this.f89750v);
            m58232K(this.f89747s);
            m58231J(this.f89748t);
            this.f89746r.setVisibility(4);
            m58246e(this.f89746r, 0);
        } else {
            m58222A();
            m58229H(this.f89746r, 0);
            this.f89746r = null;
            this.f89736h.m25240l0();
            this.f89736h.m25262w0();
        }
        this.f89745q = z;
    }

    /* renamed from: M */
    public void m58234M(@StyleRes int i) {
        this.f89749u = i;
        TextView textView = this.f89746r;
        if (textView != null) {
            this.f89736h.m25224Y(textView, i);
        }
    }

    /* renamed from: N */
    public void m58235N(@Nullable ColorStateList colorStateList) {
        this.f89750v = colorStateList;
        TextView textView = this.f89746r;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    /* renamed from: O */
    public void m58236O(@StyleRes int i) {
        this.f89754z = i;
        TextView textView = this.f89753y;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i);
        }
    }

    /* renamed from: P */
    public void m58237P(boolean z) {
        if (this.f89752x == z) {
            return;
        }
        m58249h();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f89735g);
            this.f89753y = appCompatTextView;
            appCompatTextView.setId(C5139R.id.textinput_helper_text);
            this.f89753y.setTextAlignment(5);
            Typeface typeface = this.f89728B;
            if (typeface != null) {
                this.f89753y.setTypeface(typeface);
            }
            this.f89753y.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.f89753y, 1);
            m58236O(this.f89754z);
            m58238Q(this.f89727A);
            m58246e(this.f89753y, 1);
            this.f89753y.setAccessibilityDelegate(new C14656b());
        } else {
            m58223B();
            m58229H(this.f89753y, 1);
            this.f89753y = null;
            this.f89736h.m25240l0();
            this.f89736h.m25262w0();
        }
        this.f89752x = z;
    }

    /* renamed from: Q */
    public void m58238Q(@Nullable ColorStateList colorStateList) {
        this.f89727A = colorStateList;
        TextView textView = this.f89753y;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    /* renamed from: R */
    public final void m58239R(@Nullable TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    /* renamed from: S */
    public void m58240S(Typeface typeface) {
        if (typeface != this.f89728B) {
            this.f89728B = typeface;
            m58239R(this.f89746r, typeface);
            m58239R(this.f89753y, typeface);
        }
    }

    /* renamed from: T */
    public final void m58241T(@NonNull ViewGroup viewGroup, int i) {
        if (i == 0) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: U */
    public final boolean m58242U(@Nullable TextView textView, @NonNull CharSequence charSequence) {
        return ViewCompat.isLaidOut(this.f89736h) && this.f89736h.isEnabled() && !(this.f89743o == this.f89742n && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    /* renamed from: V */
    public void m58243V(CharSequence charSequence) {
        m58249h();
        this.f89744p = charSequence;
        this.f89746r.setText(charSequence);
        int i = this.f89742n;
        if (i != 1) {
            this.f89743o = 1;
        }
        m58245X(i, this.f89743o, m58242U(this.f89746r, charSequence));
    }

    /* renamed from: W */
    public void m58244W(CharSequence charSequence) {
        m58249h();
        this.f89751w = charSequence;
        this.f89753y.setText(charSequence);
        int i = this.f89742n;
        if (i != 2) {
            this.f89743o = 2;
        }
        m58245X(i, this.f89743o, m58242U(this.f89753y, charSequence));
    }

    /* renamed from: X */
    public final void m58245X(int i, int i2, boolean z) {
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f89740l = animatorSet;
            ArrayList arrayList = new ArrayList();
            m58250i(arrayList, this.f89752x, this.f89753y, 2, i, i2);
            m58250i(arrayList, this.f89745q, this.f89746r, 1, i, i2);
            AnimatorSetCompat.playTogether(animatorSet, arrayList);
            animatorSet.addListener(new C14655a(i2, m58255n(i), i, m58255n(i2)));
            animatorSet.start();
        } else {
            m58230I(i, i2);
        }
        this.f89736h.m25240l0();
        this.f89736h.m25250q0(z);
        this.f89736h.m25262w0();
    }

    /* renamed from: e */
    public void m58246e(TextView textView, int i) {
        if (this.f89737i == null && this.f89739k == null) {
            LinearLayout linearLayout = new LinearLayout(this.f89735g);
            this.f89737i = linearLayout;
            linearLayout.setOrientation(0);
            this.f89736h.addView(this.f89737i, -1, -2);
            this.f89739k = new FrameLayout(this.f89735g);
            this.f89737i.addView(this.f89739k, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f89736h.getEditText() != null) {
                m58247f();
            }
        }
        if (m58226E(i)) {
            this.f89739k.setVisibility(0);
            this.f89739k.addView(textView);
        } else {
            this.f89737i.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f89737i.setVisibility(0);
        this.f89738j++;
    }

    /* renamed from: f */
    public void m58247f() {
        if (m58248g()) {
            EditText editText = this.f89736h.getEditText();
            boolean isFontScaleAtLeast1_3 = MaterialResources.isFontScaleAtLeast1_3(this.f89735g);
            ViewCompat.setPaddingRelative(this.f89737i, m58265x(isFontScaleAtLeast1_3, C5139R.dimen.material_helper_text_font_1_3_padding_horizontal, ViewCompat.getPaddingStart(editText)), m58265x(isFontScaleAtLeast1_3, C5139R.dimen.material_helper_text_font_1_3_padding_top, this.f89735g.getResources().getDimensionPixelSize(C5139R.dimen.material_helper_text_default_padding_top)), m58265x(isFontScaleAtLeast1_3, C5139R.dimen.material_helper_text_font_1_3_padding_horizontal, ViewCompat.getPaddingEnd(editText)), 0);
        }
    }

    /* renamed from: g */
    public final boolean m58248g() {
        return (this.f89737i == null || this.f89736h.getEditText() == null) ? false : true;
    }

    /* renamed from: h */
    public void m58249h() {
        Animator animator = this.f89740l;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* renamed from: i */
    public final void m58250i(@NonNull List<Animator> list, boolean z, @Nullable TextView textView, int i, int i2, int i3) {
        if (textView == null || !z) {
            return;
        }
        boolean z2 = false;
        if (i == i3 || i == i2) {
            ObjectAnimator m58251j = m58251j(textView, i3 == i);
            if (i == i3 && i2 != 0) {
                z2 = true;
            }
            if (z2) {
                m58251j.setStartDelay(this.f89731c);
            }
            list.add(m58251j);
            if (i3 != i || i2 == 0) {
                return;
            }
            ObjectAnimator m58252k = m58252k(textView);
            m58252k.setStartDelay(this.f89731c);
            list.add(m58252k);
        }
    }

    /* renamed from: j */
    public final ObjectAnimator m58251j(TextView textView, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.ALPHA, z ? 1.0f : 0.0f);
        ofFloat.setDuration(z ? this.f89730b : this.f89731c);
        ofFloat.setInterpolator(z ? this.f89733e : this.f89734f);
        return ofFloat;
    }

    /* renamed from: k */
    public final ObjectAnimator m58252k(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_Y, -this.f89741m, 0.0f);
        ofFloat.setDuration(this.f89729a);
        ofFloat.setInterpolator(this.f89732d);
        return ofFloat;
    }

    /* renamed from: l */
    public boolean m58253l() {
        return m58224C(this.f89742n);
    }

    /* renamed from: m */
    public boolean m58254m() {
        return m58224C(this.f89743o);
    }

    @Nullable
    /* renamed from: n */
    public final TextView m58255n(int i) {
        if (i == 1) {
            return this.f89746r;
        }
        if (i != 2) {
            return null;
        }
        return this.f89753y;
    }

    /* renamed from: o */
    public int m58256o() {
        return this.f89748t;
    }

    @Nullable
    /* renamed from: p */
    public CharSequence m58257p() {
        return this.f89747s;
    }

    @Nullable
    /* renamed from: q */
    public CharSequence m58258q() {
        return this.f89744p;
    }

    @ColorInt
    /* renamed from: r */
    public int m58259r() {
        TextView textView = this.f89746r;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    @Nullable
    /* renamed from: s */
    public ColorStateList m58260s() {
        TextView textView = this.f89746r;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    /* renamed from: t */
    public CharSequence m58261t() {
        return this.f89751w;
    }

    @Nullable
    /* renamed from: u */
    public View m58262u() {
        return this.f89753y;
    }

    @Nullable
    /* renamed from: v */
    public ColorStateList m58263v() {
        TextView textView = this.f89753y;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    @ColorInt
    /* renamed from: w */
    public int m58264w() {
        TextView textView = this.f89753y;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* renamed from: x */
    public final int m58265x(boolean z, @DimenRes int i, int i2) {
        return z ? this.f89735g.getResources().getDimensionPixelSize(i) : i2;
    }

    /* renamed from: y */
    public boolean m58266y() {
        return m58225D(this.f89742n);
    }

    /* renamed from: z */
    public boolean m58267z() {
        return m58225D(this.f89743o);
    }
}
