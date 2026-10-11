package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;

/* loaded from: classes3.dex */
public abstract class AutoScrollHelper implements View.OnTouchListener {
    public static final int EDGE_TYPE_INSIDE = 0;
    public static final int EDGE_TYPE_INSIDE_EXTEND = 1;
    public static final int EDGE_TYPE_OUTSIDE = 2;

    /* renamed from: J */
    public static final float f6105J = Float.MAX_VALUE;
    public static final float NO_MAX = Float.MAX_VALUE;
    public static final float NO_MIN = 0.0f;

    /* renamed from: O */
    public static final float f6106O = 0.2f;

    /* renamed from: Q */
    public static final float f6107Q = 1.0f;
    public static final float RELATIVE_UNSPECIFIED = 0.0f;

    /* renamed from: Z */
    public static final int f6108Z = ViewConfiguration.getTapTimeout();

    /* renamed from: k0 */
    public static final int f6109k0 = 500;

    /* renamed from: q0 */
    public static final int f6110q0 = 500;

    /* renamed from: v */
    public static final int f6111v = 0;

    /* renamed from: w */
    public static final int f6112w = 1;

    /* renamed from: x */
    public static final int f6113x = 1;

    /* renamed from: y */
    public static final int f6114y = 315;

    /* renamed from: z */
    public static final int f6115z = 1575;

    /* renamed from: g */
    public final View f6118g;

    /* renamed from: h */
    public Runnable f6119h;

    /* renamed from: k */
    public int f6122k;

    /* renamed from: l */
    public int f6123l;

    /* renamed from: p */
    public boolean f6127p;

    /* renamed from: q */
    public boolean f6128q;

    /* renamed from: r */
    public boolean f6129r;

    /* renamed from: s */
    public boolean f6130s;

    /* renamed from: t */
    public boolean f6131t;

    /* renamed from: u */
    public boolean f6132u;

    /* renamed from: e */
    public final C0857a f6116e = new C0857a();

    /* renamed from: f */
    public final Interpolator f6117f = new AccelerateInterpolator();

    /* renamed from: i */
    public float[] f6120i = {0.0f, 0.0f};

    /* renamed from: j */
    public float[] f6121j = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: m */
    public float[] f6124m = {0.0f, 0.0f};

    /* renamed from: n */
    public float[] f6125n = {0.0f, 0.0f};

    /* renamed from: o */
    public float[] f6126o = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* renamed from: androidx.core.widget.AutoScrollHelper$a */
    /* loaded from: classes3.dex */
    public static class C0857a {

        /* renamed from: a */
        public int f6133a;

        /* renamed from: b */
        public int f6134b;

        /* renamed from: c */
        public float f6135c;

        /* renamed from: d */
        public float f6136d;

        /* renamed from: j */
        public float f6142j;

        /* renamed from: k */
        public int f6143k;

        /* renamed from: e */
        public long f6137e = Long.MIN_VALUE;

        /* renamed from: i */
        public long f6141i = -1;

        /* renamed from: f */
        public long f6138f = 0;

        /* renamed from: g */
        public int f6139g = 0;

        /* renamed from: h */
        public int f6140h = 0;

