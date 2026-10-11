package com.sunia.HTREnginev2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.textfield.C5426a;

/* loaded from: classes6.dex */
public class rjf extends qqf {

    /* renamed from: s */
    @ChecksSdkIntAtLeast(api = 21)
    public static final boolean f83156s = true;

    /* renamed from: t */
    public static final int f83157t = 50;

    /* renamed from: u */
    public static final int f83158u = 67;

    /* renamed from: e */
    public final int f83159e;

    /* renamed from: f */
    public final int f83160f;

    /* renamed from: g */
    @NonNull
    public final TimeInterpolator f83161g;

    /* renamed from: h */
    @Nullable
    public AutoCompleteTextView f83162h;

    /* renamed from: i */
    public final View.OnClickListener f83163i;

    /* renamed from: j */
    public final View.OnFocusChangeListener f83164j;

    /* renamed from: k */
    public final AccessibilityManagerCompat.TouchExplorationStateChangeListener f83165k;

    /* renamed from: l */
    public boolean f83166l;

    /* renamed from: m */
    public boolean f83167m;

    /* renamed from: n */
    public boolean f83168n;

    /* renamed from: o */
    public long f83169o;

    /* renamed from: p */
    @Nullable
    public AccessibilityManager f83170p;

    /* renamed from: q */
    public ValueAnimator f83171q;

    /* renamed from: r */
    public ValueAnimator f83172r;

