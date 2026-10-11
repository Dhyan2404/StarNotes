package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzwa {
    public static zzaaq zza(Context context, zzask zzaskVar, final zzuz zzuzVar, int i, zzpt zzptVar, zzagb zzagbVar) {
        zzabi zzd = zzabn.zzd(context, zzaskVar);
        zzd.zzc(zzwe.zzd("gms_icing_mdd_groups", zzagbVar));
        zzd.zzb();
        zzd.zzd(new zzvz(zzptVar));
        final byte[] bArr = null;
        zzd.zze(new zzabj(bArr) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzvy
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzabj
            public final zzbvu zza(zzabl zzablVar, zzbvu zzbvuVar) {
                zzdm zza = zzdp.zza();
                zzalx it2 = zzablVar.zzb().entrySet().iterator();
                while (it2.hasNext()) {
                    Map.Entry entry = (Map.Entry) it2.next();
                    try {
                        String str = (String) entry.getValue();
                        str.getClass();
                        try {
                            zza.zzc((String) entry.getKey(), (zzcr) zzwe.zzb(str, zzcr.zzp()));
                        } catch (zzbut e) {
                            zzuw.zzf("SharedPreferences file groups metadata had unexpected format: %s", e);
                        }
                    } catch (ClassCastException | NullPointerException e2) {
                        zzuw.zzf("SharedPreferences file groups metadata key wasn't a string: %s", e2);
                    }
                }
                return (zzdp) zza.zzx();
            }
        });
        return zzd.zzf();
    }

    public static zzaaq zzb(Context context, zzask zzaskVar, final zzuz zzuzVar, int i, zzpt zzptVar, zzagb zzagbVar) {
        zzabi zzd = zzabn.zzd(context, zzaskVar);
        zzd.zzc(zzwe.zzd("gms_icing_mdd_shared_files", zzagbVar));
        zzd.zzb();
        zzd.zzd(new zzvz(zzptVar));
        final byte[] bArr = null;
        zzd.zze(new zzabj(bArr) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzvx
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzabj
            public final zzbvu zza(zzabl zzablVar, zzbvu zzbvuVar) {
                zzef zzc = zzeh.zzc();
                zzalx it2 = zzablVar.zzb().entrySet().iterator();
                while (it2.hasNext()) {
                    Map.Entry entry = (Map.Entry) it2.next();
                    try {
                        String str = (String) entry.getValue();
                        str.getClass();
                        try {
                            zzc.zza((String) entry.getKey(), (zzee) zzwe.zzb(str, zzee.zzh()));
                        } catch (zzbut e) {
                            zzuw.zzf("SharedPreferences shared files metadata had unexpected format: %s", e);
                        }
                    } catch (ClassCastException | NullPointerException e2) {
                        zzuw.zzf("SharedPreferences shared files metadata key wasn't a string: %s", e2);
                    }
                }
                return (zzeh) zzc.zzx();
            }
        });
        return zzd.zzf();
    }
}
