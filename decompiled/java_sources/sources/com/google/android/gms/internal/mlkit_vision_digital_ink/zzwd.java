package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import com.google.firebase.installations.local.IidStore;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzwd {
    public static String zza(zzea zzeaVar) {
        StringBuilder sb = new StringBuilder(zzeaVar.zzg());
        sb.append(IidStore.f35940g);
        sb.append(zzeaVar.zza());
        sb.append(IidStore.f35940g);
        sb.append(zzeaVar.zzf());
        sb.append(IidStore.f35940g);
        sb.append(zzeaVar.zzm() - 1);
        return sb.toString();
    }

    public static String zzb(zzea zzeaVar) {
        StringBuilder sb = new StringBuilder(zzeaVar.zzf());
        sb.append(IidStore.f35940g);
        sb.append(zzeaVar.zzm() - 1);
        return sb.toString();
    }

    public static String zzc(zzea zzeaVar) {
        StringBuilder sb = new StringBuilder(zzeaVar.zzg());
        sb.append(IidStore.f35940g);
        sb.append(zzeaVar.zza());
        sb.append(IidStore.f35940g);
        sb.append(zzeaVar.zzf());
        sb.append(IidStore.f35940g);
        sb.append(zzeaVar.zzm() - 1);
        sb.append(IidStore.f35940g);
        sb.append(zzeaVar.zzl() ? zzwe.zze(zzeaVar.zze()) : "");
        return sb.toString();
    }

    public static zzea zzd(String str, Context context, zzsp zzspVar) throws zzwc {
        zzdz zzdzVar;
        List zzg = zzagw.zzd(IidStore.f35940g).zzg(str);
        zzno zznoVar = zzno.NEW_FILE_KEY;
        int ordinal = zznp.zzd(context, zzspVar).ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (zzg.size() != 4) {
                    throw new zzwc("Bad-format serializedFileKey = ".concat(String.valueOf(str)));
                }
                zzdzVar = zzea.zzc();
                zzdzVar.zzd((String) zzg.get(0));
                zzdzVar.zza(Integer.parseInt((String) zzg.get(1)));
                zzdzVar.zzb((String) zzg.get(2));
                zzdzVar.zze(zzcp.zza(Integer.parseInt((String) zzg.get(3))));
            } else {
                if (zzg.size() != 2) {
                    throw new zzwc("Bad-format serializedFileKey = s".concat(String.valueOf(str)));
                }
                zzdzVar = zzea.zzc();
                zzdzVar.zzb((String) zzg.get(0));
                zzdzVar.zze(zzcp.zza(Integer.parseInt((String) zzg.get(1))));
            }
        } else {
            if (zzg.size() != 5) {
                throw new zzwc("Bad-format serializedFileKey = ".concat(String.valueOf(str)));
            }
            zzdz zzc = zzea.zzc();
            zzc.zzd((String) zzg.get(0));
            zzc.zza(Integer.parseInt((String) zzg.get(1)));
            zzc.zzb((String) zzg.get(2));
            zzc.zze(zzcp.zza(Integer.parseInt((String) zzg.get(3))));
            if (zzg.get(4) != null && !((String) zzg.get(4)).isEmpty()) {
                try {
                    zzc.zzc((zzcap) zzwe.zzb((String) zzg.get(4), zzcap.zze()));
                } catch (zzbut e) {
                    throw new zzwc("Failed to deserialize key:".concat(String.valueOf(str)), e);
                }
            }
            zzdzVar = zzc;
        }
        return (zzea) zzdzVar.zzx();
    }

    public static String zze(zzea zzeaVar, Context context, zzsp zzspVar) {
        zzno zznoVar = zzno.NEW_FILE_KEY;
        int ordinal = zznp.zzd(context, zzspVar).ordinal();
        return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? zza(zzeaVar) : zzb(zzeaVar) : zzc(zzeaVar) : zza(zzeaVar);
    }
}
