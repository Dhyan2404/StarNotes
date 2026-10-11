package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.common.annotations.VisibleForTesting;
import com.sunia.HTREnginev2.hlp;

/* loaded from: classes5.dex */
public final class zzhe {

    /* renamed from: a */
    @VisibleForTesting
    public final String f29806a;

    /* renamed from: b */
    public final String f29807b;

    /* renamed from: c */
    public final String f29808c;

    /* renamed from: d */
    public final long f29809d;

    /* renamed from: e */
    public final /* synthetic */ hlp f29810e;

    @WorkerThread
    /* renamed from: a */
    public final long m22453a() {
        return this.f29810e.m54577l().getLong(this.f29806a, 0L);
    }

    @WorkerThread
    /* renamed from: b */
    public final void m22454b() {
        this.f29810e.zzt();
        long currentTimeMillis = this.f29810e.zzb().currentTimeMillis();
        SharedPreferences.Editor edit = this.f29810e.m54577l().edit();
        edit.remove(this.f29807b);
        edit.remove(this.f29808c);
        edit.putLong(this.f29806a, currentTimeMillis);
        edit.apply();
    }

    @WorkerThread
    public final Pair<String, Long> zza() {
        long abs;
        this.f29810e.zzt();
        this.f29810e.zzt();
        long m22453a = m22453a();
        if (m22453a == 0) {
            m22454b();
            abs = 0;
        } else {
            abs = Math.abs(m22453a - this.f29810e.zzb().currentTimeMillis());
        }
        long j = this.f29809d;
        if (abs < j) {
            return null;
        }
        if (abs > (j << 1)) {
            m22454b();
            return null;
        }
        String string = this.f29810e.m54577l().getString(this.f29808c, null);
        long j2 = this.f29810e.m54577l().getLong(this.f29807b, 0L);
        m22454b();
        if (string != null && j2 > 0) {
            return new Pair<>(string, Long.valueOf(j2));
        }
        return hlp.f72319A;
    }

    public zzhe(hlp hlpVar, String str, long j) {
        this.f29810e = hlpVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkArgument(j > 0);
        this.f29806a = str + ":start";
        this.f29807b = str + ":count";
        this.f29808c = str + ":value";
        this.f29809d = j;
    }

    @WorkerThread
    public final void zza(String str, long j) {
        this.f29810e.zzt();
        if (m22453a() == 0) {
            m22454b();
        }
        if (str == null) {
            str = "";
        }
        long j2 = this.f29810e.m54577l().getLong(this.f29807b, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor edit = this.f29810e.m54577l().edit();
            edit.putString(this.f29808c, str);
            edit.putLong(this.f29807b, 1L);
            edit.apply();
            return;
        }
        long j3 = j2 + 1;
        boolean z = (this.f29810e.zzq().m22756b0().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j3;
        SharedPreferences.Editor edit2 = this.f29810e.m54577l().edit();
        if (z) {
            edit2.putString(this.f29808c, str);
        }
        edit2.putLong(this.f29807b, j3);
        edit2.apply();
    }
}
