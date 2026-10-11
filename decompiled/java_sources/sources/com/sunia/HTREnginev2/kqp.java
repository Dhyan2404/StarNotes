package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zznv;

/* loaded from: classes5.dex */
public abstract class kqp extends lqp {

    /* renamed from: a */
    public boolean f75750a;

    public kqp(zznv zznvVar) {
        super(zznvVar);
        this.zzg.m22661k0();
    }

    /* renamed from: a */
    public final boolean m55307a() {
        return this.f75750a;
    }

    public final void zzal() {
        if (!m55307a()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzam() {
        if (this.f75750a) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzc();
        this.zzg.m22660j0();
        this.f75750a = true;
    }

    public abstract boolean zzc();
}
