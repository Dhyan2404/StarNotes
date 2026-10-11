package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.firebase.installations.local.IidStore;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzvg implements zzabj {
    private static String zzb(String str, String str2) {
        return str + IidStore.f35940g + str2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzabj
    public final /* bridge */ /* synthetic */ zzbvu zza(zzabl zzablVar, zzbvu zzbvuVar) {
        zzdy zzdyVar = (zzdy) zzbvuVar;
        if (zzdyVar.zzl()) {
            return zzdyVar;
        }
        HashSet hashSet = new HashSet();
        zzdx zzdxVar = (zzdx) zzdyVar.zzO();
        zzdxVar.zzf(true);
        zzalx it2 = zzablVar.zzb().entrySet().iterator();
        while (it2.hasNext()) {
            List zzg = zzagw.zzd(IidStore.f35940g).zzg((CharSequence) ((Map.Entry) it2.next()).getKey());
            if (zzg.size() >= 4) {
                String str = (String) zzg.get(0);
                String str2 = (String) zzg.get(1);
                int parseInt = Integer.parseInt((String) zzg.get(2));
                String str3 = str + IidStore.f35940g + str2 + IidStore.f35940g + parseInt;
                if (!hashSet.contains(str3)) {
                    hashSet.add(str3);
                    String zzb = zzb(str3, "w");
                    String zzb2 = zzb(str3, "c");
                    long zza = zzablVar.zza(zzb, 0L);
                    long zza2 = zzablVar.zza(zzb2, 0L);
                    zzdk zzf = zzdl.zzf();
                    zzdt zza3 = zzdu.zza();
                    zza3.zzb(str2);
                    zza3.zzc(str);
                    zzf.zzd(zza3);
                    zzf.zzc(parseInt);
                    zzf.zzb(zza2);
                    zzf.zzg(zza);
                    zzdxVar.zza(zzf);
                }
            }
        }
        return (zzdy) zzdxVar.zzx();
    }
}
