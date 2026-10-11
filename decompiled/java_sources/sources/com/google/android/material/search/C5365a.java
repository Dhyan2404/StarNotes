package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.ViewCompat;
import com.google.android.material.animation.AnimatableView;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.ExpandCollapseAnimationHelper;
import com.google.android.material.internal.MultiViewUpdateListener;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.search.C5365a;
import com.google.android.material.search.SearchBar;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* renamed from: com.google.android.material.search.a */
/* loaded from: classes6.dex */
public class C5365a {

    /* renamed from: j */
    public static final long f32090j = 250;

    /* renamed from: k */
    public static final long f32091k = 500;

    /* renamed from: l */
    public static final long f32092l = 750;

    /* renamed from: m */
    public static final long f32093m = 250;

    /* renamed from: n */
    public static final long f32094n = 250;

    /* renamed from: o */
    public static final long f32095o = 300;

    /* renamed from: p */
    public static final long f32096p = 75;

    /* renamed from: q */
    public static final long f32097q = 250;

    /* renamed from: r */
    public static final long f32098r = 100;

    /* renamed from: d */
    @Nullable
    public Animator f32102d;

    /* renamed from: e */
    @Nullable
    public Animator f32103e;

    /* renamed from: f */
    public boolean f32104f;

    /* renamed from: g */
    public boolean f32105g;

    /* renamed from: a */
    public final Set<SearchBar.OnLoadAnimationCallback> f32099a = new LinkedHashSet();

    /* renamed from: b */
    public final Set<AnimatorListenerAdapter> f32100b = new LinkedHashSet();

    /* renamed from: c */
    public final Set<AnimatorListenerAdapter> f32101c = new LinkedHashSet();

    /* renamed from: h */
    public boolean f32106h = true;

    /* renamed from: i */
    public Animator f32107i = null;

