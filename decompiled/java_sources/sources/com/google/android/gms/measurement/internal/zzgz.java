package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.sunia.HTREnginev2.hlp;

/* loaded from: classes5.dex */
public final class zzgz {

    /* renamed from: a */
    public final String f29788a;

    /* renamed from: b */
    public final boolean f29789b;

    /* renamed from: c */
    public boolean f29790c;

    /* renamed from: d */
    public boolean f29791d;

    /* renamed from: e */
    public final /* synthetic */ hlp f29792e;

    public zzgz(hlp hlpVar, String str, boolean z) {
        this.f29792e = hlpVar;
        Preconditions.checkNotEmpty(str);
        this.f29788a = str;
        this.f29789b = z;
    }

    @WorkerThread
    public final void zza(boolean z) {
        SharedPreferences.Editor edit = this.f29792e.m54577l().edit();
        edit.putBoolean(this.f29788a, z);
        edit.apply();
        this.f29791d = z;
    }

    @WorkerThread
    public final boolean zza() {
        if (!this.f29790c) {
            this.f29790c = true;
            this.f29791d = this.f29792e.m54577l().getBoolean(this.f29788a, this.f29789b);
        }
        return this.f29791d;
    }
}
