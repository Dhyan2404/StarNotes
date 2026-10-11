package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import com.google.firebase.installations.local.IidStore;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class zzqp implements zzrq {
    private final Context zza;
    private final zzaaw zzb;
    private final Executor zzc;
    private final zzbq zzd;
    private final zzsp zze;

    public zzqp(Context context, zzsp zzspVar, zzaaw zzaawVar, Executor executor, zzbq zzbqVar, byte[] bArr) {
        this.zza = context;
        this.zze = zzspVar;
        this.zzb = zzaawVar;
        this.zzc = executor;
        this.zzd = zzbqVar;
    }

    private final zzasi zzk() {
        return zzwu.zzc(this.zzb.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqh
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzqp.this.zze((zzeh) obj);
            }
        }, this.zzc)).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqi
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.TRUE;
            }
        }, this.zzc).zza(IOException.class, new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqj
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzuw.zze("Failed to commit migration metadata to disk");
                new Exception("Migration to DownloadTransform failed.", (IOException) obj);
                return Boolean.FALSE;
            }
        }, this.zzc);
    }

    private final zzasi zzl() {
        return zzwu.zzc(this.zzb.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqo
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzqp.this.zzf((zzeh) obj);
            }
        }, this.zzc)).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpw
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.TRUE;
            }
        }, this.zzc).zza(IOException.class, new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpx
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzuw.zze("Failed to commit migration metadata to disk");
                new Exception("Migration to ChecksumOnly failed.", (IOException) obj);
                return Boolean.FALSE;
            }
        }, this.zzc);
    }

    private final zzasi zzm(final zzno zznoVar, final int i) {
        zzasi zzk;
        if (i > zznoVar.zzd) {
            return zzarx.zzh(Boolean.TRUE);
        }
        zzno zza = zzno.zza(i);
        int ordinal = zza.ordinal();
        if (ordinal == 1) {
            zzk = zzk();
        } else if (ordinal != 2) {
            zzk = zzarx.zzg(new UnsupportedOperationException("Upgrade to version " + zza.name() + "not supported!"));
        } else {
            zzk = zzl();
        }
        return zzarx.zzo(zzk, zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqe
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzqp.this.zzj(i, zznoVar, (Boolean) obj);
            }
        }), this.zzc);
    }

    private final void zzn(zzno zznoVar) {
        if (zznp.zzd(this.zza, this.zze).zzd == zznoVar.zzd || zznp.zzc(this.zza, zznoVar)) {
            return;
        }
        zzuw.zze("Failed to commit migration version to disk. Fail to set target version to " + String.valueOf(zznoVar) + ".");
        new Exception("Fail to set target version " + String.valueOf(zznoVar) + ".");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zza() {
        return this.zzb.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqf
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                zzef zzefVar = (zzef) ((zzeh) obj).zzO();
                zzefVar.zzr();
                return (zzeh) zzefVar.zzx();
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzb() {
        final AtomicReference atomicReference = new AtomicReference(new ArrayList());
        zzasi zzh = this.zzb.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpv
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzqp.this.zzd(atomicReference, (zzeh) obj);
            }
        }, this.zzc);
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqg
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return (List) atomicReference.get();
            }
        };
        return zzarx.zzn(zzh, zzaeq.zza(zzaftVar), this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzc() {
        if (!zznp.zzb(this.zza)) {
            zzuw.zza("%s Device isn't migrated to new file key, clear and set migration.", "ProtoDataStoreSharedFilesMetadata");
            zznp.zza(this.zza, true);
            Context context = this.zza;
            this.zzd.zzf();
            zznp.zzc(context, zzno.zza(2));
            return zzarx.zzh(Boolean.FALSE);
        }
        this.zzd.zzf();
        final zzno zza = zzno.zza(2);
        zzno zzd = zznp.zzd(this.zza, this.zze);
        int i = zza.zzd;
        int i2 = zzd.zzd;
        if (i == i2) {
            return zzarx.zzh(Boolean.TRUE);
        }
        if (i >= i2) {
            return zzwu.zzc(zzm(zza, i2 + 1)).zzb(Exception.class, new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqb
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzqp.this.zzh(zza, (Exception) obj);
                }
            }, this.zzc).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqc
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzqp.this.zzi(zza, (Boolean) obj);
                }
            }, this.zzc);
        }
        zzuw.zzg("%s Cannot migrate back from value %s to %s. Clear everything!", "ProtoDataStoreSharedFilesMetadata", zzd, zza);
        new Exception("Downgraded file key from " + String.valueOf(zzd) + " to " + String.valueOf(zza) + ".");
        zznp.zzc(this.zza, zza);
        return zzarx.zzh(Boolean.FALSE);
    }

    public final /* synthetic */ zzeh zzd(AtomicReference atomicReference, zzeh zzehVar) {
        ArrayList arrayList = new ArrayList();
        zzef zzefVar = (zzef) zzehVar.zzO();
        for (String str : zzehVar.zzg().keySet()) {
            try {
                arrayList.add(zzwd.zzd(str, this.zza, this.zze));
            } catch (zzwc e) {
                zzefVar.zzb(str);
                zzuw.zzh(e, "Failed to deserialize newFileKey:".concat(String.valueOf(str)));
                zzagw.zzd(IidStore.f35940g).zzg(str).size();
            }
        }
        atomicReference.set(arrayList);
        return (zzeh) zzefVar.zzx();
    }

    public final /* synthetic */ zzeh zze(zzeh zzehVar) {
        zzuw.zza("%s: Starting migration to add download transform", "ProtoDataStoreSharedFilesMetadata");
        zzef zzefVar = (zzef) zzehVar.zzO();
        for (String str : zzehVar.zzg().keySet()) {
            try {
                zzea zzd = zzwd.zzd(str, this.zza, this.zze);
                zzee zza = zzehVar.zza(str, null);
                zzefVar.zzb(str);
                if (zza == null) {
                    zzuw.zzf("%s: Unable to read sharedFile from ProtoDataStore.", "ProtoDataStoreSharedFilesMetadata");
                } else {
                    zzefVar.zza(zzwd.zzc(zzd), zza);
                }
            } catch (zzwc unused) {
                zzuw.zzi("%s Failed to deserialize file key %s, remove and continue.", "ProtoDataStoreSharedFilesMetadata", str);
                zzefVar.zzb(str);
            }
        }
        return (zzeh) zzefVar.zzx();
    }

    public final /* synthetic */ zzeh zzf(zzeh zzehVar) {
        zzuw.zza("%s: Starting migration to dedup on checksum onlu", "ProtoDataStoreSharedFilesMetadata");
        zzef zzefVar = (zzef) zzehVar.zzO();
        for (String str : zzehVar.zzg().keySet()) {
            try {
                zzea zzd = zzwd.zzd(str, this.zza, this.zze);
                zzee zza = zzehVar.zza(str, null);
                zzefVar.zzb(str);
                if (zza == null) {
                    zzuw.zzf("%s: Unable to read sharedFile from ProtoDataStore.", "ProtoDataStoreSharedFilesMetadata");
                } else {
                    zzefVar.zza(zzwd.zzb(zzd), zza);
                }
            } catch (zzwc unused) {
                zzuw.zzi("%s Failed to deserialize file key %s, remove and continue.", "ProtoDataStoreSharedFilesMetadata", str);
                zzefVar.zzb(str);
            }
        }
        return (zzeh) zzefVar.zzx();
    }

    public final /* synthetic */ zzajp zzg(zzaka zzakaVar, zzeh zzehVar) {
        zzajo zzajoVar = new zzajo();
        zzalx it2 = zzakaVar.iterator();
        while (it2.hasNext()) {
            zzea zzeaVar = (zzea) it2.next();
            zzee zzeeVar = (zzee) zzehVar.zzg().get(zzwd.zze(zzeaVar, this.zza, this.zze));
            if (zzeeVar != null) {
                zzajoVar.zzb(zzeaVar, zzeeVar);
            }
        }
        return zzajoVar.zzd();
    }

    public final /* synthetic */ zzasi zzh(zzno zznoVar, Exception exc) throws Exception {
        zzn(zznoVar);
        return zzarx.zzg(exc);
    }

    public final /* synthetic */ zzasi zzi(zzno zznoVar, Boolean bool) throws Exception {
        zzn(zznoVar);
        return zzarx.zzh(bool);
    }

    public final /* synthetic */ zzasi zzj(int i, zzno zznoVar, Boolean bool) throws Exception {
        if (!bool.booleanValue()) {
            return zzarx.zzh(Boolean.FALSE);
        }
        zznp.zzc(this.zza, zzno.zza(i));
        return zzm(zznoVar, i + 1);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzr(final zzea zzeaVar) {
        zzasi zzs = zzs(zzaka.zzo(zzeaVar));
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqn
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return (zzee) ((zzajp) obj).get(zzea.this);
            }
        };
        return zzarx.zzn(zzs, zzaeq.zza(zzaftVar), zzasq.zzb());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzs(final zzaka zzakaVar) {
        zzasi zzd = this.zzb.zzd();
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqd
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzqp.this.zzg(zzakaVar, (zzeh) obj);
            }
        };
        return zzarx.zzn(zzd, zzaeq.zza(zzaftVar), zzasq.zzb());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzt(zzea zzeaVar) {
        final String zze = zzwd.zze(zzeaVar, this.zza, this.zze);
        return zzwu.zzc(this.zzb.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpy
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                String str = zze;
                zzef zzefVar = (zzef) ((zzeh) obj).zzO();
                zzefVar.zzb(str);
                return (zzeh) zzefVar.zzx();
            }
        }, this.zzc)).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzpz
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.TRUE;
            }
        }, this.zzc).zza(IOException.class, new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqa
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.FALSE;
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzrq
    public final zzasi zzu(zzea zzeaVar, final zzee zzeeVar) {
        final String zze = zzwd.zze(zzeaVar, this.zza, this.zze);
        return zzwu.zzc(this.zzb.zzh(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqk
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                String str = zze;
                zzee zzeeVar2 = zzeeVar;
                zzef zzefVar = (zzef) ((zzeh) obj).zzO();
                zzefVar.zza(str, zzeeVar2);
                return (zzeh) zzefVar.zzx();
            }
        }, this.zzc)).zzd(new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzql
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.TRUE;
            }
        }, this.zzc).zza(IOException.class, new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqm
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return Boolean.FALSE;
            }
        }, this.zzc);
    }
}
