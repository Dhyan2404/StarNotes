package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.C5116d;
import com.google.android.gms.measurement.internal.zzhy;

/* loaded from: classes5.dex */
public abstract class bnp extends C5116d {

    /* renamed from: a */
    public boolean f65930a;

    public bnp(zzhy zzhyVar) {
        super(zzhyVar);
        this.zzu.m22503g();
    }

    /* renamed from: a */
    public final boolean m53287a() {
        return this.f65930a;
    }

    public void zzaa() {
    }

    public final void zzac() {
        if (!m53287a()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzad() {
        if (this.f65930a) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (zzh()) {
            return;
        }
        this.zzu.m22507k();
        this.f65930a = true;
    }

    public final void zzae() {
        if (this.f65930a) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzaa();
        this.zzu.m22507k();
        this.f65930a = true;
    }

    public abstract boolean zzh();
}
