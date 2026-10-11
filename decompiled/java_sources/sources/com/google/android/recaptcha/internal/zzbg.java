package com.google.android.recaptcha.internal;

import android.content.Context;
import java.util.HashMap;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes6.dex */
public final class zzbg {

    @NotNull
    private final String zza;

    @NotNull
    private final Context zzb;

    @NotNull
    private final zzab zzc;

    @NotNull
    private final zzbh zzd;

    @NotNull
    private final HashMap zze = new HashMap();

    @NotNull
    private final zzt zzf;

    public zzbg(@NotNull String str, @NotNull Context context, @NotNull zzab zzabVar, @NotNull zzt zztVar, @NotNull zzbh zzbhVar) {
        this.zza = str;
        this.zzb = context;
        this.zzc = zzabVar;
        this.zzf = zztVar;
        this.zzd = zzbhVar;
    }

    public final void zza(@NotNull zzbb zzbbVar) {
        zze(zzbbVar, 3, null);
    }

    public final void zzb(@NotNull zzbb zzbbVar, @NotNull zzp zzpVar, @Nullable String str) {
        String valueOf = String.valueOf(zzpVar.zzb().zza());
        int zza = zzpVar.zza().zza();
        String zzd = zzpVar.zzd();
        zzmq zzg = zzmr.zzg();
        zzg.zzp(valueOf);
        zzg.zzd(zza);
        if (zzd != null) {
            zzg.zze(zzd);
        }
        zze(zzbbVar, 4, (zzmr) zzg.zzj());
    }

    public final void zzd(@NotNull zzpd zzpdVar) {
        this.zzd.zza(zzpdVar);
    }

    public final void zze(@NotNull zzbb zzbbVar, @NotNull int i, @Nullable zzmr zzmrVar) {
        zzx zzxVar;
        zzbf zzbfVar = (zzbf) this.zze.get(zzbbVar);
        if (zzbfVar != null) {
            zznf zza = zzbfVar.zza(i, zzmrVar, this.zzb);
            zzpc zzi = zzpd.zzi();
            zzi.zzd(zza);
            zzpd zzpdVar = (zzpd) zzi.zzj();
            zzv zzvVar = zzv.zza;
            zzne zza2 = zzbbVar.zza();
            long zzf = zza.zzf() * 1000;
            zzne zzneVar = zzne.UNKNOWN;
            int ordinal = zza2.ordinal();
            if (ordinal == 1) {
                zzxVar = zzx.zzd;
            } else if (ordinal == 2) {
                zzxVar = zzx.zze;
            } else if (ordinal == 5) {
                zzxVar = zzx.zzf;
            } else if (ordinal == 6) {
                zzxVar = zzx.zzg;
            } else if (ordinal != 24) {
                switch (ordinal) {
                    case 12:
                        zzxVar = zzx.zzh;
                        break;
                    case 13:
                        zzxVar = zzx.zzi;
                        break;
                    case 14:
                        zzxVar = zzx.zzj;
                        break;
                    default:
                        zzxVar = zzx.zzb;
                        break;
                }
            } else {
                zzxVar = zzx.zzk;
            }
            zzv.zza(zzxVar.zza(), zzf);
            this.zzd.zza(zzpdVar);
        }
    }
}