    /* renamed from: com.google.android.material.search.a$a */
    /* loaded from: classes6.dex */
    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C5365a.this.m24628k(new g() { // from class: com.sunia.HTREnginev2.t6m
                @Override // com.google.android.material.search.C5365a.g
                /* renamed from: a */
                public final void mo24644a(SearchBar.OnLoadAnimationCallback onLoadAnimationCallback) {
                    onLoadAnimationCallback.onAnimationEnd();
                }
            });
        }
    }

    /* renamed from: com.google.android.material.search.a$b */
    /* loaded from: classes6.dex */
    public class b extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ View f32109e;

        /* renamed from: f */
        public final /* synthetic */ Animator f32110f;

        public b(View view, Animator animator) {
            this.f32109e = view;
            this.f32110f = animator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f32109e.setVisibility(8);
            this.f32110f.start();
        }
    }

    /* renamed from: com.google.android.material.search.a$c */
    /* loaded from: classes6.dex */
    public class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C5365a.this.f32107i = null;
        }
    }

    /* renamed from: com.google.android.material.search.a$d */
    /* loaded from: classes6.dex */
    public class d extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ SearchBar f32113e;

        public d(SearchBar searchBar) {
            this.f32113e = searchBar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C5365a.this.f32104f = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f32113e.setVisibility(4);
        }
    }

    /* renamed from: com.google.android.material.search.a$e */
    /* loaded from: classes6.dex */
    public class e extends AnimatorListenerAdapter {
        public e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C5365a.this.f32107i = null;
        }
    }

    /* renamed from: com.google.android.material.search.a$f */
    /* loaded from: classes6.dex */
    public class f extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ SearchBar f32116e;

        public f(SearchBar searchBar) {
            this.f32116e = searchBar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f32116e.setVisibility(0);
            C5365a.this.f32105g = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f32116e.stopOnLoadAnimation();
        }
    }

    /* renamed from: com.google.android.material.search.a$g */
    /* loaded from: classes6.dex */
    public interface g {
        /* renamed from: a */
        void mo24644a(SearchBar.OnLoadAnimationCallback onLoadAnimationCallback);
    }

    /* renamed from: A */
    public static /* synthetic */ void m24607A(MaterialShapeDrawable materialShapeDrawable, View view, ValueAnimator valueAnimator) {
        materialShapeDrawable.setInterpolation(1.0f - valueAnimator.getAnimatedFraction());
        ViewCompat.setBackground(view, materialShapeDrawable);
        view.setAlpha(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C */
    public /* synthetic */ void m24609C(SearchBar searchBar, View view, AppBarLayout appBarLayout, boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(m24637t(searchBar, view), m24632o(searchBar, view, appBarLayout));
        animatorSet.addListener(new c());
        Iterator<AnimatorListenerAdapter> it2 = this.f32100b.iterator();
        while (it2.hasNext()) {
            animatorSet.addListener(it2.next());
        }
        if (z) {
            animatorSet.setDuration(0L);
        }
        animatorSet.start();
        this.f32107i = animatorSet;
    }

    /* renamed from: D */
    public boolean m24617D(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f32101c.remove(animatorListenerAdapter);
    }

    /* renamed from: E */
    public boolean m24618E(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f32100b.remove(animatorListenerAdapter);
    }

    /* renamed from: F */
    public boolean m24619F(SearchBar.OnLoadAnimationCallback onLoadAnimationCallback) {
        return this.f32099a.remove(onLoadAnimationCallback);
    }

    /* renamed from: G */
    public void m24620G(boolean z) {
        this.f32106h = z;
    }

    /* renamed from: H */
    public void m24621H(SearchBar searchBar, View view, @Nullable AppBarLayout appBarLayout, boolean z) {
        Animator animator;
        if (m24642y() && (animator = this.f32107i) != null) {
            animator.cancel();
        }
        this.f32105g = true;
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(m24629l(searchBar, view, appBarLayout), m24636s(searchBar));
        animatorSet.addListener(new e());
        Iterator<AnimatorListenerAdapter> it2 = this.f32101c.iterator();
        while (it2.hasNext()) {
            animatorSet.addListener(it2.next());
        }
        if (z) {
            animatorSet.setDuration(0L);
        }
        animatorSet.start();
        this.f32107i = animatorSet;
    }

    /* renamed from: I */
    public void m24622I(final SearchBar searchBar, final View view, @Nullable final AppBarLayout appBarLayout, final boolean z) {
        Animator animator;
        if (m24641x() && (animator = this.f32107i) != null) {
            animator.cancel();
        }
        this.f32104f = true;
        view.setVisibility(4);
        view.post(new Runnable() { // from class: com.sunia.HTREnginev2.o6m
            @Override // java.lang.Runnable
            public final void run() {
                C5365a.this.m24609C(searchBar, view, appBarLayout, z);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: J */
    public void m24623J(SearchBar searchBar) {
        m24628k(new g() { // from class: com.sunia.HTREnginev2.r6m
            @Override // com.google.android.material.search.C5365a.g
            /* renamed from: a */
            public final void mo24644a(SearchBar.OnLoadAnimationCallback onLoadAnimationCallback) {
                onLoadAnimationCallback.onAnimationStart();
            }
        });
        TextView textView = searchBar.getTextView();
        View centerView = searchBar.getCenterView();
        View secondaryActionMenuItemView = ToolbarUtils.getSecondaryActionMenuItemView(searchBar);
        final Animator m24639v = m24639v(textView, secondaryActionMenuItemView);
        m24639v.addListener(new a());
        this.f32102d = m24639v;
        textView.setAlpha(0.0f);
        if (secondaryActionMenuItemView != null) {
            secondaryActionMenuItemView.setAlpha(0.0f);
        }
        if (centerView instanceof AnimatableView) {
            ((AnimatableView) centerView).startAnimation(new AnimatableView.Listener() { // from class: com.sunia.HTREnginev2.s6m
                @Override // com.google.android.material.animation.AnimatableView.Listener
                public final void onAnimationEnd() {
                    m24639v.start();
                }
            });
            return;
        }
        if (centerView == 0) {
            m24639v.start();
            return;
        }
        centerView.setAlpha(0.0f);
        centerView.setVisibility(0);
        Animator m24630m = m24630m(centerView);
        this.f32103e = m24630m;
        m24630m.addListener(new b(centerView, m24639v));
        m24630m.start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: K */
    public void m24624K(SearchBar searchBar) {
        Animator animator = this.f32102d;
        if (animator != null) {
            animator.end();
        }
        Animator animator2 = this.f32103e;
        if (animator2 != null) {
            animator2.end();
        }
        View centerView = searchBar.getCenterView();
        if (centerView instanceof AnimatableView) {
            ((AnimatableView) centerView).stopAnimation();
        }
        if (centerView != 0) {
            centerView.setAlpha(0.0f);
        }
    }

    /* renamed from: h */
    public void m24625h(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.f32101c.add(animatorListenerAdapter);
    }

    /* renamed from: i */
    public void m24626i(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.f32100b.add(animatorListenerAdapter);
    }

    /* renamed from: j */
    public void m24627j(SearchBar.OnLoadAnimationCallback onLoadAnimationCallback) {
        this.f32099a.add(onLoadAnimationCallback);
    }

    /* renamed from: k */
    public final void m24628k(g gVar) {
        Iterator<SearchBar.OnLoadAnimationCallback> it2 = this.f32099a.iterator();
        while (it2.hasNext()) {
            gVar.mo24644a(it2.next());
        }
    }

    /* renamed from: l */
    public final Animator m24629l(SearchBar searchBar, View view, AppBarLayout appBarLayout) {
        return m24633p(searchBar, view, appBarLayout).setDuration(250L).addListener(new f(searchBar)).getCollapseAnimator();
    }

    /* renamed from: m */
    public final Animator m24630m(@Nullable View view) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(view));
        TimeInterpolator timeInterpolator = AnimationUtils.LINEAR_INTERPOLATOR;
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.setDuration(this.f32106h ? 250L : 0L);
        ofFloat.setStartDelay(this.f32106h ? 500L : 0L);
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat2.addUpdateListener(MultiViewUpdateListener.alphaListener(view));
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(250L);
        ofFloat2.setStartDelay(750L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(ofFloat, ofFloat2);
        return animatorSet;
    }

    /* renamed from: n */
    public final List<View> m24631n(View view) {
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(view);
        ArrayList arrayList = new ArrayList();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if ((!isLayoutRtl && (childAt instanceof ActionMenuView)) || (isLayoutRtl && !(childAt instanceof ActionMenuView))) {
                    arrayList.add(childAt);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: o */
    public final Animator m24632o(SearchBar searchBar, View view, @Nullable AppBarLayout appBarLayout) {
        return m24633p(searchBar, view, appBarLayout).setDuration(300L).addListener(new d(searchBar)).getExpandAnimator();
    }

    /* renamed from: p */
    public final ExpandCollapseAnimationHelper m24633p(SearchBar searchBar, View view, @Nullable AppBarLayout appBarLayout) {
        return new ExpandCollapseAnimationHelper(searchBar, view).setAdditionalUpdateListener(m24634q(searchBar, view)).setCollapsedViewOffsetY(appBarLayout != null ? appBarLayout.getTop() : 0).addEndAnchoredViews(m24631n(view));
    }

    /* renamed from: q */
    public final ValueAnimator.AnimatorUpdateListener m24634q(SearchBar searchBar, final View view) {
        final MaterialShapeDrawable createWithElevationOverlay = MaterialShapeDrawable.createWithElevationOverlay(view.getContext());
        createWithElevationOverlay.setCornerSize(searchBar.getCornerSize());
        createWithElevationOverlay.setElevation(ViewCompat.getElevation(searchBar));
        return new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.p6m
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C5365a.m24607A(MaterialShapeDrawable.this, view, valueAnimator);
            }
        };
    }

    /* renamed from: r */
    public final List<View> m24635r(SearchBar searchBar) {
        List<View> children = ViewUtils.getChildren(searchBar);
        if (searchBar.getCenterView() != null) {
            children.remove(searchBar.getCenterView());
        }
        return children;
    }

    /* renamed from: s */
    public final Animator m24636s(SearchBar searchBar) {
        List<View> m24635r = m24635r(searchBar);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(m24635r));
        ofFloat.setDuration(100L);
        ofFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
        return ofFloat;
    }

    /* renamed from: t */
    public final Animator m24637t(SearchBar searchBar, final View view) {
        List<View> m24635r = m24635r(searchBar);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(m24635r));
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.q6m
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setAlpha(0.0f);
            }
        });
        ofFloat.setDuration(75L);
        ofFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
        return ofFloat;
    }

    /* renamed from: u */
    public final Animator m24638u(@Nullable View view) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(view));
        ofFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
        ofFloat.setDuration(250L);
        return ofFloat;
    }

    /* renamed from: v */
    public final Animator m24639v(TextView textView, @Nullable View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setStartDelay(250L);
        animatorSet.play(m24640w(textView));
        if (view != null) {
            animatorSet.play(m24638u(view));
        }
        return animatorSet;
    }

    /* renamed from: w */
    public final Animator m24640w(TextView textView) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(textView));
        ofFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
        ofFloat.setDuration(250L);
        return ofFloat;
    }

    /* renamed from: x */
    public boolean m24641x() {
        return this.f32105g;
    }

    /* renamed from: y */
    public boolean m24642y() {
        return this.f32104f;
    }

    /* renamed from: z */
    public boolean m24643z() {
        return this.f32106h;
    }
}
