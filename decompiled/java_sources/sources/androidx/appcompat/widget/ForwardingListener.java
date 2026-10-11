package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.ShowableListMenu;
import com.sunia.HTREnginev2.jjf;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public abstract class ForwardingListener implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: e */
    public final float f1686e;

    /* renamed from: f */
    public final int f1687f;

    /* renamed from: g */
    public final int f1688g;

    /* renamed from: h */
    public final View f1689h;

    /* renamed from: i */
    public Runnable f1690i;

    /* renamed from: j */
    public Runnable f1691j;

    /* renamed from: k */
    public boolean f1692k;

    /* renamed from: l */
    public int f1693l;

    /* renamed from: m */
    public final int[] f1694m = new int[2];

    /* renamed from: androidx.appcompat.widget.ForwardingListener$a */
    /* loaded from: classes3.dex */
    public class RunnableC0246a implements Runnable {
        public RunnableC0246a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = ForwardingListener.this.f1689h.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ForwardingListener$b */
    /* loaded from: classes3.dex */
    public class RunnableC0247b implements Runnable {
        public RunnableC0247b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForwardingListener.this.m794b();
        }
    }

    public ForwardingListener(View view) {
        this.f1689h = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1686e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1687f = tapTimeout;
        this.f1688g = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    /* renamed from: e */
    public static boolean m792e(View view, float f, float f2, float f3) {
        float f4 = -f3;
        return f >= f4 && f2 >= f4 && f < ((float) (view.getRight() - view.getLeft())) + f3 && f2 < ((float) (view.getBottom() - view.getTop())) + f3;
    }

    /* renamed from: a */
    public final void m793a() {
        Runnable runnable = this.f1691j;
        if (runnable != null) {
            this.f1689h.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1690i;
        if (runnable2 != null) {
            this.f1689h.removeCallbacks(runnable2);
        }
    }

    /* renamed from: b */
    public void m794b() {
        m793a();
        View view = this.f1689h;
        if (view.isEnabled() && !view.isLongClickable() && onForwardingStarted()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            this.f1692k = true;
        }
    }

    /* renamed from: c */
    public final boolean m795c(MotionEvent motionEvent) {
        jjf jjfVar;
        View view = this.f1689h;
        ShowableListMenu popup = getPopup();
        if (popup == null || !popup.isShowing() || (jjfVar = (jjf) popup.getListView()) == null || !jjfVar.isShown()) {
            return false;
        }
        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        m797f(view, obtainNoHistory);
        m798g(jjfVar, obtainNoHistory);
        boolean onForwardedEvent = jjfVar.onForwardedEvent(obtainNoHistory, this.f1693l);
        obtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        return onForwardedEvent && (actionMasked != 1 && actionMasked != 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0017, code lost:
    
        if (r1 != 3) goto L28;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m796d(android.view.MotionEvent r6) {
        /*
            r5 = this;
            android.view.View r0 = r5.f1689h
            boolean r1 = r0.isEnabled()
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            int r1 = r6.getActionMasked()
            if (r1 == 0) goto L41
            r3 = 1
            if (r1 == r3) goto L3d
            r4 = 2
            if (r1 == r4) goto L1a
            r6 = 3
            if (r1 == r6) goto L3d
            goto L6d
        L1a:
            int r1 = r5.f1693l
            int r1 = r6.findPointerIndex(r1)
            if (r1 < 0) goto L6d
            float r4 = r6.getX(r1)
            float r6 = r6.getY(r1)
            float r1 = r5.f1686e
            boolean r6 = m792e(r0, r4, r6, r1)
            if (r6 != 0) goto L6d
            r5.m793a()
            android.view.ViewParent r5 = r0.getParent()
            r5.requestDisallowInterceptTouchEvent(r3)
            return r3
        L3d:
            r5.m793a()
            goto L6d
        L41:
            int r6 = r6.getPointerId(r2)
            r5.f1693l = r6
            java.lang.Runnable r6 = r5.f1690i
            if (r6 != 0) goto L52
            androidx.appcompat.widget.ForwardingListener$a r6 = new androidx.appcompat.widget.ForwardingListener$a
            r6.<init>()
            r5.f1690i = r6
        L52:
            java.lang.Runnable r6 = r5.f1690i
            int r1 = r5.f1687f
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
            java.lang.Runnable r6 = r5.f1691j
            if (r6 != 0) goto L65
            androidx.appcompat.widget.ForwardingListener$b r6 = new androidx.appcompat.widget.ForwardingListener$b
            r6.<init>()
            r5.f1691j = r6
        L65:
            java.lang.Runnable r6 = r5.f1691j
            int r5 = r5.f1688g
            long r3 = (long) r5
            r0.postDelayed(r6, r3)
        L6d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ForwardingListener.m796d(android.view.MotionEvent):boolean");
    }

    /* renamed from: f */
    public final boolean m797f(View view, MotionEvent motionEvent) {
        view.getLocationOnScreen(this.f1694m);
        motionEvent.offsetLocation(r1[0], r1[1]);
        return true;
    }

    /* renamed from: g */
    public final boolean m798g(View view, MotionEvent motionEvent) {
        view.getLocationOnScreen(this.f1694m);
        motionEvent.offsetLocation(-r1[0], -r1[1]);
        return true;
    }

    public abstract ShowableListMenu getPopup();

    public boolean onForwardingStarted() {
        ShowableListMenu popup = getPopup();
        if (popup == null || popup.isShowing()) {
            return true;
        }
        popup.show();
        return true;
    }

    public boolean onForwardingStopped() {
        ShowableListMenu popup = getPopup();
        if (popup == null || !popup.isShowing()) {
            return true;
        }
        popup.dismiss();
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f1692k;
        if (z2) {
            z = m795c(motionEvent) || !onForwardingStopped();
        } else {
            z = m796d(motionEvent) && onForwardingStarted();
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f1689h.onTouchEvent(obtain);
                obtain.recycle();
            }
        }
        this.f1692k = z;
        return z || z2;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f1692k = false;
        this.f1693l = -1;
        Runnable runnable = this.f1690i;
        if (runnable != null) {
            this.f1689h.removeCallbacks(runnable);
        }
    }
}
