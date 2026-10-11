package com.sunia.HTREnginev2;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

/* loaded from: classes4.dex */
public class koe {

    /* renamed from: k */
    public static final int f75664k = -1;

    /* renamed from: a */
    public int f75665a = -1;

    /* renamed from: b */
    public int f75666b = 0;

    /* renamed from: c */
    public final ScaleGestureDetector f75667c;

    /* renamed from: d */
    public VelocityTracker f75668d;

    /* renamed from: e */
    public boolean f75669e;

    /* renamed from: f */
    public float f75670f;

    /* renamed from: g */
    public float f75671g;

    /* renamed from: h */
    public final float f75672h;

    /* renamed from: i */
    public final float f75673i;

    /* renamed from: j */
    public ggk f75674j;

    /* renamed from: com.sunia.HTREnginev2.koe$a */
    /* loaded from: classes4.dex */
    public class ScaleGestureDetectorOnScaleGestureListenerC14006a implements ScaleGestureDetector.OnScaleGestureListener {
        public ScaleGestureDetectorOnScaleGestureListenerC14006a() {
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                return false;
            }
            koe.this.f75674j.onScale(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        }
    }

    public koe(Context context, ggk ggkVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f75673i = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f75672h = viewConfiguration.getScaledTouchSlop();
        this.f75674j = ggkVar;
        this.f75667c = new ScaleGestureDetector(context, new ScaleGestureDetectorOnScaleGestureListenerC14006a());
    }

    /* renamed from: b */
    public final float m55282b(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.f75666b);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    /* renamed from: c */
    public final float m55283c(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.f75666b);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    /* renamed from: d */
    public boolean m55284d() {
        return this.f75669e;
    }

    /* renamed from: e */
    public boolean m55285e() {
        return this.f75667c.isInProgress();
    }

    /* renamed from: f */
    public boolean m55286f(MotionEvent motionEvent) {
        try {
            this.f75667c.onTouchEvent(motionEvent);
            return m55287g(motionEvent);
        } catch (IllegalArgumentException unused) {
            return true;
        }
    }

    /* renamed from: g */
    public final boolean m55287g(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f75665a = motionEvent.getPointerId(0);
            VelocityTracker obtain = VelocityTracker.obtain();
            this.f75668d = obtain;
            if (obtain != null) {
                obtain.addMovement(motionEvent);
            }
            this.f75670f = m55282b(motionEvent);
            this.f75671g = m55283c(motionEvent);
            this.f75669e = false;
        } else if (action == 1) {
            this.f75665a = -1;
            if (this.f75669e && this.f75668d != null) {
                this.f75670f = m55282b(motionEvent);
                this.f75671g = m55283c(motionEvent);
                this.f75668d.addMovement(motionEvent);
                this.f75668d.computeCurrentVelocity(1000);
                float xVelocity = this.f75668d.getXVelocity();
                float yVelocity = this.f75668d.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.f75673i) {
                    this.f75674j.onFling(this.f75670f, this.f75671g, -xVelocity, -yVelocity);
                }
            }
            VelocityTracker velocityTracker = this.f75668d;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f75668d = null;
            }
        } else if (action == 2) {
            float m55282b = m55282b(motionEvent);
            float m55283c = m55283c(motionEvent);
            float f = m55282b - this.f75670f;
            float f2 = m55283c - this.f75671g;
            if (!this.f75669e) {
                this.f75669e = Math.sqrt((double) ((f * f) + (f2 * f2))) >= ((double) this.f75672h);
            }
            if (this.f75669e) {
                this.f75674j.onDrag(f, f2);
                this.f75670f = m55282b;
                this.f75671g = m55283c;
                VelocityTracker velocityTracker2 = this.f75668d;
                if (velocityTracker2 != null) {
                    velocityTracker2.addMovement(motionEvent);
                }
            }
        } else if (action == 3) {
            this.f75665a = -1;
            VelocityTracker velocityTracker3 = this.f75668d;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.f75668d = null;
            }
        } else if (action == 6) {
            int m54050b = ezn.m54050b(motionEvent.getAction());
            if (motionEvent.getPointerId(m54050b) == this.f75665a) {
                int i = m54050b == 0 ? 1 : 0;
                this.f75665a = motionEvent.getPointerId(i);
                this.f75670f = motionEvent.getX(i);
                this.f75671g = motionEvent.getY(i);
            }
        }
        int i2 = this.f75665a;
        this.f75666b = motionEvent.findPointerIndex(i2 != -1 ? i2 : 0);
        return true;
    }
}
