package com.sunia.HTREnginev2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.textfield.C5426a;

/* loaded from: classes6.dex */
public class xud extends qqf {

    /* renamed from: n */
    public static final int f90078n = 100;

    /* renamed from: o */
    public static final int f90079o = 150;

    /* renamed from: p */
    public static final float f90080p = 0.8f;

    /* renamed from: e */
    public final int f90081e;

    /* renamed from: f */
    public final int f90082f;

    /* renamed from: g */
    @NonNull
    public final TimeInterpolator f90083g;

    /* renamed from: h */
    @NonNull
    public final TimeInterpolator f90084h;

    /* renamed from: i */
    @Nullable
    public EditText f90085i;

    /* renamed from: j */
    public final View.OnClickListener f90086j;

    /* renamed from: k */
    public final View.OnFocusChangeListener f90087k;

    /* renamed from: l */
    public AnimatorSet f90088l;

    /* renamed from: m */
    public ValueAnimator f90089m;

    /* renamed from: com.sunia.HTREnginev2.xud$a */
    /* loaded from: classes6.dex */
    public class C14673a extends AnimatorListenerAdapter {
        public C14673a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            xud.this.f82330b.m25311f0(true);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.xud$b */
    /* loaded from: classes6.dex */
    public class C14674b extends AnimatorListenerAdapter {
        public C14674b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            xud.this.f82330b.m25311f0(false);
        }
    }

    public xud(@NonNull C5426a c5426a) {
        super(c5426a);
        this.f90086j = new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vud
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                xud.this.m58339G(view);
            }
        };
        this.f90087k = new View.OnFocusChangeListener() { // from class: com.sunia.HTREnginev2.wud
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                xud.this.m58340H(view, z);
            }
        };
        this.f90081e = MotionUtils.resolveThemeDuration(c5426a.getContext(), C5139R.attr.motionDurationShort3, 100);
        this.f90082f = MotionUtils.resolveThemeDuration(c5426a.getContext(), C5139R.attr.motionDurationShort3, 150);
        this.f90083g = MotionUtils.resolveThemeInterpolator(c5426a.getContext(), C5139R.attr.motionEasingLinearInterpolator, AnimationUtils.LINEAR_INTERPOLATOR);
        this.f90084h = MotionUtils.resolveThemeInterpolator(c5426a.getContext(), C5139R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E */
    public /* synthetic */ void m58337E(ValueAnimator valueAnimator) {
        this.f82332d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F */
    public /* synthetic */ void m58338F(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f82332d.setScaleX(floatValue);
        this.f82332d.setScaleY(floatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G */
    public /* synthetic */ void m58339G(View view) {
        EditText editText = this.f90085i;
        if (editText == null) {
            return;
        }
        Editable text = editText.getText();
        if (text != null) {
            text.clear();
        }
        m56759r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H */
    public /* synthetic */ void m58340H(View view, boolean z) {
        m58347A(m58351J());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public /* synthetic */ void m58341I() {
        m58347A(true);
    }

    /* renamed from: A */
    public final void m58347A(boolean z) {
        boolean z2 = this.f82330b.m25288I() == z;
        if (z && !this.f90088l.isRunning()) {
            this.f90089m.cancel();
            this.f90088l.start();
            if (z2) {
                this.f90088l.end();
                return;
            }
            return;
        }
        if (z) {
            return;
        }
        this.f90088l.cancel();
        this.f90089m.start();
        if (z2) {
            this.f90089m.end();
        }
    }

    /* renamed from: B */
    public final ValueAnimator m58348B(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(this.f90083g);
        ofFloat.setDuration(this.f90081e);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.uud
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                xud.this.m58337E(valueAnimator);
            }
        });
        return ofFloat;
    }

    /* renamed from: C */
    public final ValueAnimator m58349C() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(this.f90084h);
        ofFloat.setDuration(this.f90082f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.tud
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                xud.this.m58338F(valueAnimator);
            }
        });
        return ofFloat;
    }

    /* renamed from: D */
    public final void m58350D() {
        ValueAnimator m58349C = m58349C();
        ValueAnimator m58348B = m58348B(0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f90088l = animatorSet;
        animatorSet.playTogether(m58349C, m58348B);
        this.f90088l.addListener(new C14673a());
        ValueAnimator m58348B2 = m58348B(1.0f, 0.0f);
        this.f90089m = m58348B2;
        m58348B2.addListener(new C14674b());
    }

    /* renamed from: J */
    public final boolean m58351J() {
        EditText editText = this.f90085i;
        return editText != null && (editText.hasFocus() || this.f82332d.hasFocus()) && this.f90085i.getText().length() > 0;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: a */
    public void mo56749a(@NonNull Editable editable) {
        if (this.f82330b.m25348y() != null) {
            return;
        }
        m58347A(m58351J());
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: c */
    public int mo53553c() {
        return C5139R.string.clear_text_end_icon_content_description;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: d */
    public int mo53554d() {
        return C5139R.drawable.mtrl_ic_cancel;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: e */
    public View.OnFocusChangeListener mo56750e() {
        return this.f90087k;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: f */
    public View.OnClickListener mo53555f() {
        return this.f90086j;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: g */
    public View.OnFocusChangeListener mo56751g() {
        return this.f90087k;
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: n */
    public void mo53558n(@Nullable EditText editText) {
        this.f90085i = editText;
        this.f82329a.setEndIconVisible(m58351J());
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: q */
    public void mo56758q(boolean z) {
        if (this.f82330b.m25348y() == null) {
            return;
        }
        m58347A(z);
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: s */
    public void mo53559s() {
        m58350D();
    }

    @Override // com.sunia.HTREnginev2.qqf
    /* renamed from: u */
    public void mo53560u() {
        EditText editText = this.f90085i;
        if (editText != null) {
            editText.post(new Runnable() { // from class: com.sunia.HTREnginev2.sud
                @Override // java.lang.Runnable
                public final void run() {
                    xud.this.m58341I();
                }
            });
        }
    }
}
