package com.sunia.HTREnginev2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;

/* loaded from: classes6.dex */
public abstract class qfh<V extends View> extends i4o<V> {

    /* renamed from: o */
    public static final int f81995o = -1;

    /* renamed from: h */
    @Nullable
    public Runnable f81996h;

    /* renamed from: i */
    public OverScroller f81997i;

    /* renamed from: j */
    public boolean f81998j;

    /* renamed from: k */
    public int f81999k;

    /* renamed from: l */
    public int f82000l;

    /* renamed from: m */
    public int f82001m;

    /* renamed from: n */
    @Nullable
    public VelocityTracker f82002n;

    /* renamed from: com.sunia.HTREnginev2.qfh$a */
    /* loaded from: classes6.dex */
    public class RunnableC14301a implements Runnable {

        /* renamed from: e */
        public final CoordinatorLayout f82003e;

        /* renamed from: f */
        public final V f82004f;

        public RunnableC14301a(CoordinatorLayout coordinatorLayout, V v) {
            this.f82003e = coordinatorLayout;
            this.f82004f = v;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.f82004f == null || (overScroller = qfh.this.f81997i) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                qfh.this.mo22894g(this.f82003e, this.f82004f);
                return;
            }
            qfh qfhVar = qfh.this;
            qfhVar.m56691i(this.f82003e, this.f82004f, qfhVar.f81997i.getCurrY());
            ViewCompat.postOnAnimation(this.f82004f, this);
        }
    }

    public qfh() {
        this.f81999k = -1;
        this.f82001m = -1;
    }

    /* renamed from: a */
    public boolean mo22890a(V v) {
        return false;
    }

    /* renamed from: b */
    public final void m56688b() {
        if (this.f82002n == null) {
            this.f82002n = VelocityTracker.obtain();
        }
    }

    /* renamed from: c */
    public final boolean m56689c(CoordinatorLayout coordinatorLayout, @NonNull V v, int i, int i2, float f) {
        Runnable runnable = this.f81996h;
        if (runnable != null) {
            v.removeCallbacks(runnable);
            this.f81996h = null;
        }
        if (this.f81997i == null) {
            this.f81997i = new OverScroller(v.getContext());
        }
        this.f81997i.fling(0, getTopAndBottomOffset(), 0, Math.round(f), 0, 0, i, i2);
        if (!this.f81997i.computeScrollOffset()) {
            mo22894g(coordinatorLayout, v);
            return false;
        }
        RunnableC14301a runnableC14301a = new RunnableC14301a(coordinatorLayout, v);
        this.f81996h = runnableC14301a;
        ViewCompat.postOnAnimation(v, runnableC14301a);
        return true;
    }

    /* renamed from: d */
    public int mo22891d(@NonNull V v) {
        return -v.getHeight();
    }

    /* renamed from: e */
    public int mo22892e(@NonNull V v) {
        return v.getHeight();
    }

    /* renamed from: f */
    public int mo22893f() {
        return getTopAndBottomOffset();
    }

    /* renamed from: g */
    public void mo22894g(CoordinatorLayout coordinatorLayout, V v) {
    }

    /* renamed from: h */
    public final int m56690h(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return mo22895j(coordinatorLayout, v, mo22893f() - i, i2, i3);
    }

    /* renamed from: i */
    public int m56691i(CoordinatorLayout coordinatorLayout, V v, int i) {
        return mo22895j(coordinatorLayout, v, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    /* renamed from: j */
    public int mo22895j(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        int clamp;
        int topAndBottomOffset = getTopAndBottomOffset();
        if (i2 == 0 || topAndBottomOffset < i2 || topAndBottomOffset > i3 || topAndBottomOffset == (clamp = MathUtils.clamp(i, i2, i3))) {
            return 0;
        }
        setTopAndBottomOffset(clamp);
        return topAndBottomOffset - clamp;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        int findPointerIndex;
        if (this.f82001m < 0) {
            this.f82001m = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f81998j) {
            int i = this.f81999k;
            if (i == -1 || (findPointerIndex = motionEvent.findPointerIndex(i)) == -1) {
                return false;
            }
            int y = (int) motionEvent.getY(findPointerIndex);
            if (Math.abs(y - this.f82000l) > this.f82001m) {
                this.f82000l = y;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f81999k = -1;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            boolean z = mo22890a(v) && coordinatorLayout.isPointInChildBounds(v, x, y2);
            this.f81998j = z;
            if (z) {
                this.f82000l = y2;
                this.f81999k = motionEvent.getPointerId(0);
                m56688b();
                OverScroller overScroller = this.f81997i;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.f81997i.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.f82002n;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007b  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(@androidx.annotation.NonNull androidx.coordinatorlayout.widget.CoordinatorLayout r12, @androidx.annotation.NonNull V r13, @androidx.annotation.NonNull android.view.MotionEvent r14) {
        /*
            r11 = this;
            int r0 = r14.getActionMasked()
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 == r2) goto L4e
            r4 = 2
            if (r0 == r4) goto L2d
            r12 = 3
            if (r0 == r12) goto L72
            r12 = 6
            if (r0 == r12) goto L13
            goto L4c
        L13:
            int r12 = r14.getActionIndex()
            if (r12 != 0) goto L1b
            r12 = r2
            goto L1c
        L1b:
            r12 = r3
        L1c:
            int r13 = r14.getPointerId(r12)
            r11.f81999k = r13
            float r12 = r14.getY(r12)
            r13 = 1056964608(0x3f000000, float:0.5)
            float r12 = r12 + r13
            int r12 = (int) r12
            r11.f82000l = r12
            goto L4c
        L2d:
            int r0 = r11.f81999k
            int r0 = r14.findPointerIndex(r0)
            if (r0 != r1) goto L36
            return r3
        L36:
            float r0 = r14.getY(r0)
            int r0 = (int) r0
            int r1 = r11.f82000l
            int r7 = r1 - r0
            r11.f82000l = r0
            int r8 = r11.mo22891d(r13)
            r9 = 0
            r4 = r11
            r5 = r12
            r6 = r13
            r4.m56690h(r5, r6, r7, r8, r9)
        L4c:
            r12 = r3
            goto L81
        L4e:
            android.view.VelocityTracker r0 = r11.f82002n
            if (r0 == 0) goto L72
            r0.addMovement(r14)
            android.view.VelocityTracker r0 = r11.f82002n
            r4 = 1000(0x3e8, float:1.401E-42)
            r0.computeCurrentVelocity(r4)
            android.view.VelocityTracker r0 = r11.f82002n
            int r4 = r11.f81999k
            float r10 = r0.getYVelocity(r4)
            int r0 = r11.mo22892e(r13)
            int r8 = -r0
            r9 = 0
            r5 = r11
            r6 = r12
            r7 = r13
            r5.m56689c(r6, r7, r8, r9, r10)
            r12 = r2
            goto L73
        L72:
            r12 = r3
        L73:
            r11.f81998j = r3
            r11.f81999k = r1
            android.view.VelocityTracker r13 = r11.f82002n
            if (r13 == 0) goto L81
            r13.recycle()
            r13 = 0
            r11.f82002n = r13
        L81:
            android.view.VelocityTracker r13 = r11.f82002n
            if (r13 == 0) goto L88
            r13.addMovement(r14)
        L88:
            boolean r11 = r11.f81998j
            if (r11 != 0) goto L90
            if (r12 == 0) goto L8f
            goto L90
        L8f:
            r2 = r3
        L90:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.qfh.onTouchEvent(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    public qfh(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f81999k = -1;
        this.f82001m = -1;
    }
}
