package com.google.android.gms.measurement.internal;

import com.sunia.HTREnginev2.hlp;

/* renamed from: com.google.android.gms.measurement.internal.b */
/* loaded from: classes5.dex */
public final class RunnableC5114b implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ int f29660e;

    /* renamed from: f */
    public final /* synthetic */ String f29661f;

    /* renamed from: g */
    public final /* synthetic */ Object f29662g;

    /* renamed from: h */
    public final /* synthetic */ Object f29663h;

    /* renamed from: i */
    public final /* synthetic */ Object f29664i;

    /* renamed from: j */
    public final /* synthetic */ zzgo f29665j;

    public RunnableC5114b(zzgo zzgoVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f29660e = i;
        this.f29661f = str;
        this.f29662g = obj;
        this.f29663h = obj2;
        this.f29664i = obj3;
        this.f29665j = zzgoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c;
        long j;
        char c2;
        long j2;
        hlp zzn = this.f29665j.zzu.zzn();
        if (!zzn.m53287a()) {
            this.f29665j.zza(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        c = this.f29665j.f29771b;
        if (c == 0) {
            if (this.f29665j.zze().zzz()) {
                this.f29665j.f29771b = 'C';
            } else {
                this.f29665j.f29771b = 'c';
            }
        }
        j = this.f29665j.f29772c;
        if (j < 0) {
            this.f29665j.f29772c = 106000L;
        }
        char charAt = "01VDIWEA?".charAt(this.f29660e);
        c2 = this.f29665j.f29771b;
        j2 = this.f29665j.f29772c;
        String str = "2" + charAt + c2 + j2 + ":" + zzgo.m22443d(true, this.f29661f, this.f29662g, this.f29663h, this.f29664i);
        if (str.length() > 1024) {
            str = this.f29661f.substring(0, 1024);
        }
        zzhe zzheVar = zzn.f72323e;
        if (zzheVar != null) {
            zzheVar.zza(str, 1L);
        }
    }
}
