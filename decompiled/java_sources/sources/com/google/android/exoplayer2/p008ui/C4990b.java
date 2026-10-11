package com.google.android.exoplayer2.p008ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.p008ui.C4990b;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.exoplayer2.ui.b */
/* loaded from: classes5.dex */
public final class C4990b {

    /* renamed from: D */
    public static final long f27869D = 2000;

    /* renamed from: E */
    public static final long f27870E = 250;

    /* renamed from: F */
    public static final long f27871F = 250;

    /* renamed from: G */
    public static final int f27872G = 0;

    /* renamed from: H */
    public static final int f27873H = 1;

    /* renamed from: I */
    public static final int f27874I = 2;

    /* renamed from: J */
    public static final int f27875J = 3;

    /* renamed from: K */
    public static final int f27876K = 4;

    /* renamed from: A */
    public boolean f27877A;

    /* renamed from: B */
    public boolean f27878B;

    /* renamed from: a */
    public final StyledPlayerControlView f27880a;

    /* renamed from: b */
    @Nullable
    public final View f27881b;

    /* renamed from: c */
    @Nullable
    public final ViewGroup f27882c;

    /* renamed from: d */
    @Nullable
    public final ViewGroup f27883d;

    /* renamed from: e */
    @Nullable
    public final ViewGroup f27884e;

    /* renamed from: f */
    @Nullable
    public final ViewGroup f27885f;

    /* renamed from: g */
    @Nullable
    public final ViewGroup f27886g;

    /* renamed from: h */
    @Nullable
    public final ViewGroup f27887h;

    /* renamed from: i */
    @Nullable
    public final ViewGroup f27888i;

    /* renamed from: j */
    @Nullable
    public final View f27889j;

    /* renamed from: k */
    @Nullable
    public final View f27890k;

    /* renamed from: l */
    public final AnimatorSet f27891l;

    /* renamed from: m */
    public final AnimatorSet f27892m;

    /* renamed from: n */
    public final AnimatorSet f27893n;

    /* renamed from: o */
    public final AnimatorSet f27894o;

    /* renamed from: p */
    public final AnimatorSet f27895p;

    /* renamed from: q */
    public final ValueAnimator f27896q;

    /* renamed from: r */
    public final ValueAnimator f27897r;

    /* renamed from: s */
    public final Runnable f27898s = new Runnable() { // from class: com.sunia.HTREnginev2.z3n
        @Override // java.lang.Runnable
        public final void run() {
            C4990b.this.m21288d0();
        }
    };

    /* renamed from: t */
    public final Runnable f27899t = new Runnable() { // from class: com.sunia.HTREnginev2.c4n
        @Override // java.lang.Runnable
        public final void run() {
            C4990b.this.m21267D();
        }
    };

    /* renamed from: u */
    public final Runnable f27900u = new Runnable() { // from class: com.sunia.HTREnginev2.d4n
        @Override // java.lang.Runnable
        public final void run() {
            C4990b.this.m21271H();
        }
    };

    /* renamed from: v */
    public final Runnable f27901v = new Runnable() { // from class: com.sunia.HTREnginev2.e4n
        @Override // java.lang.Runnable
        public final void run() {
            C4990b.this.m21270G();
        }
    };

    /* renamed from: w */
    public final Runnable f27902w = new Runnable() { // from class: com.sunia.HTREnginev2.f4n
        @Override // java.lang.Runnable
        public final void run() {
            C4990b.this.m21268E();
        }
    };

