package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;

/* loaded from: classes5.dex */
public final class zztk {
    private final zzask zza;
    private final zzaba zzb;

    public zztk(zzask zzaskVar, zzaba zzabaVar) {
        this.zza = zzaskVar;
        this.zzb = zzabaVar;
    }

    public final zzaaw zza(Context context, zzagb zzagbVar) {
        zzyq zza = zzyr.zza(context);
        zza.zzc("mdd_pds_config");
        zza.zzd(zzvm.zzc("LoggingState", "pb", zzagbVar));
        Uri zza2 = zza.zza();
        zzaax zzh = zzaay.zzh();
        zzh.zzd(zza2);
        zzh.zzc(zzdy.zzd());
        zzh.zze(false);
        zzabi zzd = zzabn.zzd(context, this.zza);
        zzd.zzc(zzwe.zzd("gms_icing_mdd_network_usage_monitor", zzagbVar));
        zzd.zzb();
        zzd.zze(new zzvg());
        zzh.zzi(zzd.zzf());
        return this.zzb.zza(zzh.zzg());
    }

    public final zzaaw zzb(Context context, Uri uri, zzyg zzygVar, zzuz zzuzVar, zzpt zzptVar, zzagb zzagbVar) {
        zzaax zzh = zzaay.zzh();
        zzh.zzd(uri);
        zzh.zzc(zzdp.zzd());
        zzh.zze(false);
        zzh.zzi(zzwa.zza(context, this.zza, zzuzVar, 1, zzptVar, zzagbVar));
        return this.zzb.zza(zzh.zzg());
    }

    public final zzaaw zzc(Context context, Uri uri, zzyg zzygVar, zzuz zzuzVar, zzpt zzptVar, zzagb zzagbVar) {
        zzaax zzh = zzaay.zzh();
        zzh.zzd(uri);
        zzh.zzc(zzeh.zze());
        zzh.zze(false);
        zzh.zzi(zzwa.zzb(context, this.zza, zzuzVar, 1, zzptVar, zzagbVar));
        return this.zzb.zza(zzh.zzg());
    }

    public final zzaaw zzd(Context context, Uri uri, zzyg zzygVar, zzuz zzuzVar, zzpt zzptVar, zzagb zzagbVar) {
        zzaax zzh = zzaay.zzh();
        zzh.zzd(uri);
        zzh.zzc(zzdp.zzd());
        zzh.zze(false);
        zzh.zzi(zzwa.zza(context, this.zza, zzuzVar, 2, zzptVar, zzagbVar));
        return this.zzb.zza(zzh.zzg());
    }

    public final zzaaw zze(Context context, Uri uri, zzyg zzygVar, zzuz zzuzVar, zzpt zzptVar, zzagb zzagbVar) {
        zzaax zzh = zzaay.zzh();
        zzh.zzd(uri);
        zzh.zzc(zzeh.zze());
        zzh.zze(false);
        zzh.zzi(zzwa.zzb(context, this.zza, zzuzVar, 2, zzptVar, zzagbVar));
        return this.zzb.zza(zzh.zzg());
    }
}
