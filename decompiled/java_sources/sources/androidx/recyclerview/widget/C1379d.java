package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;

@VisibleForTesting
/* renamed from: androidx.recyclerview.widget.d */
/* loaded from: classes3.dex */
public class C1379d extends RecyclerView.ItemDecoration implements RecyclerView.OnItemTouchListener {

    /* renamed from: D */
    public static final int f9879D = 0;

    /* renamed from: E */
    public static final int f9880E = 1;

    /* renamed from: F */
    public static final int f9881F = 2;

    /* renamed from: G */
    public static final int f9882G = 0;

    /* renamed from: H */
    public static final int f9883H = 1;

    /* renamed from: I */
    public static final int f9884I = 2;

    /* renamed from: J */
    public static final int f9885J = 0;

    /* renamed from: K */
    public static final int f9886K = 1;

    /* renamed from: L */
    public static final int f9887L = 2;

    /* renamed from: M */
    public static final int f9888M = 3;

    /* renamed from: N */
    public static final int f9889N = 500;

    /* renamed from: O */
    public static final int f9890O = 1500;

    /* renamed from: P */
    public static final int f9891P = 1200;

    /* renamed from: Q */
    public static final int f9892Q = 500;

    /* renamed from: R */
    public static final int f9893R = 255;

    /* renamed from: S */
    public static final int[] f9894S = {R.attr.state_pressed};

    /* renamed from: T */
    public static final int[] f9895T = new int[0];

    /* renamed from: A */
    public int f9896A;

    /* renamed from: B */
    public final Runnable f9897B;

    /* renamed from: C */
    public final RecyclerView.OnScrollListener f9898C;

    /* renamed from: a */
    public final int f9899a;

    /* renamed from: b */
    public final int f9900b;

    /* renamed from: c */
    public final StateListDrawable f9901c;

    /* renamed from: d */
    public final Drawable f9902d;

    /* renamed from: e */
    public final int f9903e;

    /* renamed from: f */
    public final int f9904f;

    /* renamed from: g */
    public final StateListDrawable f9905g;

    /* renamed from: h */
    public final Drawable f9906h;

    /* renamed from: i */
    public final int f9907i;

    /* renamed from: j */
    public final int f9908j;

    /* renamed from: k */
    @VisibleForTesting
    public int f9909k;

    /* renamed from: l */
    @VisibleForTesting
    public int f9910l;

    /* renamed from: m */
    @VisibleForTesting
    public float f9911m;

    /* renamed from: n */
    @VisibleForTesting
    public int f9912n;

    /* renamed from: o */
    @VisibleForTesting
    public int f9913o;

    /* renamed from: p */
    @VisibleForTesting
    public float f9914p;

    /* renamed from: s */
    public RecyclerView f9917s;

    /* renamed from: z */
    public final ValueAnimator f9924z;

    /* renamed from: q */
    public int f9915q = 0;

    /* renamed from: r */
    public int f9916r = 0;

    /* renamed from: t */
    public boolean f9918t = false;

    /* renamed from: u */
    public boolean f9919u = false;

    /* renamed from: v */
    public int f9920v = 0;

    /* renamed from: w */
    public int f9921w = 0;

    /* renamed from: x */
    public final int[] f9922x = new int[2];

    /* renamed from: y */
    public final int[] f9923y = new int[2];