    /* renamed from: x */
    public final View.OnLayoutChangeListener f27903x = new View.OnLayoutChangeListener() { // from class: com.sunia.HTREnginev2.g4n
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            C4990b.this.m21277S(view, i2, i3, i4, i5, i6, i7, i8, i9);
        }
    };

    /* renamed from: C */
    public boolean f27879C = true;

    /* renamed from: z */
    public int f27905z = 0;

    /* renamed from: y */
    public final List<View> f27904y = new ArrayList();

    /* renamed from: com.google.android.exoplayer2.ui.b$a */
    /* loaded from: classes5.dex */
    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (C4990b.this.f27881b != null) {
                C4990b.this.f27881b.setVisibility(4);
            }
            if (C4990b.this.f27882c != null) {
                C4990b.this.f27882c.setVisibility(4);
            }
            if (C4990b.this.f27884e != null) {
                C4990b.this.f27884e.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (!(C4990b.this.f27889j instanceof DefaultTimeBar) || C4990b.this.f27877A) {
                return;
            }
            ((DefaultTimeBar) C4990b.this.f27889j).hideScrubber(250L);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.b$b */
    /* loaded from: classes5.dex */
    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (C4990b.this.f27881b != null) {
                C4990b.this.f27881b.setVisibility(0);
            }
            if (C4990b.this.f27882c != null) {
                C4990b.this.f27882c.setVisibility(0);
            }
            if (C4990b.this.f27884e != null) {
                C4990b.this.f27884e.setVisibility(C4990b.this.f27877A ? 0 : 4);
            }
            if (!(C4990b.this.f27889j instanceof DefaultTimeBar) || C4990b.this.f27877A) {
                return;
            }
            ((DefaultTimeBar) C4990b.this.f27889j).showScrubber(250L);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.b$c */
    /* loaded from: classes5.dex */
    public class c extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ StyledPlayerControlView f27908e;

        public c(StyledPlayerControlView styledPlayerControlView) {
            this.f27908e = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C4990b.this.m21285a0(1);
            if (C4990b.this.f27878B) {
                this.f27908e.post(C4990b.this.f27898s);
                C4990b.this.f27878B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C4990b.this.m21285a0(3);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.b$d */
    /* loaded from: classes5.dex */
    public class d extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ StyledPlayerControlView f27910e;

        public d(StyledPlayerControlView styledPlayerControlView) {
            this.f27910e = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C4990b.this.m21285a0(2);
            if (C4990b.this.f27878B) {
                this.f27910e.post(C4990b.this.f27898s);
                C4990b.this.f27878B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C4990b.this.m21285a0(3);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.b$e */
    /* loaded from: classes5.dex */
    public class e extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ StyledPlayerControlView f27912e;

        public e(StyledPlayerControlView styledPlayerControlView) {
            this.f27912e = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C4990b.this.m21285a0(2);
            if (C4990b.this.f27878B) {
                this.f27912e.post(C4990b.this.f27898s);
                C4990b.this.f27878B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C4990b.this.m21285a0(3);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.b$f */
    /* loaded from: classes5.dex */
    public class f extends AnimatorListenerAdapter {
        public f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C4990b.this.m21285a0(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C4990b.this.m21285a0(4);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.b$g */
    /* loaded from: classes5.dex */
    public class g extends AnimatorListenerAdapter {
        public g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C4990b.this.m21285a0(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C4990b.this.m21285a0(4);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.b$h */
    /* loaded from: classes5.dex */
    public class h extends AnimatorListenerAdapter {
        public h() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (C4990b.this.f27885f != null) {
                C4990b.this.f27885f.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (C4990b.this.f27887h != null) {
                C4990b.this.f27887h.setVisibility(0);
                C4990b.this.f27887h.setTranslationX(C4990b.this.f27887h.getWidth());
                C4990b.this.f27887h.scrollTo(C4990b.this.f27887h.getWidth(), 0);
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.ui.b$i */
    /* loaded from: classes5.dex */
    public class i extends AnimatorListenerAdapter {
        public i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (C4990b.this.f27887h != null) {
                C4990b.this.f27887h.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (C4990b.this.f27885f != null) {
                C4990b.this.f27885f.setVisibility(0);
            }
        }
    }

    public C4990b(StyledPlayerControlView styledPlayerControlView) {
        this.f27880a = styledPlayerControlView;
        this.f27881b = styledPlayerControlView.findViewById(C4970R.id.exo_controls_background);
        this.f27882c = (ViewGroup) styledPlayerControlView.findViewById(C4970R.id.exo_center_controls);
        this.f27884e = (ViewGroup) styledPlayerControlView.findViewById(C4970R.id.exo_minimal_controls);
        ViewGroup viewGroup = (ViewGroup) styledPlayerControlView.findViewById(C4970R.id.exo_bottom_bar);
        this.f27883d = viewGroup;
        this.f27888i = (ViewGroup) styledPlayerControlView.findViewById(C4970R.id.exo_time);
        View findViewById = styledPlayerControlView.findViewById(C4970R.id.exo_progress);
        this.f27889j = findViewById;
        this.f27885f = (ViewGroup) styledPlayerControlView.findViewById(C4970R.id.exo_basic_controls);
        this.f27886g = (ViewGroup) styledPlayerControlView.findViewById(C4970R.id.exo_extra_controls);
        this.f27887h = (ViewGroup) styledPlayerControlView.findViewById(C4970R.id.exo_extra_controls_scroll_view);
        View findViewById2 = styledPlayerControlView.findViewById(C4970R.id.exo_overflow_show);
        this.f27890k = findViewById2;
        View findViewById3 = styledPlayerControlView.findViewById(C4970R.id.exo_overflow_hide);
        if (findViewById2 != null && findViewById3 != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v3n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C4990b.this.m21279U(view);
                }
            });
            findViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.v3n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C4990b.this.m21279U(view);
                }
            });
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.w3n
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C4990b.this.m21235K(valueAnimator);
            }
        });
        ofFloat.addListener(new a());
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.x3n
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C4990b.this.m21236L(valueAnimator);
            }
        });
        ofFloat2.addListener(new b());
        Resources resources = styledPlayerControlView.getResources();
        float dimension = resources.getDimension(C4970R.dimen.exo_styled_bottom_bar_height) - resources.getDimension(C4970R.dimen.exo_styled_progress_bar_height);
        float dimension2 = resources.getDimension(C4970R.dimen.exo_styled_bottom_bar_height);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f27891l = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new c(styledPlayerControlView));
        animatorSet.play(ofFloat).with(m21239O(0.0f, dimension, findViewById)).with(m21239O(0.0f, dimension, viewGroup));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f27892m = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new d(styledPlayerControlView));
        animatorSet2.play(m21239O(dimension, dimension2, findViewById)).with(m21239O(dimension, dimension2, viewGroup));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f27893n = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new e(styledPlayerControlView));
        animatorSet3.play(ofFloat).with(m21239O(0.0f, dimension2, findViewById)).with(m21239O(0.0f, dimension2, viewGroup));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f27894o = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new f());
        animatorSet4.play(ofFloat2).with(m21239O(dimension, 0.0f, findViewById)).with(m21239O(dimension, 0.0f, viewGroup));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.f27895p = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new g());
        animatorSet5.play(ofFloat2).with(m21239O(dimension2, 0.0f, findViewById)).with(m21239O(dimension2, 0.0f, viewGroup));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f27896q = ofFloat3;
        ofFloat3.setDuration(250L);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.a4n
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C4990b.this.m21237M(valueAnimator);
            }
        });
        ofFloat3.addListener(new h());
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f27897r = ofFloat4;
        ofFloat4.setDuration(250L);
        ofFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.b4n
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C4990b.this.m21238N(valueAnimator);
            }
        });
        ofFloat4.addListener(new i());
    }

    /* renamed from: B */
    public static int m21234B(@Nullable View view) {
        if (view == null) {
            return 0;
        }
        int width = view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return width;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return width + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K */
    public /* synthetic */ void m21235K(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f27881b;
        if (view != null) {
            view.setAlpha(floatValue);
        }
        ViewGroup viewGroup = this.f27882c;
        if (viewGroup != null) {
            viewGroup.setAlpha(floatValue);
        }
        ViewGroup viewGroup2 = this.f27884e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public /* synthetic */ void m21236L(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f27881b;
        if (view != null) {
            view.setAlpha(floatValue);
        }
        ViewGroup viewGroup = this.f27882c;
        if (viewGroup != null) {
            viewGroup.setAlpha(floatValue);
        }
        ViewGroup viewGroup2 = this.f27884e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public /* synthetic */ void m21237M(ValueAnimator valueAnimator) {
        m21291y(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N */
    public /* synthetic */ void m21238N(ValueAnimator valueAnimator) {
        m21291y(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* renamed from: O */
    public static ObjectAnimator m21239O(float f2, float f3, View view) {
        return ObjectAnimator.ofFloat(view, "translationY", f2, f3);
    }

    /* renamed from: z */
    public static int m21264z(@Nullable View view) {
        if (view == null) {
            return 0;
        }
        int height = view.getHeight();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return height;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return height + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: A */
    public boolean m21265A(@Nullable View view) {
        return view != null && this.f27904y.contains(view);
    }

    /* renamed from: C */
    public void m21266C() {
        int i2 = this.f27905z;
        if (i2 == 3 || i2 == 2) {
            return;
        }
        m21281W();
        if (!this.f27879C) {
            m21268E();
        } else if (this.f27905z == 1) {
            m21271H();
        } else {
            m21267D();
        }
    }

    /* renamed from: D */
    public final void m21267D() {
        this.f27893n.start();
    }

    /* renamed from: E */
    public final void m21268E() {
        m21285a0(2);
    }

    /* renamed from: F */
    public void m21269F() {
        int i2 = this.f27905z;
        if (i2 == 3 || i2 == 2) {
            return;
        }
        m21281W();
        m21268E();
    }

    /* renamed from: G */
    public final void m21270G() {
        this.f27891l.start();
        m21280V(this.f27900u, 2000L);
    }

    /* renamed from: H */
    public final void m21271H() {
        this.f27892m.start();
    }

    /* renamed from: I */
    public boolean m21272I() {
        return this.f27879C;
    }

    /* renamed from: J */
    public boolean m21273J() {
        return this.f27905z == 0 && this.f27880a.isVisible();
    }

    /* renamed from: P */
    public void m21274P() {
        this.f27880a.addOnLayoutChangeListener(this.f27903x);
    }

    /* renamed from: Q */
    public void m21275Q() {
        this.f27880a.removeOnLayoutChangeListener(this.f27903x);
    }

    /* renamed from: R */
    public void m21276R(boolean z, int i2, int i3, int i4, int i5) {
        View view = this.f27881b;
        if (view != null) {
            view.layout(0, 0, i4 - i2, i5 - i3);
        }
    }

    /* renamed from: S */
    public final void m21277S(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        boolean m21290f0 = m21290f0();
        if (this.f27877A != m21290f0) {
            this.f27877A = m21290f0;
            view.post(new Runnable() { // from class: com.sunia.HTREnginev2.u3n
                @Override // java.lang.Runnable
                public final void run() {
                    C4990b.this.m21289e0();
                }
            });
        }
        boolean z = i4 - i2 != i8 - i6;
        if (this.f27877A || !z) {
            return;
        }
        view.post(new Runnable() { // from class: com.sunia.HTREnginev2.y3n
            @Override // java.lang.Runnable
            public final void run() {
                C4990b.this.m21278T();
            }
        });
    }

    /* renamed from: T */
    public final void m21278T() {
        int i2;
        if (this.f27885f == null || this.f27886g == null) {
            return;
        }
        int width = (this.f27880a.getWidth() - this.f27880a.getPaddingLeft()) - this.f27880a.getPaddingRight();
        while (true) {
            if (this.f27886g.getChildCount() <= 1) {
                break;
            }
            int childCount = this.f27886g.getChildCount() - 2;
            View childAt = this.f27886g.getChildAt(childCount);
            this.f27886g.removeViewAt(childCount);
            this.f27885f.addView(childAt, 0);
        }
        View view = this.f27890k;
        if (view != null) {
            view.setVisibility(8);
        }
        int m21234B = m21234B(this.f27888i);
        int childCount2 = this.f27885f.getChildCount() - 1;
        for (int i3 = 0; i3 < childCount2; i3++) {
            m21234B += m21234B(this.f27885f.getChildAt(i3));
        }
        if (m21234B <= width) {
            ViewGroup viewGroup = this.f27887h;
            if (viewGroup == null || viewGroup.getVisibility() != 0 || this.f27897r.isStarted()) {
                return;
            }
            this.f27896q.cancel();
            this.f27897r.start();
            return;
        }
        View view2 = this.f27890k;
        if (view2 != null) {
            view2.setVisibility(0);
            m21234B += m21234B(this.f27890k);
        }
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < childCount2; i4++) {
            View childAt2 = this.f27885f.getChildAt(i4);
            m21234B -= m21234B(childAt2);
            arrayList.add(childAt2);
            if (m21234B <= width) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.f27885f.removeViews(0, arrayList.size());
        for (i2 = 0; i2 < arrayList.size(); i2++) {
            this.f27886g.addView((View) arrayList.get(i2), this.f27886g.getChildCount() - 1);
        }
    }

    /* renamed from: U */
    public final void m21279U(View view) {
        m21282X();
        if (view.getId() == C4970R.id.exo_overflow_show) {
            this.f27896q.start();
        } else if (view.getId() == C4970R.id.exo_overflow_hide) {
            this.f27897r.start();
        }
    }

    /* renamed from: V */
    public final void m21280V(Runnable runnable, long j) {
        if (j >= 0) {
            this.f27880a.postDelayed(runnable, j);
        }
    }

    /* renamed from: W */
    public void m21281W() {
        this.f27880a.removeCallbacks(this.f27902w);
        this.f27880a.removeCallbacks(this.f27899t);
        this.f27880a.removeCallbacks(this.f27901v);
        this.f27880a.removeCallbacks(this.f27900u);
    }

    /* renamed from: X */
    public void m21282X() {
        if (this.f27905z == 3) {
            return;
        }
        m21281W();
        int showTimeoutMs = this.f27880a.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.f27879C) {
                m21280V(this.f27902w, showTimeoutMs);
            } else if (this.f27905z == 1) {
                m21280V(this.f27900u, 2000L);
            } else {
                m21280V(this.f27901v, showTimeoutMs);
            }
        }
    }

    /* renamed from: Y */
    public void m21283Y(boolean z) {
        this.f27879C = z;
    }

    /* renamed from: Z */
    public void m21284Z(@Nullable View view, boolean z) {
        if (view == null) {
            return;
        }
        if (!z) {
            view.setVisibility(8);
            this.f27904y.remove(view);
            return;
        }
        if (this.f27877A && m21286b0(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        this.f27904y.add(view);
    }

    /* renamed from: a0 */
    public final void m21285a0(int i2) {
        int i3 = this.f27905z;
        this.f27905z = i2;
        if (i2 == 2) {
            this.f27880a.setVisibility(8);
        } else if (i3 == 2) {
            this.f27880a.setVisibility(0);
        }
        if (i3 != i2) {
            this.f27880a.m21123c0();
        }
    }

    /* renamed from: b0 */
    public final boolean m21286b0(View view) {
        int id = view.getId();
        return id == C4970R.id.exo_bottom_bar || id == C4970R.id.exo_prev || id == C4970R.id.exo_next || id == C4970R.id.exo_rew || id == C4970R.id.exo_rew_with_amount || id == C4970R.id.exo_ffwd || id == C4970R.id.exo_ffwd_with_amount;
    }

    /* renamed from: c0 */
    public void m21287c0() {
        if (!this.f27880a.isVisible()) {
            this.f27880a.setVisibility(0);
            this.f27880a.m21131k0();
            this.f27880a.m21127g0();
        }
        m21288d0();
    }

    /* renamed from: d0 */
    public final void m21288d0() {
        if (!this.f27879C) {
            m21285a0(0);
            m21282X();
            return;
        }
        int i2 = this.f27905z;
        if (i2 == 1) {
            this.f27894o.start();
        } else if (i2 == 2) {
            this.f27895p.start();
        } else if (i2 == 3) {
            this.f27878B = true;
        } else if (i2 == 4) {
            return;
        }
        m21282X();
    }

    /* renamed from: e0 */
    public final void m21289e0() {
        ViewGroup viewGroup = this.f27884e;
        if (viewGroup != null) {
            viewGroup.setVisibility(this.f27877A ? 0 : 4);
        }
        View view = this.f27889j;
        if (view != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            int dimensionPixelSize = this.f27880a.getResources().getDimensionPixelSize(C4970R.dimen.exo_styled_progress_margin_bottom);
            if (this.f27877A) {
                dimensionPixelSize = 0;
            }
            marginLayoutParams.bottomMargin = dimensionPixelSize;
            this.f27889j.setLayoutParams(marginLayoutParams);
            View view2 = this.f27889j;
            if (view2 instanceof DefaultTimeBar) {
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view2;
                if (this.f27877A) {
                    defaultTimeBar.hideScrubber(true);
                } else {
                    int i2 = this.f27905z;
                    if (i2 == 1) {
                        defaultTimeBar.hideScrubber(false);
                    } else if (i2 != 3) {
                        defaultTimeBar.showScrubber();
                    }
                }
            }
        }
        for (View view3 : this.f27904y) {
            view3.setVisibility((this.f27877A && m21286b0(view3)) ? 4 : 0);
        }
    }

    /* renamed from: f0 */
    public final boolean m21290f0() {
        int width = (this.f27880a.getWidth() - this.f27880a.getPaddingLeft()) - this.f27880a.getPaddingRight();
        int height = (this.f27880a.getHeight() - this.f27880a.getPaddingBottom()) - this.f27880a.getPaddingTop();
        int m21234B = m21234B(this.f27882c);
        ViewGroup viewGroup = this.f27882c;
        int paddingLeft = m21234B - (viewGroup != null ? viewGroup.getPaddingLeft() + this.f27882c.getPaddingRight() : 0);
        int m21264z = m21264z(this.f27882c);
        ViewGroup viewGroup2 = this.f27882c;
        return width <= Math.max(paddingLeft, m21234B(this.f27888i) + m21234B(this.f27890k)) || height <= (m21264z - (viewGroup2 != null ? viewGroup2.getPaddingTop() + this.f27882c.getPaddingBottom() : 0)) + (m21264z(this.f27883d) * 2);
    }

    /* renamed from: y */
    public final void m21291y(float f2) {
        if (this.f27887h != null) {
            this.f27887h.setTranslationX((int) (r0.getWidth() * (1.0f - f2)));
        }
        ViewGroup viewGroup = this.f27888i;
        if (viewGroup != null) {
            viewGroup.setAlpha(1.0f - f2);
        }
        ViewGroup viewGroup2 = this.f27885f;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f2);
        }
    }
}
