package com.google.android.gms.measurement.internal;

import androidx.annotation.GuardedBy;
import com.sunia.HTREnginev2.kkp;
import com.sunia.HTREnginev2.rkp;

/* loaded from: classes5.dex */
public final class zzfz<V> {

    /* renamed from: g */
    public static final Object f29737g = new Object();

    /* renamed from: a */
    public final String f29738a;

    /* renamed from: b */
    public final kkp<V> f29739b;

    /* renamed from: c */
    public final V f29740c;

    /* renamed from: d */
    public final Object f29741d;

    /* renamed from: e */
    @GuardedBy("overrideLock")
    public volatile V f29742e;

    /* renamed from: f */
    @GuardedBy("cachingLock")
    public volatile V f29743f;

    public final V zza(V v) {
        synchronized (this.f29741d) {
        }
        if (v != null) {
            return v;
        }
        if (rkp.f83201a == null) {
            return this.f29740c;
        }
        synchronized (f29737g) {
            if (zzab.zza()) {
                return this.f29743f == null ? this.f29740c : this.f29743f;
            }
            try {
                for (zzfz zzfzVar : zzbh.m22343T0()) {
                    if (!zzab.zza()) {
                        V v2 = null;
                        try {
                            kkp<V> kkpVar = zzfzVar.f29739b;
                            if (kkpVar != null) {
                                v2 = kkpVar.zza();
                            }
                        } catch (IllegalStateException unused) {
                        }
                        synchronized (f29737g) {
                            zzfzVar.f29743f = v2;
                        }
                    } else {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                }
            } catch (SecurityException unused2) {
            }
            kkp<V> kkpVar2 = this.f29739b;
            if (kkpVar2 == null) {
                return this.f29740c;
            }
            try {
                return kkpVar2.zza();
            } catch (IllegalStateException unused3) {
                return this.f29740c;
            } catch (SecurityException unused4) {
                return this.f29740c;
            }
        }
    }

    public zzfz(String str, V v, V v2, kkp<V> kkpVar) {
        this.f29741d = new Object();
        this.f29742e = null;
        this.f29743f = null;
        this.f29738a = str;
        this.f29740c = v;
        this.f29739b = kkpVar;
    }

    public final String zza() {
        return this.f29738a;
    }
}