        /* renamed from: a */
        public void m3759a() {
            if (this.f6138f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float m3765g = m3765g(m3763e(currentAnimationTimeMillis));
            long j = currentAnimationTimeMillis - this.f6138f;
            this.f6138f = currentAnimationTimeMillis;
            float f = ((float) j) * m3765g;
            this.f6139g = (int) (this.f6135c * f);
            this.f6140h = (int) (f * this.f6136d);
        }

        /* renamed from: b */
        public int m3760b() {
            return this.f6139g;
        }

        /* renamed from: c */
        public int m3761c() {
            return this.f6140h;
        }

        /* renamed from: d */
        public int m3762d() {
            float f = this.f6135c;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: e */
        public final float m3763e(long j) {
            long j2 = this.f6137e;
            if (j < j2) {
                return 0.0f;
            }
            long j3 = this.f6141i;
            if (j3 < 0 || j < j3) {
                return AutoScrollHelper.m3750c(((float) (j - j2)) / this.f6133a, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.f6142j;
            return (1.0f - f) + (f * AutoScrollHelper.m3750c(((float) (j - j3)) / this.f6143k, 0.0f, 1.0f));
        }

        /* renamed from: f */
        public int m3764f() {
            float f = this.f6136d;
            return (int) (f / Math.abs(f));
        }

        /* renamed from: g */
        public final float m3765g(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        /* renamed from: h */
        public boolean m3766h() {
            return this.f6141i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f6141i + ((long) this.f6143k);
        }

        /* renamed from: i */
        public void m3767i() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f6143k = AutoScrollHelper.m3751d((int) (currentAnimationTimeMillis - this.f6137e), 0, this.f6134b);
            this.f6142j = m3763e(currentAnimationTimeMillis);
            this.f6141i = currentAnimationTimeMillis;
        }

        /* renamed from: j */
        public void m3768j(int i) {
            this.f6134b = i;
        }

        /* renamed from: k */
        public void m3769k(int i) {
            this.f6133a = i;
        }

        /* renamed from: l */
        public void m3770l(float f, float f2) {
            this.f6135c = f;
            this.f6136d = f2;
        }

        /* renamed from: m */
        public void m3771m() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f6137e = currentAnimationTimeMillis;
            this.f6141i = -1L;
            this.f6138f = currentAnimationTimeMillis;
            this.f6142j = 0.5f;
            this.f6139g = 0;
            this.f6140h = 0;
        }
    }

    /* renamed from: androidx.core.widget.AutoScrollHelper$b */
    /* loaded from: classes3.dex */
    public class RunnableC0858b implements Runnable {
        public RunnableC0858b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            if (autoScrollHelper.f6130s) {
                if (autoScrollHelper.f6128q) {
                    autoScrollHelper.f6128q = false;
                    autoScrollHelper.f6116e.m3771m();
                }
                C0857a c0857a = AutoScrollHelper.this.f6116e;
                if (c0857a.m3766h() || !AutoScrollHelper.this.m3757h()) {
                    AutoScrollHelper.this.f6130s = false;
                    return;
                }
                AutoScrollHelper autoScrollHelper2 = AutoScrollHelper.this;
                if (autoScrollHelper2.f6129r) {
                    autoScrollHelper2.f6129r = false;
                    autoScrollHelper2.m3752a();
                }
                c0857a.m3759a();
                AutoScrollHelper.this.scrollTargetBy(c0857a.m3760b(), c0857a.m3761c());
                ViewCompat.postOnAnimation(AutoScrollHelper.this.f6118g, this);
            }
        }
    }

    public AutoScrollHelper(@NonNull View view) {
        this.f6118g = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = (int) ((1575.0f * f) + 0.5f);
        setMaximumVelocity(f2, f2);
        float f3 = (int) ((f * 315.0f) + 0.5f);
        setMinimumVelocity(f3, f3);
        setEdgeType(1);
        setMaximumEdges(Float.MAX_VALUE, Float.MAX_VALUE);
        setRelativeEdges(0.2f, 0.2f);
        setRelativeVelocity(1.0f, 1.0f);
        setActivationDelay(f6108Z);
        setRampUpDuration(500);
        setRampDownDuration(500);
    }

    /* renamed from: c */
    public static float m3750c(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* renamed from: d */
    public static int m3751d(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    /* renamed from: a */
    public void m3752a() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f6118g.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: b */
    public final float m3753b(int i, float f, float f2, float f3) {
        float m3755f = m3755f(this.f6120i[i], f2, this.f6121j[i], f);
        if (m3755f == 0.0f) {
            return 0.0f;
        }
        float f4 = this.f6124m[i];
        float f5 = this.f6125n[i];
        float f6 = this.f6126o[i];
        float f7 = f4 * f3;
        return m3755f > 0.0f ? m3750c(m3755f * f7, f5, f6) : -m3750c((-m3755f) * f7, f5, f6);
    }

    public abstract boolean canTargetScrollHorizontally(int i);

    public abstract boolean canTargetScrollVertically(int i);

    /* renamed from: e */
    public final float m3754e(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.f6122k;
        if (i == 0 || i == 1) {
            if (f < f2) {
                if (f >= 0.0f) {
                    return 1.0f - (f / f2);
                }
                if (this.f6130s && i == 1) {
                    return 1.0f;
                }
            }
        } else if (i == 2 && f < 0.0f) {
            return f / (-f2);
        }
        return 0.0f;
    }

    /* renamed from: f */
    public final float m3755f(float f, float f2, float f3, float f4) {
        float interpolation;
        float m3750c = m3750c(f * f2, 0.0f, f3);
        float m3754e = m3754e(f2 - f4, m3750c) - m3754e(f4, m3750c);
        if (m3754e < 0.0f) {
            interpolation = -this.f6117f.getInterpolation(-m3754e);
        } else {
            if (m3754e <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.f6117f.getInterpolation(m3754e);
        }
        return m3750c(interpolation, -1.0f, 1.0f);
    }

    /* renamed from: g */
    public final void m3756g() {
        if (this.f6128q) {
            this.f6130s = false;
        } else {
            this.f6116e.m3767i();
        }
    }

    /* renamed from: h */
    public boolean m3757h() {
        C0857a c0857a = this.f6116e;
        int m3764f = c0857a.m3764f();
        int m3762d = c0857a.m3762d();
        return (m3764f != 0 && canTargetScrollVertically(m3764f)) || (m3762d != 0 && canTargetScrollHorizontally(m3762d));
    }

    /* renamed from: i */
    public final void m3758i() {
        int i;
        if (this.f6119h == null) {
            this.f6119h = new RunnableC0858b();
        }
        this.f6130s = true;
        this.f6128q = true;
        if (this.f6127p || (i = this.f6123l) <= 0) {
            this.f6119h.run();
        } else {
            ViewCompat.postOnAnimationDelayed(this.f6118g, this.f6119h, i);
        }
        this.f6127p = true;
    }

    public boolean isEnabled() {
        return this.f6131t;
    }

    public boolean isExclusive() {
        return this.f6132u;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
    
        if (r0 != 3) goto L20;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.f6131t
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r6 = 3
            if (r0 == r6) goto L16
            goto L58
        L16:
            r5.m3756g()
            goto L58
        L1a:
            r5.f6129r = r2
            r5.f6127p = r1
        L1e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.f6118g
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.m3753b(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.f6118g
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.m3753b(r2, r7, r6, r3)
            androidx.core.widget.AutoScrollHelper$a r7 = r5.f6116e
            r7.m3770l(r0, r6)
            boolean r6 = r5.f6130s
            if (r6 != 0) goto L58
            boolean r6 = r5.m3757h()
            if (r6 == 0) goto L58
            r5.m3758i()
        L58:
            boolean r6 = r5.f6132u
            if (r6 == 0) goto L61
            boolean r5 = r5.f6130s
            if (r5 == 0) goto L61
            r1 = r2
        L61:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AutoScrollHelper.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public abstract void scrollTargetBy(int i, int i2);

    @NonNull
    public AutoScrollHelper setActivationDelay(int i) {
        this.f6123l = i;
        return this;
    }

    @NonNull
    public AutoScrollHelper setEdgeType(int i) {
        this.f6122k = i;
        return this;
    }

    public AutoScrollHelper setEnabled(boolean z) {
        if (this.f6131t && !z) {
            m3756g();
        }
        this.f6131t = z;
        return this;
    }

    public AutoScrollHelper setExclusive(boolean z) {
        this.f6132u = z;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMaximumEdges(float f, float f2) {
        float[] fArr = this.f6121j;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMaximumVelocity(float f, float f2) {
        float[] fArr = this.f6126o;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMinimumVelocity(float f, float f2) {
        float[] fArr = this.f6125n;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    @NonNull
    public AutoScrollHelper setRampDownDuration(int i) {
        this.f6116e.m3768j(i);
        return this;
    }

    @NonNull
    public AutoScrollHelper setRampUpDuration(int i) {
        this.f6116e.m3769k(i);
        return this;
    }

    @NonNull
    public AutoScrollHelper setRelativeEdges(float f, float f2) {
        float[] fArr = this.f6120i;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    @NonNull
    public AutoScrollHelper setRelativeVelocity(float f, float f2) {
        float[] fArr = this.f6124m;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }
}
