package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.sunia.HTREnginev2.hlp;

/* loaded from: classes5.dex */
public final class zzhb {

    /* renamed from: a */
    public final String f29793a;

    /* renamed from: b */
    public final long f29794b;

    /* renamed from: c */
    public boolean f29795c;

    /* renamed from: d */
    public long f29796d;

    /* renamed from: e */
    public final /* synthetic */ hlp f29797e;

    public zzhb(hlp hlpVar, String str, long j) {
        this.f29797e = hlpVar;
        Preconditions.checkNotEmpty(str);
        this.f29793a = str;
        this.f29794b = j;
    }

    @WorkerThread
    public final long zza() {
        if (!this.f29795c) {
            this.f29795c = true;
            this.f29796d = this.f29797e.m54577l().getLong(this.f29793a, this.f29794b);
        }
        return this.f29796d;
    }

    @WorkerThread
    public final void zza(long j) {
        SharedPreferences.Editor edit = this.f29797e.m54577l().edit();
        edit.putLong(this.f29793a, j);
        edit.apply();
        this.f29796d = j;
    }
}
