package com.sunia.HTREnginev2;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdh;

/* loaded from: classes5.dex */
public abstract class ehp {

    /* renamed from: d */
    public static volatile Handler f68954d;

    /* renamed from: a */
    public final anp f68955a;

    /* renamed from: b */
    public final Runnable f68956b;

    /* renamed from: c */
    public volatile long f68957c;

    public ehp(anp anpVar) {
        Preconditions.checkNotNull(anpVar);
        this.f68955a = anpVar;
        this.f68956b = new jhp(this, anpVar);
    }

    /* renamed from: a */
    public final void m53966a() {
        this.f68957c = 0L;
        m53969f().removeCallbacks(this.f68956b);
    }

    /* renamed from: b */
    public final void m53967b(long j) {
        m53966a();
        if (j >= 0) {
            this.f68957c = this.f68955a.zzb().currentTimeMillis();
            if (m53969f().postDelayed(this.f68956b, j)) {
                return;
            }
            this.f68955a.zzj().zzg().zza("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    /* renamed from: d */
    public abstract void mo22272d();

    /* renamed from: e */
    public final boolean m53968e() {
        return this.f68957c != 0;
    }

    /* renamed from: f */
    public final Handler m53969f() {
        Handler handler;
        if (f68954d != null) {
            return f68954d;
        }
        synchronized (ehp.class) {
            if (f68954d == null) {
                f68954d = new zzdh(this.f68955a.zza().getMainLooper());
            }
            handler = f68954d;
        }
        return handler;
    }
}
