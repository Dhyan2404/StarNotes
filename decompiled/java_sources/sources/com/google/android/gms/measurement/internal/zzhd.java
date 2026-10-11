package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.sunia.HTREnginev2.hlp;

/* loaded from: classes5.dex */
public final class zzhd {

    /* renamed from: a */
    public final String f29802a;

    /* renamed from: b */
    public boolean f29803b;

    /* renamed from: c */
    public String f29804c;

    /* renamed from: d */
    public final /* synthetic */ hlp f29805d;

    public zzhd(hlp hlpVar, String str, String str2) {
        this.f29805d = hlpVar;
        Preconditions.checkNotEmpty(str);
        this.f29802a = str;
    }

    @WorkerThread
    public final String zza() {
        if (!this.f29803b) {
            this.f29803b = true;
            this.f29804c = this.f29805d.m54577l().getString(this.f29802a, null);
        }
        return this.f29804c;
    }

    @WorkerThread
    public final void zza(String str) {
        SharedPreferences.Editor edit = this.f29805d.m54577l().edit();
        edit.putString(this.f29802a, str);
        edit.apply();
        this.f29804c = str;
    }
}
