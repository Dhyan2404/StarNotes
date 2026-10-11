package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.activity.BackEventCompat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.FadeThroughDrawable;
import com.google.android.material.internal.FadeThroughUpdateListener;
import com.google.android.material.internal.MultiViewUpdateListener;
import com.google.android.material.internal.RectEvaluator;
import com.google.android.material.internal.ReversableAnimatedValueInterpolator;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.TouchObserverFrameLayout;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MaterialMainContainerBackHelper;
import com.google.android.material.search.C5366b;
import com.google.android.material.search.SearchView;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Objects;

/* renamed from: com.google.android.material.search.b */
/* loaded from: classes6.dex */
public class C5366b {

    /* renamed from: A */
    public static final long f32118A = 250;

    /* renamed from: B */
    public static final float f32119B = 0.95f;

    /* renamed from: C */
    public static final long f32120C = 350;

    /* renamed from: D */
    public static final long f32121D = 150;

    /* renamed from: E */
    public static final long f32122E = 300;

    /* renamed from: p */
    public static final long f32123p = 300;

    /* renamed from: q */
    public static final long f32124q = 50;

    /* renamed from: r */
    public static final long f32125r = 250;

    /* renamed from: s */
    public static final long f32126s = 150;

    /* renamed from: t */
    public static final long f32127t = 75;

    /* renamed from: u */
    public static final long f32128u = 300;

    /* renamed from: v */
    public static final long f32129v = 250;

    /* renamed from: w */
    public static final long f32130w = 42;

    /* renamed from: x */
    public static final long f32131x = 0;

    /* renamed from: y */
    public static final long f32132y = 83;

    /* renamed from: z */
    public static final long f32133z = 0;

    /* renamed from: a */
    public final SearchView f32134a;

    /* renamed from: b */
    public final View f32135b;

    /* renamed from: c */
    public final ClippableRoundedCornerLayout f32136c;

    /* renamed from: d */
    public final FrameLayout f32137d;

    /* renamed from: e */
    public final FrameLayout f32138e;

    /* renamed from: f */
    public final Toolbar f32139f;

    /* renamed from: g */
    public final Toolbar f32140g;

    /* renamed from: h */
    public final TextView f32141h;

    /* renamed from: i */
    public final EditText f32142i;

    /* renamed from: j */
    public final ImageButton f32143j;

    /* renamed from: k */
    public final View f32144k;

    /* renamed from: l */
    public final TouchObserverFrameLayout f32145l;

    /* renamed from: m */
    public final MaterialMainContainerBackHelper f32146m;

    /* renamed from: n */
    @Nullable
    public AnimatorSet f32147n;

    /* renamed from: o */
    public SearchBar f32148o;