    /* renamed from: com.sunia.HTREnginev2.rjf$a */
    /* loaded from: classes6.dex */
    public class C14353a extends AnimatorListenerAdapter {
        public C14353a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            rjf.this.m56759r();
            rjf.this.f83172r.start();
        }
    }

    public rjf(@NonNull C5426a c5426a) {
        super(c5426a);
        this.f83163i = new View.OnClickListener() { // from class: com.sunia.HTREnginev2.kjf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                rjf.this.m56962J(view);
            }
        };
        this.f83164j = new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.ljf
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                rjf.this.m56963K(view, z);
            }
        };
        this.f83165k = new AccessibilityManagerCompat.TouchExplorationStateChangeListener() { // from class: com.sunia.HTREnginev2.mjf
            @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
            public final void onTouchExplorationStateChanged(boolean z) {
                rjf.this.m56964L(z);
            }
        };
        this.f83169o = Long.MAX_VALUE;
        this.f83160f = MotionUtils.resolveThemeDuration(c5426a.getContext(), C5139R.attr.motionDurationShort3, 67);
        this.f83159e = MotionUtils.resolveThemeDuration(c5426a.getContext(), C5139R.attr.motionDurationShort3, 50);
        this.f83161g = MotionUtils.resolveThemeInterpolator(c5426a.getContext(), C5139R.attr.motionEasingLinearInterpolator, AnimationUtils.LINEAR_INTERPOLATOR);
    }

    @NonNull
    /* renamed from: D */
    public static AutoCompleteTextView m56959D(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H */
    public /* synthetic */ void m56960H() {
        boolean isPopupShowing = this.f83162h.isPopupShowing();
        m56975O(isPopupShowing);
        this.f83167m = isPopupShowing;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public /* synthetic */ void m56961I(ValueAnimator valueAnimator) {
        this.f82332d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J */
    public /* synthetic */ void m56962J(View view) {
        m56977Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K */
    public /* synthetic */ void m56963K(View view, boolean z) {
        this.f83166l = z;
        m56759r();
        if (z) {
            return;
        }
        m56975O(false);
        this.f83167m = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public /* synthetic */ void m56964L(boolean z) {
        AutoCompleteTextView autoCompleteTextView = this.f83162h;
        if (autoCompleteTextView == null || cmf.m53476a(autoCompleteTextView)) {
            return;
        }
        ViewCompat.setImportantForAccessibility(this.f82332d, z ? 2 : 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public /* synthetic */ boolean m56965M(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (m56974G()) {
                this.f83167m = false;
            }
            m56977Q();
            m56978R();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N */
    public /* synthetic */ void m56966N() {
        m56978R();
        m56975O(false);
    }

    /* renamed from: E */
    public final ValueAnimator m56972E(int i, float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(this.f83161g);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.njf
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                rjf.this.m56961I(valueAnimator);
            }
        });
        return ofFloat;
    }

    /* renamed from: F */
    public final void m56973F() {
        this.f83172r = m56972E(this.f83160f, 0.0f, 1.0f);
        ValueAnimator m56972E = m56972E(this.f83159e, 1.0f, 0.0f);
        this.f83171q = m56972E;
        m56972E.addListener(new C14353a());
    }

    /* renamed from: G */
    public final boolean m56974G() {
        long currentTimeMillis = System.currentTimeMillis() - this.f83169o;
        return currentTimeMillis < 0 || currentTimeMillis > 300;
    }

    /* renamed from: O */
    public final void m56975O(boolean z) {
        if (this.f83168n != z) {
            this.f83168n = z;
            this.f83172r.cancel();
            this.f83171q.start();
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: P */
    public final void m56976P() {
        this.f83162h.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.pjf
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m56965M;
                m56965M = rjf.this.m56965M(view, motionEvent);
                return m56965M;
            }
        });
        if (f83156s) {
            this.f83162h.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: com.sunia.HTREnginev2.qjf
                @Override // android.widget.AutoCompleteTextView.OnDismissListener
                public final void onDismiss() {
                    rjf.this.m56966N();
                }
            });
        }
        this.f83162h.setThreshold(0);
    }

    /* renamed from: Q */
    public final void m56977Q() {
        if (this.f83162h == null) {
            return;
        }
        if (m56974G()) {
            this.f83167m = false;
        }
        if (this.f83167m) {
            this.f83167m = false;
            return;
        }
        if (f83156s) {
            m56975O(!this.f83168n);
        } else {
            this.f83168n = !this.f83168n;
            m56759r();
        }
        if (!this.f83168n) {
            this.f83162h.dismissDropDown();
        } else {
            this.f83162h.requestFocus();
            this.f83162h.showDropDown();
        }
    }

    /* renamed from: R */
    public final void m56978R() {
        this.f83167m = true;
        this.f83169o = System.currentTimeMillis();
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: a */
    public void mo56749a(Editable editable) {
        if (this.f83170p.isTouchExplorationEnabled() && cmf.m53476a(this.f83162h) && !this.f82332d.hasFocus()) {
            this.f83162h.dismissDropDown();
        }
        this.f83162h.post(new Runnable() { // from class: com.sunia.HTREnginev2.ojf
            @Override // java.lang.Runnable
            public final void run() {
                rjf.this.m56960H();
            }
        });
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: c */
    public int mo53553c() {
        return C5139R.string.exposed_dropdown_menu_content_description;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: d */
    public int mo53554d() {
        return f83156s ? C5139R.drawable.mtrl_dropdown_arrow : C5139R.drawable.mtrl_ic_arrow_drop_down;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: e */
    public View.OnFocusChangeListener mo56750e() {
        return this.f83164j;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: f */
    public View.OnClickListener mo53555f() {
        return this.f83163i;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: h */
    public AccessibilityManagerCompat.TouchExplorationStateChangeListener mo56752h() {
        return this.f83165k;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: i */
    public boolean mo56753i(int i) {
        return i != 0;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: j */
    public boolean mo56754j() {
        return true;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: k */
    public boolean mo56755k() {
        return this.f83166l;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: l */
    public boolean mo53556l() {
        return true;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: m */
    public boolean mo53557m() {
        return this.f83168n;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: n */
    public void mo53558n(@Nullable EditText editText) {
        this.f83162h = m56959D(editText);
        m56976P();
        this.f82329a.setErrorIconDrawable((Drawable) null);
        if (!cmf.m53476a(editText) && this.f83170p.isTouchExplorationEnabled()) {
            ViewCompat.setImportantForAccessibility(this.f82332d, 2);
        }
        this.f82329a.setEndIconVisible(true);
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: o */
    public void mo56756o(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (!cmf.m53476a(this.f83162h)) {
            accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
        }
        if (accessibilityNodeInfoCompat.isShowingHintText()) {
            accessibilityNodeInfoCompat.setHintText(null);
        }
    }

    @Override // com.sunia.HTREnginev2.qqf
    @SuppressLint({"WrongConstant"})
    /* renamed from: p */
    public void mo56757p(View view, @NonNull AccessibilityEvent accessibilityEvent) {
        if (!this.f83170p.isEnabled() || cmf.m53476a(this.f83162h)) {
            return;
        }
        boolean z = (accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.f83168n && !this.f83162h.isPopupShowing();
        if (accessibilityEvent.getEventType() == 1 || z) {
            m56977Q();
            m56978R();
        }
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: s */
    public void mo53559s() {
        m56973F();
        this.f83170p = (AccessibilityManager) this.f82331c.getSystemService("accessibility");
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: t */
    public boolean mo56760t() {
        return true;
    }

    @Override // com.sunia.HTREnginev2.qqf
    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: u */
    public void mo53560u() {
        AutoCompleteTextView autoCompleteTextView = this.f83162h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            if (f83156s) {
                this.f83162h.setOnDismissListener(null);
            }
        }
    }
}
