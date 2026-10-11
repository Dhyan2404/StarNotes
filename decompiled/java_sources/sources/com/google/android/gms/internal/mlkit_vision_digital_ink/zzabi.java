package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzabi {
    private final Context zza;
    private final Executor zzb;
    private String zzc;
    private boolean zzd = false;
    private zzaha zze = new zzaha() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzabf
        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaha
        public final Object zza() {
            return Boolean.FALSE;
        }
    };
    private zzabg zzf;

    public /* synthetic */ zzabi(Context context, Executor executor, zzabh zzabhVar) {
        this.zza = context;
        this.zzb = executor;
    }

    public final zzabi zzb() {
        this.zzd = true;
        return this;
    }

    public final zzabi zzc(String str) {
        this.zzc = str;
        return this;
    }

    public final zzabi zzd(zzaha zzahaVar) {
        this.zze = zzahaVar;
        return this;
    }

    public final zzabi zze(zzabj zzabjVar) {
        this.zzf = new zzabg(zzabjVar);
        return this;
    }

    public final zzabn zzf() {
        zzagg.zzf(this.zzd, "Must specify either forKeys(...) or forAllKeys() before calling build().");
        return new zzabn(this, null);
    }
}