    /* renamed from: com.google.android.material.search.b$a */
    /* loaded from: classes6.dex */
    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!C5366b.this.f32134a.m24598k()) {
                C5366b.this.f32134a.m24601x();
            }
            C5366b.this.f32134a.setTransitionState(SearchView.TransitionState.SHOWN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C5366b.this.f32136c.setVisibility(0);
            C5366b.this.f32148o.stopOnLoadAnimation();
        }
    }

    /* renamed from: com.google.android.material.search.b$b */
    /* loaded from: classes6.dex */
    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C5366b.this.f32136c.setVisibility(8);
            if (!C5366b.this.f32134a.m24598k()) {
                C5366b.this.f32134a.clearFocusAndHideKeyboard();
            }
            C5366b.this.f32134a.setTransitionState(SearchView.TransitionState.HIDDEN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C5366b.this.f32134a.setTransitionState(SearchView.TransitionState.HIDING);
        }
    }

    /* renamed from: com.google.android.material.search.b$c */
    /* loaded from: classes6.dex */
    public class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!C5366b.this.f32134a.m24598k()) {
                C5366b.this.f32134a.m24601x();
            }
            C5366b.this.f32134a.setTransitionState(SearchView.TransitionState.SHOWN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C5366b.this.f32136c.setVisibility(0);
            C5366b.this.f32134a.setTransitionState(SearchView.TransitionState.SHOWING);
        }
    }

    /* renamed from: com.google.android.material.search.b$d */
    /* loaded from: classes6.dex */
    public class d extends AnimatorListenerAdapter {
        public d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C5366b.this.f32136c.setVisibility(8);
            if (!C5366b.this.f32134a.m24598k()) {
                C5366b.this.f32134a.clearFocusAndHideKeyboard();
            }
            C5366b.this.f32134a.setTransitionState(SearchView.TransitionState.HIDDEN);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C5366b.this.f32134a.setTransitionState(SearchView.TransitionState.HIDING);
        }
    }

    /* renamed from: com.google.android.material.search.b$e */
    /* loaded from: classes6.dex */
    public class e extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ boolean f32153e;

        public e(boolean z) {
            this.f32153e = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C5366b.this.m24674U(this.f32153e ? 1.0f : 0.0f);
            C5366b.this.f32136c.resetClipBoundsAndCornerRadius();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C5366b.this.m24674U(this.f32153e ? 0.0f : 1.0f);
        }
    }

    public C5366b(SearchView searchView) {
        this.f32134a = searchView;
        this.f32135b = searchView.f32063e;
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = searchView.f32064f;
        this.f32136c = clippableRoundedCornerLayout;
        this.f32137d = searchView.f32067i;
        this.f32138e = searchView.f32068j;
        this.f32139f = searchView.f32069k;
        this.f32140g = searchView.f32071l;
        this.f32141h = searchView.f32072m;
        this.f32142i = searchView.f32073n;
        this.f32143j = searchView.f32074o;
        this.f32144k = searchView.f32075p;
        this.f32145l = searchView.f32076q;
        this.f32146m = new MaterialMainContainerBackHelper(clippableRoundedCornerLayout);
    }

    /* renamed from: N */
    public static /* synthetic */ void m24645N(DrawerArrowDrawable drawerArrowDrawable, ValueAnimator valueAnimator) {
        drawerArrowDrawable.setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* renamed from: O */
    public static /* synthetic */ void m24646O(FadeThroughDrawable fadeThroughDrawable, ValueAnimator valueAnimator) {
        fadeThroughDrawable.setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P */
    public /* synthetic */ void m24647P(float f, float f2, Rect rect, ValueAnimator valueAnimator) {
        this.f32136c.updateClipBoundsAndCornerRadius(rect, AnimationUtils.lerp(f, f2, valueAnimator.getAnimatedFraction()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Q */
    public /* synthetic */ void m24648Q() {
        AnimatorSet m24660B = m24660B(true);
        m24660B.addListener(new a());
        m24660B.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R */
    public /* synthetic */ void m24649R() {
        this.f32136c.setTranslationY(r0.getHeight());
        AnimatorSet m24668J = m24668J(true);
        m24668J.addListener(new c());
        m24668J.start();
    }

    /* renamed from: A */
    public final Animator m24659A(boolean z) {
        return m24669K(z, true, this.f32142i);
    }

    /* renamed from: B */
    public final AnimatorSet m24660B(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (!(this.f32147n != null)) {
            animatorSet.playTogether(m24695s(z), m24696t(z));
        }
        animatorSet.playTogether(m24666H(z), m24665G(z), m24697u(z), m24699w(z), m24664F(z), m24702z(z), m24693q(z), m24659A(z), m24667I(z));
        animatorSet.addListener(new e(z));
        return animatorSet;
    }

    /* renamed from: C */
    public final int m24661C(View view) {
        int marginEnd = MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) view.getLayoutParams());
        return ViewUtils.isLayoutRtl(this.f32148o) ? this.f32148o.getLeft() - marginEnd : (this.f32148o.getRight() - this.f32134a.getWidth()) + marginEnd;
    }

    /* renamed from: D */
    public final int m24662D(View view) {
        int marginStart = MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) view.getLayoutParams());
        int paddingStart = ViewCompat.getPaddingStart(this.f32148o);
        return ViewUtils.isLayoutRtl(this.f32148o) ? ((this.f32148o.getWidth() - this.f32148o.getRight()) + marginStart) - paddingStart : (this.f32148o.getLeft() - marginStart) + paddingStart;
    }

    /* renamed from: E */
    public final int m24663E() {
        return ((this.f32148o.getTop() + this.f32148o.getBottom()) / 2) - ((this.f32138e.getTop() + this.f32138e.getBottom()) / 2);
    }

    /* renamed from: F */
    public final Animator m24664F(boolean z) {
        return m24669K(z, false, this.f32137d);
    }

    /* renamed from: G */
    public final Animator m24665G(boolean z) {
        Rect initialHideToClipBounds = this.f32146m.getInitialHideToClipBounds();
        Rect initialHideFromClipBounds = this.f32146m.getInitialHideFromClipBounds();
        if (initialHideToClipBounds == null) {
            initialHideToClipBounds = ViewUtils.calculateRectFromBounds(this.f32134a);
        }
        if (initialHideFromClipBounds == null) {
            initialHideFromClipBounds = ViewUtils.calculateOffsetRectFromBounds(this.f32136c, this.f32148o);
        }
        final Rect rect = new Rect(initialHideFromClipBounds);
        final float cornerSize = this.f32148o.getCornerSize();
        final float max = Math.max(this.f32136c.getCornerRadius(), this.f32146m.getExpandedCornerSize());
        ValueAnimator ofObject = ValueAnimator.ofObject(new RectEvaluator(rect), initialHideFromClipBounds, initialHideToClipBounds);
        ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.v8m
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C5366b.this.m24647P(cornerSize, max, rect, valueAnimator);
            }
        });
        ofObject.setDuration(z ? 300L : 250L);
        ofObject.setInterpolator(ReversableAnimatedValueInterpolator.m24282of(z, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        return ofObject;
    }

    /* renamed from: H */
    public final Animator m24666H(boolean z) {
        TimeInterpolator timeInterpolator = z ? AnimationUtils.LINEAR_INTERPOLATOR : AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(z ? 300L : 250L);
        ofFloat.setInterpolator(ReversableAnimatedValueInterpolator.m24282of(z, timeInterpolator));
        ofFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(this.f32135b));
        return ofFloat;
    }

    /* renamed from: I */
    public final Animator m24667I(boolean z) {
        return m24669K(z, true, this.f32141h);
    }

    /* renamed from: J */
    public final AnimatorSet m24668J(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(m24670L());
        m24687k(animatorSet);
        animatorSet.setInterpolator(ReversableAnimatedValueInterpolator.m24282of(z, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        animatorSet.setDuration(z ? 350L : 300L);
        return animatorSet;
    }

    /* renamed from: K */
    public final Animator m24669K(boolean z, boolean z2, View view) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(z2 ? m24662D(view) : m24661C(view), 0.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.translationXListener(view));
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(m24663E(), 0.0f);
        ofFloat2.addUpdateListener(MultiViewUpdateListener.translationYListener(view));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(z ? 300L : 250L);
        animatorSet.setInterpolator(ReversableAnimatedValueInterpolator.m24282of(z, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        return animatorSet;
    }

    /* renamed from: L */
    public final Animator m24670L() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f32136c.getHeight(), 0.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.translationYListener(this.f32136c));
        return ofFloat;
    }

    @CanIgnoreReturnValue
    /* renamed from: M */
    public AnimatorSet m24671M() {
        return this.f32148o != null ? m24681b0() : m24682c0();
    }

    @Nullable
    /* renamed from: S */
    public BackEventCompat m24672S() {
        return this.f32146m.onHandleBackInvoked();
    }

    /* renamed from: T */
    public final void m24673T(float f) {
        ActionMenuView actionMenuView;
        if (!this.f32134a.isMenuItemsAnimated() || (actionMenuView = ToolbarUtils.getActionMenuView(this.f32139f)) == null) {
            return;
        }
        actionMenuView.setAlpha(f);
    }

    /* renamed from: U */
    public final void m24674U(float f) {
        this.f32143j.setAlpha(f);
        this.f32144k.setAlpha(f);
        this.f32145l.setAlpha(f);
        m24673T(f);
    }

    /* renamed from: V */
    public final void m24675V(Drawable drawable) {
        if (drawable instanceof DrawerArrowDrawable) {
            ((DrawerArrowDrawable) drawable).setProgress(1.0f);
        }
        if (drawable instanceof FadeThroughDrawable) {
            ((FadeThroughDrawable) drawable).setProgress(1.0f);
        }
    }

    /* renamed from: W */
    public final void m24676W(Toolbar toolbar) {
        ActionMenuView actionMenuView = ToolbarUtils.getActionMenuView(toolbar);
        if (actionMenuView != null) {
            for (int i = 0; i < actionMenuView.getChildCount(); i++) {
                View childAt = actionMenuView.getChildAt(i);
                childAt.setClickable(false);
                childAt.setFocusable(false);
                childAt.setFocusableInTouchMode(false);
            }
        }
    }

    /* renamed from: X */
    public void m24677X(SearchBar searchBar) {
        this.f32148o = searchBar;
    }

    /* renamed from: Y */
    public final void m24678Y() {
        Menu menu = this.f32140g.getMenu();
        if (menu != null) {
            menu.clear();
        }
        if (this.f32148o.getMenuResId() == -1 || !this.f32134a.isMenuItemsAnimated()) {
            this.f32140g.setVisibility(8);
            return;
        }
        this.f32140g.inflateMenu(this.f32148o.getMenuResId());
        m24676W(this.f32140g);
        this.f32140g.setVisibility(0);
    }

    /* renamed from: Z */
    public void m24679Z() {
        if (this.f32148o != null) {
            m24683d0();
        } else {
            m24684e0();
        }
    }

    /* renamed from: a0 */
    public void m24680a0(@NonNull BackEventCompat backEventCompat) {
        this.f32146m.startBackProgress(backEventCompat, this.f32148o);
    }

    /* renamed from: b0 */
    public final AnimatorSet m24681b0() {
        if (this.f32134a.m24598k()) {
            this.f32134a.clearFocusAndHideKeyboard();
        }
        AnimatorSet m24660B = m24660B(false);
        m24660B.addListener(new b());
        m24660B.start();
        return m24660B;
    }

    /* renamed from: c0 */
    public final AnimatorSet m24682c0() {
        if (this.f32134a.m24598k()) {
            this.f32134a.clearFocusAndHideKeyboard();
        }
        AnimatorSet m24668J = m24668J(false);
        m24668J.addListener(new d());
        m24668J.start();
        return m24668J;
    }

    /* renamed from: d0 */
    public final void m24683d0() {
        if (this.f32134a.m24598k()) {
            this.f32134a.m24601x();
        }
        this.f32134a.setTransitionState(SearchView.TransitionState.SHOWING);
        m24678Y();
        this.f32142i.setText(this.f32148o.getText());
        EditText editText = this.f32142i;
        editText.setSelection(editText.getText().length());
        this.f32136c.setVisibility(4);
        this.f32136c.post(new Runnable() { // from class: com.sunia.HTREnginev2.s8m
            @Override // java.lang.Runnable
            public final void run() {
                C5366b.this.m24648Q();
            }
        });
    }

    /* renamed from: e0 */
    public final void m24684e0() {
        if (this.f32134a.m24598k()) {
            final SearchView searchView = this.f32134a;
            Objects.requireNonNull(searchView);
            searchView.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.t8m
                @Override // java.lang.Runnable
                public final void run() {
                    SearchView.this.m24601x();
                }
            }, 150L);
        }
        this.f32136c.setVisibility(4);
        this.f32136c.post(new Runnable() { // from class: com.sunia.HTREnginev2.u8m
            @Override // java.lang.Runnable
            public final void run() {
                C5366b.this.m24649R();
            }
        });
    }

    @RequiresApi(34)
    /* renamed from: f0 */
    public void m24685f0(@NonNull BackEventCompat backEventCompat) {
        if (backEventCompat.getProgress() <= 0.0f) {
            return;
        }
        MaterialMainContainerBackHelper materialMainContainerBackHelper = this.f32146m;
        SearchBar searchBar = this.f32148o;
        materialMainContainerBackHelper.updateBackProgress(backEventCompat, searchBar, searchBar.getCornerSize());
        AnimatorSet animatorSet = this.f32147n;
        if (animatorSet != null) {
            animatorSet.setCurrentPlayTime(backEventCompat.getProgress() * ((float) this.f32147n.getDuration()));
            return;
        }
        if (this.f32134a.m24598k()) {
            this.f32134a.clearFocusAndHideKeyboard();
        }
        if (this.f32134a.isAnimatedNavigationIcon()) {
            AnimatorSet m24695s = m24695s(false);
            this.f32147n = m24695s;
            m24695s.start();
            this.f32147n.pause();
        }
    }

    /* renamed from: j */
    public final void m24686j(AnimatorSet animatorSet) {
        ActionMenuView actionMenuView = ToolbarUtils.getActionMenuView(this.f32139f);
        if (actionMenuView == null) {
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(m24661C(actionMenuView), 0.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.translationXListener(actionMenuView));
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(m24663E(), 0.0f);
        ofFloat2.addUpdateListener(MultiViewUpdateListener.translationYListener(actionMenuView));
        animatorSet.playTogether(ofFloat, ofFloat2);
    }

    /* renamed from: k */
    public final void m24687k(AnimatorSet animatorSet) {
        ImageButton navigationIconButton = ToolbarUtils.getNavigationIconButton(this.f32139f);
        if (navigationIconButton == null) {
            return;
        }
        Drawable unwrap = DrawableCompat.unwrap(navigationIconButton.getDrawable());
        if (!this.f32134a.isAnimatedNavigationIcon()) {
            m24675V(unwrap);
        } else {
            m24689m(animatorSet, unwrap);
            m24690n(animatorSet, unwrap);
        }
    }

    /* renamed from: l */
    public final void m24688l(AnimatorSet animatorSet) {
        ImageButton navigationIconButton = ToolbarUtils.getNavigationIconButton(this.f32139f);
        if (navigationIconButton == null) {
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(m24662D(navigationIconButton), 0.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.translationXListener(navigationIconButton));
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(m24663E(), 0.0f);
        ofFloat2.addUpdateListener(MultiViewUpdateListener.translationYListener(navigationIconButton));
        animatorSet.playTogether(ofFloat, ofFloat2);
    }

    /* renamed from: m */
    public final void m24689m(AnimatorSet animatorSet, Drawable drawable) {
        if (drawable instanceof DrawerArrowDrawable) {
            final DrawerArrowDrawable drawerArrowDrawable = (DrawerArrowDrawable) drawable;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.r8m
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    C5366b.m24645N(DrawerArrowDrawable.this, valueAnimator);
                }
            });
            animatorSet.playTogether(ofFloat);
        }
    }

    /* renamed from: n */
    public final void m24690n(AnimatorSet animatorSet, Drawable drawable) {
        if (drawable instanceof FadeThroughDrawable) {
            final FadeThroughDrawable fadeThroughDrawable = (FadeThroughDrawable) drawable;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.q8m
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    C5366b.m24646O(FadeThroughDrawable.this, valueAnimator);
                }
            });
            animatorSet.playTogether(ofFloat);
        }
    }

    @RequiresApi(34)
    /* renamed from: o */
    public void m24691o() {
        this.f32146m.cancelBackProgress(this.f32148o);
        AnimatorSet animatorSet = this.f32147n;
        if (animatorSet != null) {
            animatorSet.reverse();
        }
        this.f32147n = null;
    }

    @RequiresApi(34)
    /* renamed from: p */
    public void m24692p() {
        this.f32146m.finishBackProgress(m24671M().getTotalDuration(), this.f32148o);
        if (this.f32147n != null) {
            m24696t(false).start();
            this.f32147n.resume();
        }
        this.f32147n = null;
    }

    /* renamed from: q */
    public final Animator m24693q(boolean z) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(z ? 300L : 250L);
        ofFloat.setInterpolator(ReversableAnimatedValueInterpolator.m24282of(z, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        if (this.f32134a.isMenuItemsAnimated()) {
            ofFloat.addUpdateListener(new FadeThroughUpdateListener(ToolbarUtils.getActionMenuView(this.f32140g), ToolbarUtils.getActionMenuView(this.f32139f)));
        }
        return ofFloat;
    }

    /* renamed from: r */
    public MaterialMainContainerBackHelper m24694r() {
        return this.f32146m;
    }

    /* renamed from: s */
    public final AnimatorSet m24695s(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        m24687k(animatorSet);
        animatorSet.setDuration(z ? 300L : 250L);
        animatorSet.setInterpolator(ReversableAnimatedValueInterpolator.m24282of(z, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        return animatorSet;
    }

    /* renamed from: t */
    public final AnimatorSet m24696t(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        m24688l(animatorSet);
        m24686j(animatorSet);
        animatorSet.setDuration(z ? 300L : 250L);
        animatorSet.setInterpolator(ReversableAnimatedValueInterpolator.m24282of(z, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        return animatorSet;
    }

    /* renamed from: u */
    public final Animator m24697u(boolean z) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(z ? 50L : 42L);
        ofFloat.setStartDelay(z ? 250L : 0L);
        ofFloat.setInterpolator(ReversableAnimatedValueInterpolator.m24282of(z, AnimationUtils.LINEAR_INTERPOLATOR));
        ofFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(this.f32143j));
        return ofFloat;
    }

    /* renamed from: v */
    public final Animator m24698v(boolean z) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(z ? 150L : 83L);
        ofFloat.setStartDelay(z ? 75L : 0L);
        ofFloat.setInterpolator(ReversableAnimatedValueInterpolator.m24282of(z, AnimationUtils.LINEAR_INTERPOLATOR));
        ofFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(this.f32144k, this.f32145l));
        return ofFloat;
    }

    /* renamed from: w */
    public final Animator m24699w(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(m24698v(z), m24701y(z), m24700x(z));
        return animatorSet;
    }

    /* renamed from: x */
    public final Animator m24700x(boolean z) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.95f, 1.0f);
        ofFloat.setDuration(z ? 300L : 250L);
        ofFloat.setInterpolator(ReversableAnimatedValueInterpolator.m24282of(z, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        ofFloat.addUpdateListener(MultiViewUpdateListener.scaleListener(this.f32145l));
        return ofFloat;
    }

    /* renamed from: y */
    public final Animator m24701y(boolean z) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat((this.f32145l.getHeight() * 0.050000012f) / 2.0f, 0.0f);
        ofFloat.setDuration(z ? 300L : 250L);
        ofFloat.setInterpolator(ReversableAnimatedValueInterpolator.m24282of(z, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
        ofFloat.addUpdateListener(MultiViewUpdateListener.translationYListener(this.f32144k));
        return ofFloat;
    }

    /* renamed from: z */
    public final Animator m24702z(boolean z) {
        return m24669K(z, false, this.f32140g);
    }
}
