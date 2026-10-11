package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.firebase.installations.local.IidStore;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class zzrw implements zzrq {
    private final Context zza;
    private final zzagb zzb;
    private final zzbq zzc;
    private final zzsp zzd;

    public zzrw(Context context, zzsp zzspVar, zzagb zzagbVar, zzbq zzbqVar, byte[] bArr) {
        this.zza = context;
        this.zzd = zzspVar;
        this.zzb = zzagbVar;
        this.zzc = zzbqVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zza() {
        zzwe.zza(this.zza, "gms_icing_mdd_shared_files", this.zzb).edit().clear().commit();
        return zzarx.zzh(null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzb() {
        ArrayList arrayList = new ArrayList();
        SharedPreferences zza = zzwe.zza(this.zza, "gms_icing_mdd_shared_files", this.zzb);
        SharedPreferences.Editor editor = null;
        for (String str : zza.getAll().keySet()) {
            try {
                arrayList.add(zzwd.zzd(str, this.zza, this.zzd));
            } catch (zzwc e) {
                zzuw.zzh(e, "Failed to deserialize newFileKey:".concat(String.valueOf(str)));
                zzagw.zzd(IidStore.f35940g).zzg(str).size();
                if (editor == null) {
                    editor = zza.edit();
                }
                editor.remove(str);
            }
        }
        if (editor != null) {
            editor.commit();
        }
        return zzarx.zzh(arrayList);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzc() {
        zzno zza;
        int ordinal;
        boolean z;
        int i = 2;
        boolean z2 = true;
        if (!zznp.zzb(this.zza)) {
            zzuw.zza("%s Device isn't migrated to new file key, clear and set migration.", "SharedFilesMetadata");
            zznp.zza(this.zza, true);
            Context context = this.zza;
            this.zzc.zzf();
            zznp.zzc(context, zzno.zza(2));
            return zzarx.zzh(Boolean.FALSE);
        }
        this.zzc.zzf();
        zzno zza2 = zzno.zza(2);
        zzno zzd = zznp.zzd(this.zza, this.zzd);
        int i2 = zza2.zzd;
        int i3 = zzd.zzd;
        if (i2 != i3) {
            if (i2 < i3) {
                zzuw.zzg("%s Cannot migrate back from value %s to %s. Clear everything!", "SharedFilesMetadata", zzd, zza2);
                new Exception("Downgraded file key from " + String.valueOf(zzd) + " to " + String.valueOf(zza2) + ".");
                zznp.zzc(this.zza, zza2);
            } else {
                int i4 = i3 + 1;
                while (i4 <= zza2.zzd) {
                    try {
                        zza = zzno.zza(i4);
                        ordinal = zza.ordinal();
                    } finally {
                    }
                    if (ordinal != z2) {
                        if (ordinal != i) {
                            throw new UnsupportedOperationException("Upgrade to version " + zza.name() + "not supported!");
                        }
                        zzuw.zza("%s: Starting migration to dedup on checksum only", "SharedFilesMetadata");
                        SharedPreferences zza3 = zzwe.zza(this.zza, "gms_icing_mdd_shared_files", this.zzb);
                        SharedPreferences.Editor edit = zza3.edit();
                        for (String str : zza3.getAll().keySet()) {
                            try {
                                zzea zzd2 = zzwd.zzd(str, this.zza, this.zzd);
                                zzee zzeeVar = (zzee) zzwe.zzc(zza3, str, zzee.zzh());
                                if (zzeeVar == null) {
                                    zzuw.zzf("%s: Unable to read sharedFile from shared preferences.", "SharedFilesMetadata");
                                    edit.remove(str);
                                } else {
                                    edit.remove(str);
                                    zzwe.zzf(edit, zzwd.zzb(zzd2), zzeeVar);
                                }
                            } catch (zzwc unused) {
                                zzuw.zzi("%s Failed to deserialize file key %s, remove and continue.", "SharedFilesMetadata", str);
                                edit.remove(str);
                            }
                        }
                        if (!edit.commit()) {
                            zzuw.zze("Failed to commit migration metadata to disk");
                            new Exception("Migrate to ChecksumOnly failed.");
                            z = false;
                        }
                        z = true;
                        if (zznp.zzd(this.zza, this.zzd).zzd != zza2.zzd && !zznp.zzc(this.zza, zza2)) {
                            zzuw.zze("Failed to commit migration version to disk. Fail to set target version to " + String.valueOf(zza2) + ".");
                            new Exception("Fail to set target version " + String.valueOf(zza2) + ".");
                        }
                    }
                    zzuw.zza("%s: Starting migration to add download transform", "SharedFilesMetadata");
                    SharedPreferences zza4 = zzwe.zza(this.zza, "gms_icing_mdd_shared_files", this.zzb);
                    SharedPreferences.Editor edit2 = zza4.edit();
                    for (String str2 : zza4.getAll().keySet()) {
                        try {
                            zzea zzd3 = zzwd.zzd(str2, this.zza, this.zzd);
                            zzee zzeeVar2 = (zzee) zzwe.zzc(zza4, str2, zzee.zzh());
                            if (zzeeVar2 == null) {
                                zzuw.zzf("%s: Unable to read sharedFile from shared preferences.", "SharedFilesMetadata");
                                edit2.remove(str2);
                            } else {
                                edit2.remove(str2);
                                zzwe.zzf(edit2, zzwd.zzc(zzd3), zzeeVar2);
                            }
                        } catch (zzwc unused2) {
                            zzuw.zzi("%s Failed to deserialize file key %s, remove and continue.", "SharedFilesMetadata", str2);
                            edit2.remove(str2);
                        }
                    }
                    if (!edit2.commit()) {
                        zzuw.zze("Failed to commit migration metadata to disk");
                        new Exception("Migrate to DownloadTransform failed.");
                        z = false;
                    }
                    z = true;
                    if (z) {
                        zznp.zzc(this.zza, zzno.zza(i4));
                        i4++;
                        i = 2;
                        z2 = true;
                    } else if (zznp.zzd(this.zza, this.zzd).zzd != zza2.zzd && !zznp.zzc(this.zza, zza2)) {
                        zzuw.zze("Failed to commit migration version to disk. Fail to set target version to " + String.valueOf(zza2) + ".");
                        new Exception("Fail to set target version " + String.valueOf(zza2) + ".");
                    }
                }
                z2 = true;
            }
            z2 = false;
        }
        return zzarx.zzh(Boolean.valueOf(z2));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzr(final zzea zzeaVar) {
        zzasi zzs = zzs(zzaka.zzo(zzeaVar));
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzrv
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return (zzee) ((zzajp) obj).get(zzea.this);
            }
        };
        return zzarx.zzn(zzs, zzaeq.zza(zzaftVar), zzasq.zzb());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzs(zzaka zzakaVar) {
        SharedPreferences zza = zzwe.zza(this.zza, "gms_icing_mdd_shared_files", this.zzb);
        zzajo zzajoVar = new zzajo();
        zzalx it2 = zzakaVar.iterator();
        while (it2.hasNext()) {
            zzea zzeaVar = (zzea) it2.next();
            zzee zzeeVar = (zzee) zzwe.zzc(zza, zzwd.zze(zzeaVar, this.zza, this.zzd), zzee.zzh());
            if (zzeeVar != null) {
                zzajoVar.zzb(zzeaVar, zzeeVar);
            }
        }
        return zzarx.zzh(zzajoVar.zzd());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzt(zzea zzeaVar) {
        return zzarx.zzh(Boolean.valueOf(zzwe.zzg(zzwe.zza(this.zza, "gms_icing_mdd_shared_files", this.zzb), zzwd.zze(zzeaVar, this.zza, this.zzd))));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzu(zzea zzeaVar, zzee zzeeVar) {
        return zzarx.zzh(Boolean.valueOf(zzwe.zzh(zzwe.zza(this.zza, "gms_icing_mdd_shared_files", this.zzb), zzwd.zze(zzeaVar, this.zza, this.zzd), zzeeVar)));
    }
}
