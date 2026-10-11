package com.sunia.HTREnginev2;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.C1577c;
import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes3.dex */
public final class y8g {

    /* renamed from: a */
    public final ViewPager2 f90484a;

    /* renamed from: b */
    public final C1577c f90485b;

    /* renamed from: c */
    public final RecyclerView f90486c;

    /* renamed from: d */
    public VelocityTracker f90487d;

    /* renamed from: e */
    public int f90488e;

    /* renamed from: f */
    public float f90489f;

    /* renamed from: g */
    public int f90490g;

    /* renamed from: h */
    public long f90491h;

    public y8g(ViewPager2 viewPager2, C1577c c1577c, RecyclerView recyclerView) {
        this.f90484a = viewPager2;
        this.f90485b = c1577c;
        this.f90486c = recyclerView;
    }

    /* renamed from: a */
    public final void m58390a(long j, int i, float f, float f2) {
        MotionEvent obtain = MotionEvent.obtain(this.f90491h, j, i, f, f2, 0);
        this.f90487d.addMovement(obtain);
        obtain.recycle();
    }

    @UiThread
    /* renamed from: b */
    public boolean m58391b() {
        if (this.f90485b.m6875g()) {
            return false;
        }
        this.f90490g = 0;
        this.f90489f = 0;
        this.f90491h = SystemClock.uptimeMillis();
        m58392c();
        this.f90485b.m6879k();
        if (!this.f90485b.m6877i()) {
            this.f90486c.stopScroll();
        }
        m58390a(this.f90491h, 0, 0.0f, 0.0f);
        return true;
    }

    /* renamed from: c */
    public final void m58392c() {
        VelocityTracker velocityTracker = this.f90487d;
        if (velocityTracker != null) {
            velocityTracker.clear();
        } else {
            this.f90487d = VelocityTracker.obtain();
            this.f90488e = ViewConfiguration.get(this.f90484a.getContext()).getScaledMaximumFlingVelocity();
        }
    }

    @UiThread
    /* renamed from: d */
    public boolean m58393d() {
        if (!this.f90485b.m6876h()) {
            return false;
        }
        this.f90485b.m6881m();
        VelocityTracker velocityTracker = this.f90487d;
        velocityTracker.computeCurrentVelocity(1000, this.f90488e);
        if (this.f90486c.fling((int) velocityTracker.getXVelocity(), (int) velocityTracker.getYVelocity())) {
            return true;
        }
        this.f90484a.m6835h();
        return true;
    }

    @UiThread
    /* renamed from: e */
    public boolean m58394e(float f) {
        if (!this.f90485b.m6876h()) {
            return false;
        }
        float f2 = this.f90489f - f;
        this.f90489f = f2;
        int round = Math.round(f2 - this.f90490g);
        this.f90490g += round;
        long uptimeMillis = SystemClock.uptimeMillis();
        boolean z = this.f90484a.getOrientation() == 0;
        int i = z ? round : 0;
        int i2 = z ? 0 : round;
        float f3 = z ? this.f90489f : 0.0f;
        float f4 = z ? 0.0f : this.f90489f;
        this.f90486c.scrollBy(i, i2);
        m58390a(uptimeMillis, 2, f3, f4);
        return true;
    }

    /* renamed from: f */
    public boolean m58395f() {
        return this.f90485b.m6876h();
    }
}
