package com.google.firebase.auth.internal;

import android.app.Application;
import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.internal.p124firebaseauthapi.zzafm;
import com.google.firebase.FirebaseApp;
import com.sunia.HTREnginev2.oip;

/* loaded from: classes6.dex */
public final class zzby {

    /* renamed from: a */
    public volatile int f35744a;

    /* renamed from: b */
    public final zzan f35745b;

    /* renamed from: c */
    public volatile boolean f35746c;

    public zzby(FirebaseApp firebaseApp) {
        this(firebaseApp.getApplicationContext(), new zzan(firebaseApp));
    }

    /* renamed from: c */
    public final boolean m28003c() {
        return this.f35744a > 0 && !this.f35746c;
    }

    public final void zza() {
        this.f35745b.zzb();
    }

    @VisibleForTesting
    public zzby(Context context, zzan zzanVar) {
        this.f35746c = false;
        this.f35744a = 0;
        this.f35745b = zzanVar;
        BackgroundDetector.initialize((Application) context.getApplicationContext());
        BackgroundDetector.getInstance().addListener(new oip(this));
    }

    public final void zza(int i) {
        if (i > 0 && this.f35744a == 0) {
            this.f35744a = i;
            if (m28003c()) {
                this.f35745b.zzc();
            }
        } else if (i == 0 && this.f35744a != 0) {
            this.f35745b.zzb();
        }
        this.f35744a = i;
    }

    public final void zza(zzafm zzafmVar) {
        if (zzafmVar == null) {
            return;
        }
        long zza = zzafmVar.zza();
        if (zza <= 0) {
            zza = 3600;
        }
        long zzb = zzafmVar.zzb() + (zza * 1000);
        zzan zzanVar = this.f35745b;
        zzanVar.f35707b = zzb;
        zzanVar.f35708c = -1L;
        if (m28003c()) {
            this.f35745b.zzc();
        }
    }
}
