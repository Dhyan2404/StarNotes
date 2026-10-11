package com.google.android.gms.internal.mlkit_vision_digital_ink;

import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzvs {
    private final Executor zzc;
    private final zzvr zzd;
    private final zzwt zzb = zzwt.zza();

    @VisibleForTesting
    public final Map zza = new HashMap();

    private zzvs(Executor executor, zzvr zzvrVar) {
        this.zzc = executor;
        this.zzd = zzvrVar;
    }

    public static zzvs zza(Executor executor) {
        return new zzvs(executor, new zzvq());
    }

    public static zzvs zzb(Executor executor, zzvr zzvrVar) {
        return new zzvs(executor, zzvrVar);
    }

    public final zzasi zzc(final String str, final zzasi zzasiVar) {
        zzuw.zzm("%s: submitting request to add in-progress download future with key: %s", "DownloadFutureMap", str);
        return this.zzb.zzc(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzvo
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzvs.this.zze(str, zzasiVar);
            }
        }, this.zzc);
    }

    public final zzasi zzd(final String str) {
        zzuw.zzm("%s: submitting request for in-progress download future with key: %s", "DownloadFutureMap", str);
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzvp
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzvs zzvsVar = zzvs.this;
                return zzagb.zze((zzasi) zzvsVar.zza.get(str));
            }
        }, this.zzc);
    }

    public final /* synthetic */ zzasi zze(String str, zzasi zzasiVar) throws Exception {
        try {
            this.zzd.zza(str, this.zza.size() + 1);
            this.zza.put(str, zzasiVar);
            return zzarx.zzi();
        } catch (Exception e) {
            zzuw.zzj(e, "%s: Failed to add download future (%s) to map", "DownloadFutureMap", str);
            return zzarx.zzg(e);
        }
    }

    public final /* synthetic */ zzasi zzf(String str) throws Exception {
        try {
            this.zza.remove(str);
            this.zzd.zzb(str, this.zza.size());
            return zzarx.zzi();
        } catch (Exception e) {
            zzuw.zzj(e, "%s: Failed to remove download future (%s) from map", "DownloadFutureMap", str);
            return zzarx.zzg(e);
        }
    }

    public final zzasi zzg(final String str) {
        zzuw.zzm("%s: submitting request to remove in-progress download future with key: %s", "DownloadFutureMap", str);
        return this.zzb.zzc(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzvn
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzvs.this.zzf(str);
            }
        }, this.zzc);
    }
}
