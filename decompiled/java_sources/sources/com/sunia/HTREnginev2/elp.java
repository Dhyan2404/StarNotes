package com.sunia.HTREnginev2;

import androidx.annotation.WorkerThread;
import com.google.android.gms.measurement.internal.zzhy;

/* loaded from: classes5.dex */
public abstract class elp extends xjp {

    /* renamed from: a */
    public boolean f69059a;

    public elp(zzhy zzhyVar) {
        super(zzhyVar);
        this.zzu.m22503g();
    }

    /* renamed from: a */
    public final boolean m53976a() {
        return this.f69059a;
    }

    public final void zzu() {
        if (!m53976a()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzv() {
        if (this.f69059a) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (zzz()) {
            return;
        }
        this.zzu.m22507k();
        this.f69059a = true;
    }

    public final void zzw() {
        if (this.f69059a) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzx();
        this.zzu.m22507k();
        this.f69059a = true;
    }

    @WorkerThread
    public void zzx() {
    }

    public abstract boolean zzz();
}