    /* renamed from: androidx.recyclerview.widget.d$a */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1379d.this.m6185k(500);
        }
    }

    /* renamed from: androidx.recyclerview.widget.d$b */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.OnScrollListener {
        public b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            C1379d.this.m6198x(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    /* renamed from: androidx.recyclerview.widget.d$c */
    /* loaded from: classes3.dex */
    public class c extends AnimatorListenerAdapter {

        /* renamed from: e */
        public boolean f9927e = false;

        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f9927e = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f9927e) {
                this.f9927e = false;
                return;
            }
            if (((Float) C1379d.this.f9924z.getAnimatedValue()).floatValue() == 0.0f) {
                C1379d c1379d = C1379d.this;
                c1379d.f9896A = 0;
                c1379d.m6195u(0);
            } else {
                C1379d c1379d2 = C1379d.this;
                c1379d2.f9896A = 2;
                c1379d2.m6192r();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.d$d */
    /* loaded from: classes3.dex */
    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            C1379d.this.f9901c.setAlpha(floatValue);
            C1379d.this.f9902d.setAlpha(floatValue);
            C1379d.this.m6192r();
        }
    }

    public C1379d(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f9924z = ofFloat;
        this.f9896A = 0;
        this.f9897B = new a();
        this.f9898C = new b();
        this.f9901c = stateListDrawable;
        this.f9902d = drawable;
        this.f9905g = stateListDrawable2;
        this.f9906h = drawable2;
        this.f9903e = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f9904f = Math.max(i, drawable.getIntrinsicWidth());
        this.f9907i = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f9908j = Math.max(i, drawable2.getIntrinsicWidth());
        this.f9899a = i2;
        this.f9900b = i3;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new c());
        ofFloat.addUpdateListener(new d());
        attachToRecyclerView(recyclerView);
    }

    /* renamed from: a */
    public final void m6175a() {
        this.f9917s.removeCallbacks(this.f9897B);
    }

    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f9917s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            m6176b();
        }
        this.f9917s = recyclerView;
        if (recyclerView != null) {
            m6196v();
        }
    }

    /* renamed from: b */
    public final void m6176b() {
        this.f9917s.removeItemDecoration(this);
        this.f9917s.removeOnItemTouchListener(this);
        this.f9917s.removeOnScrollListener(this.f9898C);
        m6175a();
    }

    /* renamed from: c */
    public final void m6177c(Canvas canvas) {
        int i = this.f9916r;
        int i2 = this.f9907i;
        int i3 = this.f9913o;
        int i4 = this.f9912n;
        this.f9905g.setBounds(0, 0, i4, i2);
        this.f9906h.setBounds(0, 0, this.f9915q, this.f9908j);
        canvas.translate(0.0f, i - i2);
        this.f9906h.draw(canvas);
        canvas.translate(i3 - (i4 / 2), 0.0f);
        this.f9905g.draw(canvas);
        canvas.translate(-r2, -r0);
    }

    /* renamed from: d */
    public final void m6178d(Canvas canvas) {
        int i = this.f9915q;
        int i2 = this.f9903e;
        int i3 = i - i2;
        int i4 = this.f9910l;
        int i5 = this.f9909k;
        int i6 = i4 - (i5 / 2);
        this.f9901c.setBounds(0, 0, i2, i5);
        this.f9902d.setBounds(0, 0, this.f9904f, this.f9916r);
        if (!m6188n()) {
            canvas.translate(i3, 0.0f);
            this.f9902d.draw(canvas);
            canvas.translate(0.0f, i6);
            this.f9901c.draw(canvas);
            canvas.translate(-i3, -i6);
            return;
        }
        this.f9902d.draw(canvas);
        canvas.translate(this.f9903e, i6);
        canvas.scale(-1.0f, 1.0f);
        this.f9901c.draw(canvas);
        canvas.scale(-1.0f, 1.0f);
        canvas.translate(-this.f9903e, -i6);
    }

    /* renamed from: e */
    public final int[] m6179e() {
        int[] iArr = this.f9923y;
        int i = this.f9900b;
        iArr[0] = i;
        iArr[1] = this.f9915q - i;
        return iArr;
    }

    @VisibleForTesting
    /* renamed from: f */
    public Drawable m6180f() {
        return this.f9905g;
    }

    @VisibleForTesting
    /* renamed from: g */
    public Drawable m6181g() {
        return this.f9906h;
    }

    /* renamed from: h */
    public final int[] m6182h() {
        int[] iArr = this.f9922x;
        int i = this.f9900b;
        iArr[0] = i;
        iArr[1] = this.f9916r - i;
        return iArr;
    }

    @VisibleForTesting
    /* renamed from: i */
    public Drawable m6183i() {
        return this.f9901c;
    }

    @VisibleForTesting
    /* renamed from: j */
    public Drawable m6184j() {
        return this.f9902d;
    }

    @VisibleForTesting
    /* renamed from: k */
    public void m6185k(int i) {
        int i2 = this.f9896A;
        if (i2 == 1) {
            this.f9924z.cancel();
        } else if (i2 != 2) {
            return;
        }
        this.f9896A = 3;
        ValueAnimator valueAnimator = this.f9924z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        this.f9924z.setDuration(i);
        this.f9924z.start();
    }

    /* renamed from: l */
    public final void m6186l(float f) {
        int[] m6179e = m6179e();
        float max = Math.max(m6179e[0], Math.min(m6179e[1], f));
        if (Math.abs(this.f9913o - max) < 2.0f) {
            return;
        }
        int m6194t = m6194t(this.f9914p, max, m6179e, this.f9917s.computeHorizontalScrollRange(), this.f9917s.computeHorizontalScrollOffset(), this.f9915q);
        if (m6194t != 0) {
            this.f9917s.scrollBy(m6194t, 0);
        }
        this.f9914p = max;
    }

    /* renamed from: m */
    public boolean m6187m() {
        return this.f9920v == 2;
    }

    /* renamed from: n */
    public final boolean m6188n() {
        return ViewCompat.getLayoutDirection(this.f9917s) == 1;
    }

    @VisibleForTesting
    /* renamed from: o */
    public boolean m6189o(float f, float f2) {
        if (f2 >= this.f9916r - this.f9907i) {
            int i = this.f9913o;
            int i2 = this.f9912n;
            if (f >= i - (i2 / 2) && f <= i + (i2 / 2)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (this.f9915q != this.f9917s.getWidth() || this.f9916r != this.f9917s.getHeight()) {
            this.f9915q = this.f9917s.getWidth();
            this.f9916r = this.f9917s.getHeight();
            m6195u(0);
        } else if (this.f9896A != 0) {
            if (this.f9918t) {
                m6178d(canvas);
            }
            if (this.f9919u) {
                m6177c(canvas);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        int i = this.f9920v;
        if (i == 1) {
            boolean m6190p = m6190p(motionEvent.getX(), motionEvent.getY());
            boolean m6189o = m6189o(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!m6190p && !m6189o) {
                return false;
            }
            if (m6189o) {
                this.f9921w = 1;
                this.f9914p = (int) motionEvent.getX();
            } else if (m6190p) {
                this.f9921w = 2;
                this.f9911m = (int) motionEvent.getY();
            }
            m6195u(2);
        } else if (i != 2) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        if (this.f9920v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean m6190p = m6190p(motionEvent.getX(), motionEvent.getY());
            boolean m6189o = m6189o(motionEvent.getX(), motionEvent.getY());
            if (m6190p || m6189o) {
                if (m6189o) {
                    this.f9921w = 1;
                    this.f9914p = (int) motionEvent.getX();
                } else if (m6190p) {
                    this.f9921w = 2;
                    this.f9911m = (int) motionEvent.getY();
                }
                m6195u(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.f9920v == 2) {
            this.f9911m = 0.0f;
            this.f9914p = 0.0f;
            m6195u(1);
            this.f9921w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.f9920v == 2) {
            m6197w();
            if (this.f9921w == 1) {
                m6186l(motionEvent.getX());
            }
            if (this.f9921w == 2) {
                m6199y(motionEvent.getY());
            }
        }
    }

    @VisibleForTesting
    /* renamed from: p */
    public boolean m6190p(float f, float f2) {
        if (!m6188n() ? f >= this.f9915q - this.f9903e : f <= this.f9903e) {
            int i = this.f9910l;
            int i2 = this.f9909k;
            if (f2 >= i - (i2 / 2) && f2 <= i + (i2 / 2)) {
                return true;
            }
        }
        return false;
    }

    @VisibleForTesting
    /* renamed from: q */
    public boolean m6191q() {
        return this.f9920v == 1;
    }

    /* renamed from: r */
    public void m6192r() {
        this.f9917s.invalidate();
    }

    /* renamed from: s */
    public final void m6193s(int i) {
        m6175a();
        this.f9917s.postDelayed(this.f9897B, i);
    }

    /* renamed from: t */
    public final int m6194t(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 == 0) {
            return 0;
        }
        int i5 = i - i3;
        int i6 = (int) (((f2 - f) / i4) * i5);
        int i7 = i2 + i6;
        if (i7 >= i5 || i7 < 0) {
            return 0;
        }
        return i6;
    }

    /* renamed from: u */
    public void m6195u(int i) {
        if (i == 2 && this.f9920v != 2) {
            this.f9901c.setState(f9894S);
            m6175a();
        }
        if (i == 0) {
            m6192r();
        } else {
            m6197w();
        }
        if (this.f9920v == 2 && i != 2) {
            this.f9901c.setState(f9895T);
            m6193s(1200);
        } else if (i == 1) {
            m6193s(1500);
        }
        this.f9920v = i;
    }

    /* renamed from: v */
    public final void m6196v() {
        this.f9917s.addItemDecoration(this);
        this.f9917s.addOnItemTouchListener(this);
        this.f9917s.addOnScrollListener(this.f9898C);
    }

    /* renamed from: w */
    public void m6197w() {
        int i = this.f9896A;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                this.f9924z.cancel();
            }
        }
        this.f9896A = 1;
        ValueAnimator valueAnimator = this.f9924z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f9924z.setDuration(500L);
        this.f9924z.setStartDelay(0L);
        this.f9924z.start();
    }

    /* renamed from: x */
    public void m6198x(int i, int i2) {
        int computeVerticalScrollRange = this.f9917s.computeVerticalScrollRange();
        int i3 = this.f9916r;
        this.f9918t = computeVerticalScrollRange - i3 > 0 && i3 >= this.f9899a;
        int computeHorizontalScrollRange = this.f9917s.computeHorizontalScrollRange();
        int i4 = this.f9915q;
        boolean z = computeHorizontalScrollRange - i4 > 0 && i4 >= this.f9899a;
        this.f9919u = z;
        boolean z2 = this.f9918t;
        if (!z2 && !z) {
            if (this.f9920v != 0) {
                m6195u(0);
                return;
            }
            return;
        }
        if (z2) {
            float f = i3;
            this.f9910l = (int) ((f * (i2 + (f / 2.0f))) / computeVerticalScrollRange);
            this.f9909k = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
        }
        if (this.f9919u) {
            float f2 = i4;
            this.f9913o = (int) ((f2 * (i + (f2 / 2.0f))) / computeHorizontalScrollRange);
            this.f9912n = Math.min(i4, (i4 * i4) / computeHorizontalScrollRange);
        }
        int i5 = this.f9920v;
        if (i5 == 0 || i5 == 1) {
            m6195u(1);
        }
    }

    /* renamed from: y */
    public final void m6199y(float f) {
        int[] m6182h = m6182h();
        float max = Math.max(m6182h[0], Math.min(m6182h[1], f));
        if (Math.abs(this.f9910l - max) < 2.0f) {
            return;
        }
        int m6194t = m6194t(this.f9911m, max, m6182h, this.f9917s.computeVerticalScrollRange(), this.f9917s.computeVerticalScrollOffset(), this.f9916r);
        if (m6194t != 0) {
            this.f9917s.scrollBy(0, m6194t);
        }
        this.f9911m = max;
    }
}
