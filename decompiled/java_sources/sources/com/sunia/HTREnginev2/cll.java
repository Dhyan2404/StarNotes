package com.sunia.HTREnginev2;

import androidx.annotation.GuardedBy;
import com.google.firebase.installations.Utils;
import java.util.concurrent.TimeUnit;

/* loaded from: classes6.dex */
public class cll {

    /* renamed from: d */
    public static final long f66946d = TimeUnit.HOURS.toMillis(24);

    /* renamed from: e */
    public static final long f66947e = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: a */
    public final Utils f66948a;

    /* renamed from: b */
    @GuardedBy("this")
    public long f66949b;

    /* renamed from: c */
    @GuardedBy("this")
    public int f66950c;

    public cll(Utils utils) {
        this.f66948a = utils;
    }

    /* renamed from: c */
    public static boolean m53470c(int i) {
        return i == 429 || (i >= 500 && i < 600);
    }

    /* renamed from: d */
    public static boolean m53471d(int i) {
        return (i >= 200 && i < 300) || i == 401 || i == 404;
    }

    /* renamed from: a */
    public final synchronized long m53472a(int i) {
        if (m53470c(i)) {
            return (long) Math.min(Math.pow(2.0d, this.f66950c) + this.f66948a.getRandomDelayForSyncPrevention(), f66947e);
        }
        return f66946d;
    }

    /* renamed from: b */
    public synchronized boolean m53473b() {
        boolean z;
        if (this.f66950c != 0) {
            z = this.f66948a.currentTimeInMillis() > this.f66949b;
        }
        return z;
    }

    /* renamed from: e */
    public final synchronized void m53474e() {
        this.f66950c = 0;
    }

    /* renamed from: f */
    public synchronized void m53475f(int i) {
        if (m53471d(i)) {
            m53474e();
            return;
        }
        this.f66950c++;
        this.f66949b = this.f66948a.currentTimeInMillis() + m53472a(i);
    }

    public cll() {
        this.f66948a = Utils.getInstance();
    }
}
