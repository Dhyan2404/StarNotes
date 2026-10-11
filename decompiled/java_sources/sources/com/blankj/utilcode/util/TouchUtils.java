package com.blankj.utilcode.util;

import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class TouchUtils {
    public static final int DOWN = 8;
    public static final int LEFT = 1;
    public static final int RIGHT = 4;
    public static final int UNKNOWN = 0;

    /* renamed from: UP */
    public static final int f14192UP = 2;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface Direction {
    }

    /* loaded from: classes3.dex */
    public static abstract class OnTouchUtilsListener implements View.OnTouchListener {

        /* renamed from: o */
        public static final int f14193o = 0;

        /* renamed from: p */
        public static final int f14194p = 1;

        /* renamed from: q */
        public static final int f14195q = 2;

        /* renamed from: r */
        public static final int f14196r = 1000;

        /* renamed from: e */
        public int f14197e;

        /* renamed from: f */
        public int f14198f;

        /* renamed from: g */
        public int f14199g;

        /* renamed from: h */
        public int f14200h;

        /* renamed from: i */
        public int f14201i;

        /* renamed from: j */
        public int f14202j;

        /* renamed from: k */
        public int f14203k;

        /* renamed from: l */
        public VelocityTracker f14204l;

        /* renamed from: m */
        public int f14205m;

        /* renamed from: n */
        public int f14206n;

        public OnTouchUtilsListener() {
            m8391a(-1, -1);
        }

        /* renamed from: a */
        public final void m8391a(int i, int i2) {
            this.f14198f = i;
            this.f14199g = i2;
            this.f14200h = i;
            this.f14201i = i2;
            this.f14202j = 0;
            this.f14203k = 0;
            VelocityTracker velocityTracker = this.f14204l;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }

        public abstract boolean onDown(View view, int i, int i2, MotionEvent motionEvent);

        public abstract boolean onMove(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, MotionEvent motionEvent);

        public abstract boolean onStop(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, MotionEvent motionEvent);

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (this.f14197e == 0) {
                this.f14197e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            }
            if (this.f14205m == 0) {
                this.f14205m = ViewConfiguration.get(view.getContext()).getScaledMaximumFlingVelocity();
            }
            if (this.f14206n == 0) {
                this.f14206n = ViewConfiguration.get(view.getContext()).getScaledMinimumFlingVelocity();
            }
            if (this.f14204l == null) {
                this.f14204l = VelocityTracker.obtain();
            }
            this.f14204l.addMovement(motionEvent);
            int action = motionEvent.getAction();
            if (action == 0) {
                return onUtilsDown(view, motionEvent);
            }
            if (action != 1) {
                if (action == 2) {
                    return onUtilsMove(view, motionEvent);
                }
                if (action != 3) {
                    return false;
                }
            }
            return onUtilsStop(view, motionEvent);
        }

        public boolean onUtilsDown(View view, MotionEvent motionEvent) {
            int rawX = (int) motionEvent.getRawX();
            int rawY = (int) motionEvent.getRawY();
            m8391a(rawX, rawY);
            view.setPressed(true);
            return onDown(view, rawX, rawY, motionEvent);
        }

        public boolean onUtilsMove(View view, MotionEvent motionEvent) {
            int rawX = (int) motionEvent.getRawX();
            int rawY = (int) motionEvent.getRawY();
            if (this.f14198f == -1) {
                m8391a(rawX, rawY);
                view.setPressed(true);
            }
            if (this.f14202j != 1) {
                if (Math.abs(rawX - this.f14200h) < this.f14197e && Math.abs(rawY - this.f14201i) < this.f14197e) {
                    return true;
                }
                this.f14202j = 1;
                if (Math.abs(rawX - this.f14200h) >= Math.abs(rawY - this.f14201i)) {
                    if (rawX - this.f14200h < 0) {
                        this.f14203k = 1;
                    } else {
                        this.f14203k = 4;
                    }
                } else if (rawY - this.f14201i < 0) {
                    this.f14203k = 2;
                } else {
                    this.f14203k = 8;
                }
            }
            boolean onMove = onMove(view, this.f14203k, rawX, rawY, rawX - this.f14200h, rawY - this.f14201i, rawX - this.f14198f, rawY - this.f14199g, motionEvent);
            this.f14200h = rawX;
            this.f14201i = rawY;
            return onMove;
        }

        public boolean onUtilsStop(View view, MotionEvent motionEvent) {
            int i;
            int i2;
            int rawX = (int) motionEvent.getRawX();
            int rawY = (int) motionEvent.getRawY();
            VelocityTracker velocityTracker = this.f14204l;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(1000, this.f14205m);
                int xVelocity = (int) this.f14204l.getXVelocity();
                int yVelocity = (int) this.f14204l.getYVelocity();
                this.f14204l.recycle();
                if (Math.abs(xVelocity) < this.f14206n) {
                    xVelocity = 0;
                }
                if (Math.abs(yVelocity) < this.f14206n) {
                    yVelocity = 0;
                }
                this.f14204l = null;
                i = xVelocity;
                i2 = yVelocity;
            } else {
                i = 0;
                i2 = 0;
            }
            view.setPressed(false);
            boolean onStop = onStop(view, this.f14203k, rawX, rawY, rawX - this.f14198f, rawY - this.f14199g, i, i2, motionEvent);
            if (motionEvent.getAction() == 1 && this.f14202j == 0) {
                if (motionEvent.getEventTime() - motionEvent.getDownTime() <= 1000) {
                    view.performClick();
                } else {
                    view.performLongClick();
                }
            }
            m8391a(-1, -1);
            return onStop;
        }
    }

    public TouchUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void setOnTouchListener(View view, OnTouchUtilsListener onTouchUtilsListener) {
        if (view == null || onTouchUtilsListener == null) {
            return;
        }
        view.setOnTouchListener(onTouchUtilsListener);
    }
}
