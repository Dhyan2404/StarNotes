package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzrn {
    private final Context zza;
    private final zzrq zzb;
    private final zzup zzc;
    private final zzyg zzd;
    private final zzagb zze;
    private final zzagb zzf;
    private final zzbq zzg;
    private final zzlm zzh;
    private final zzagb zzi;
    private final Executor zzj;
    private final zzsp zzk;
    private final zzuz zzl;

    public zzrn(Context context, zzsp zzspVar, zzrq zzrqVar, zzyg zzygVar, zzup zzupVar, zzagb zzagbVar, zzagb zzagbVar2, zzuz zzuzVar, zzbq zzbqVar, zzlm zzlmVar, zzagb zzagbVar3, Executor executor, byte[] bArr, byte[] bArr2) {
        this.zza = context;
        this.zzk = zzspVar;
        this.zzb = zzrqVar;
        this.zzd = zzygVar;
        this.zzc = zzupVar;
        this.zze = zzagbVar;
        this.zzf = zzagbVar2;
        this.zzl = zzuzVar;
        this.zzg = zzbqVar;
        this.zzh = zzlmVar;
        this.zzi = zzagbVar3;
        this.zzj = executor;
    }

    private final void zzD(zzdu zzduVar, Uri uri) {
        if (this.zzf.zzc()) {
            try {
                if (this.zzd.zza(uri) <= 0) {
                    return;
                }
                zzduVar.zzg();
                throw null;
            } catch (IOException unused) {
            }
        }
    }

    private final zzasi zzE(final List list, final int i, final int i2) {
        if (i == list.size()) {
            return zzarx.zzh(null);
        }
        final zzcw zzcwVar = (zzcw) list.get(i);
        if (zzcwVar.zzj() != ((zzgc) this.zze.zza()).zzb()) {
            return zzE(list, i + 1, i2);
        }
        zzdz zzc = zzea.zzc();
        zzc.zzb(zzcwVar.zzc().zzd());
        zzc.zze(i2);
        final zzea zzeaVar = (zzea) zzc.zzx();
        zzasi zzr = this.zzb.zzr(zzeaVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzrc
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrn.this.zzC(zzeaVar, zzcwVar, list, i, i2, (zzee) obj);
            }
        };
        return zzarx.zzo(zzr, zzaeq.zzc(zzaqtVar), this.zzj);
    }

    public final zzasi zzA(final zzdu zzduVar, final zzck zzckVar, final zzea zzeaVar, @Nullable final zzdh zzdhVar, final int i, final List list) {
        if (zzckVar.zzo().startsWith("inlinefile")) {
            zzbg zzbgVar = new zzbg();
            zzbgVar.zzb(zzbh.INVALID_INLINE_FILE_URL_SCHEME);
            zzbgVar.zzc("downloading a file with an inlinefile scheme is not supported, use importFiles instead.");
            return zzarx.zzg(zzbgVar.zze());
        }
        zzasi zzr = this.zzb.zzr(zzeaVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzra
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrn.this.zzu(zzeaVar, zzduVar, zzckVar, zzdhVar, i, list, (zzee) obj);
            }
        };
        return zzarx.zzo(zzr, zzaeq.zzc(zzaqtVar), this.zzj);
    }

    public final zzasi zzB(final zzea zzeaVar, final long j) {
        zzasi zzg = zzg(zzeaVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzrh
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrn.this.zzv(j, zzeaVar, (zzee) obj);
            }
        };
        return zzarx.zzo(zzg, zzaeq.zzc(zzaqtVar), this.zzj);
    }

    public final /* synthetic */ zzasi zzC(zzea zzeaVar, zzcw zzcwVar, List list, int i, int i2, zzee zzeeVar) throws Exception {
        return (zzeeVar == null || zzeeVar.zzd() != zzds.DOWNLOAD_COMPLETE || zzvm.zze(this.zza, zzeaVar.zzm(), zzeeVar.zzj(), zzeaVar.zzf(), this.zzk, this.zzi, false) == null) ? zzE(list, i + 1, i2) : zzarx.zzh(zzcwVar);
    }

    public final zzasi zza(final zzea zzeaVar) {
        zzasi zzr = this.zzb.zzr(zzeaVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqq
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrn.this.zzi(zzeaVar, (zzee) obj);
            }
        };
        return zzarx.zzo(zzr, zzaeq.zzc(zzaqtVar), this.zzj);
    }

    public final zzasi zzb() {
        zzasi zzb = this.zzb.zzb();
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqz
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrn.this.zzj((List) obj);
            }
        };
        return zzarx.zzo(zzb, zzaeq.zzc(zzaqtVar), this.zzj);
    }

    public final zzasi zzc() {
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                zzyx zzb = zzyy.zzb(this.zza);
                zzb.zzb();
                this.zzd.zzf(zzb.zza());
            } catch (zzzm unused) {
                zzuw.zzk("%s: Failed to release the leases in the android shared storage. UnsupportedFileStorageOperation was thrown", "SharedFileManager");
            } catch (IOException e) {
                zzuw.zzj(e, "%s: Failed to release the leases in the android shared storage", "SharedFileManager");
            }
        }
        try {
            this.zzd.zzh(zzvm.zza(this.zza, this.zzi));
        } catch (IOException unused2) {
        }
        return zzarx.zzi();
    }

    public final zzasi zzd(zzea zzeaVar) {
        zzasi zzg = zzg(zzeaVar);
        zzqx zzqxVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqx
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzarx.zzh(((zzee) obj).zzd());
            }
        };
        return zzarx.zzo(zzg, zzaeq.zzc(zzqxVar), this.zzj);
    }

    public final zzasi zze(final zzea zzeaVar) {
        zzasi zzf = zzf(zzaka.zzo(zzeaVar));
        zzaft zzaftVar = new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqs
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return (Uri) ((zzajp) obj).get(zzea.this);
            }
        };
        return zzarx.zzn(zzf, zzaeq.zza(zzaftVar), zzasq.zzb());
    }

    public final zzasi zzf(final zzaka zzakaVar) {
        return zzwu.zzc(this.zzb.zzs(zzakaVar)).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzri
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrn.this.zzm(zzakaVar, (zzajp) obj);
            }
        }, this.zzj);
    }

    public final zzasi zzg(final zzea zzeaVar) {
        zzasi zzr = this.zzb.zzr(zzeaVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzrf
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzea zzeaVar2 = zzea.this;
                zzee zzeeVar = (zzee) obj;
                if (zzeeVar != null) {
                    return zzarx.zzh(zzeeVar);
                }
                zzuw.zzi("%s: getSharedFile called on file that doesn't exist! Key = %s", "SharedFileManager", zzeaVar2);
                return zzarx.zzg(new zzro());
            }
        };
        return zzarx.zzo(zzr, zzaeq.zzc(zzaqtVar), this.zzj);
    }

    public final zzasi zzh() {
        SharedPreferences zza = zzwe.zza(this.zza, "gms_icing_mdd_shared_file_manager_metadata", this.zzi);
        if (zza.contains("migrated_to_new_file_key")) {
            if (zza.getBoolean("migrated_to_new_file_key", false)) {
                zznp.zza(this.zza, true);
            }
            zza.edit().remove("migrated_to_new_file_key").commit();
        }
        return zzarx.zzh(Boolean.TRUE);
    }

    public final /* synthetic */ zzasi zzi(zzea zzeaVar, zzee zzeeVar) throws Exception {
        Uri zze;
        if (zzeeVar == null) {
            zzuw.zzf("%s: Unable to read sharedFile from shared preferences.", "SharedFileManager");
            return zzarx.zzg(new zzro());
        }
        if (zzeeVar.zzd() != zzds.DOWNLOAD_COMPLETE && (zze = zzvm.zze(this.zza, zzeaVar.zzm(), zzeeVar.zzj(), zzeaVar.zzf(), this.zzk, this.zzi, false)) != null) {
            this.zzc.zzc(zze);
        }
        return zzarx.zzi();
    }

    public final /* synthetic */ zzasi zzj(List list) throws Exception {
        ArrayList arrayList = new ArrayList();
        try {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(zza((zzea) it2.next()));
            }
        } catch (Exception unused) {
        }
        return zzwx.zza(arrayList).zzb(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzrg
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzrn.this.zzc();
            }
        }, this.zzj);
    }

    public final /* synthetic */ zzasi zzk(zzasi zzasiVar, zzcw zzcwVar, zzck zzckVar, zzea zzeaVar, zzdu zzduVar, int i, long j, String str, zzdh zzdhVar, int i2, List list, Boolean bool) throws Exception {
        Uri uri = (Uri) zzarx.zzp(zzasiVar);
        if (!this.zze.zzc() || zzcwVar == null) {
            zzuh zzuhVar = new zzuh(this.zzb, this.zzd, zzckVar, zzeaVar.zzm(), this.zzl, zzduVar, i, j, str, this.zzg, this.zzj, null);
            zzD(zzduVar, uri);
            return this.zzc.zzb(zzduVar, i, j, str, uri, zzckVar.zzo(), zzckVar.zza(), zzdhVar, zzuhVar, i2, list);
        }
        zztz zztzVar = new zztz(this.zza, this.zzb, this.zzd, this.zzk, zzckVar, zzeaVar.zzm(), (zzgc) this.zze.zza(), zzcwVar, this.zzl, zzduVar, i, j, str, this.zzi, this.zzg, this.zzj, null, null);
        zzD(zzduVar, uri);
        return this.zzc.zzb(zzduVar, i, j, str, uri, zzcwVar.zzf(), zzcwVar.zza(), zzdhVar, zztzVar, i2, list);
    }

    public final /* synthetic */ zzasi zzl(zzed zzedVar, zzea zzeaVar, Uri uri) throws Exception {
        zzedVar.zze(zzds.DOWNLOAD_IN_PROGRESS);
        return this.zzb.zzu(zzeaVar, (zzee) zzedVar.zzx());
    }

    public final /* synthetic */ zzasi zzm(zzaka zzakaVar, zzajp zzajpVar) throws Exception {
        zzajo zzajoVar = new zzajo();
        zzalx it2 = zzakaVar.iterator();
        while (it2.hasNext()) {
            zzea zzeaVar = (zzea) it2.next();
            if (!zzajpVar.containsKey(zzeaVar)) {
                zzuw.zzi("%s: getOnDeviceUris called on file that doesn't exist. Key = %s!", "SharedFileManager", zzeaVar);
                return zzarx.zzg(new zzro());
            }
            zzee zzeeVar = (zzee) zzajpVar.get(zzeaVar);
            Uri zze = zzvm.zze(this.zza, zzeaVar.zzm(), zzeeVar.zzj(), zzeeVar.zzi(), this.zzk, this.zzi, zzeeVar.zzq());
            if (zze != null) {
                zzajoVar.zzb(zzeaVar, zze);
            }
        }
        return zzarx.zzh(zzajoVar.zzd());
    }

    public final /* synthetic */ zzasi zzn(zzee zzeeVar, zzck zzckVar, Uri uri) throws Exception {
        if (uri == null) {
            zzbg zzbgVar = new zzbg();
            zzbgVar.zzb(zzbh.DOWNLOADED_FILE_NOT_FOUND_ERROR);
            throw zzbgVar.zze();
        }
        if (!zzeeVar.zzq()) {
            zzuj.zzc(this.zzd, zzckVar, uri, zzckVar.zzk());
        } else if (!this.zzd.zzi(uri)) {
            zzbg zzbgVar2 = new zzbg();
            zzbgVar2.zzb(zzbh.DOWNLOADED_FILE_NOT_FOUND_ERROR);
            throw zzbgVar2.zze();
        }
        return zzarx.zzi();
    }

    public final /* synthetic */ zzasi zzo(zzee zzeeVar, zzea zzeaVar, zzbj zzbjVar) throws Exception {
        zzuw.zzi("%s: reVerifyFile lost or corrupted code %s", "SharedFileManager", zzbjVar.zza());
        zzed zzedVar = (zzed) zzeeVar.zzO();
        zzedVar.zze(zzds.CORRUPTED);
        return zzwu.zzc(this.zzb.zzu(zzeaVar, (zzee) zzedVar.zzx())).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqy
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzro zzroVar = new zzro();
                if (((Boolean) obj).booleanValue()) {
                    throw zzroVar;
                }
                throw new IOException("failed to save sharedFilesMetadata", zzroVar);
            }
        }, this.zzj);
    }

    public final /* synthetic */ zzasi zzp(final zzea zzeaVar, final zzck zzckVar, final zzee zzeeVar) throws Exception {
        return zzeeVar.zzd() != zzds.DOWNLOAD_COMPLETE ? zzarx.zzi() : zzwu.zzc(zze(zzeaVar)).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzrm
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrn.this.zzn(zzeeVar, zzckVar, (Uri) obj);
            }
        }, this.zzj).zzb(zzbj.class, new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqr
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrn.this.zzo(zzeeVar, zzeaVar, (zzbj) obj);
            }
        }, this.zzj);
    }

    public final /* synthetic */ zzasi zzq(final zzea zzeaVar, zzee zzeeVar) throws Exception {
        if (zzeeVar == null) {
            zzuw.zzi("%s: No file entry with key %s", "SharedFileManager", zzeaVar);
            return zzarx.zzh(Boolean.FALSE);
        }
        Uri zze = zzvm.zze(this.zza, zzeaVar.zzm(), zzeeVar.zzj(), zzeaVar.zzf(), this.zzk, this.zzi, false);
        if (zze != null) {
            this.zzc.zzc(zze);
        }
        zzasi zzt = this.zzb.zzt(zzeaVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqw
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzea zzeaVar2 = zzea.this;
                if (((Boolean) obj).booleanValue()) {
                    return zzarx.zzh(Boolean.TRUE);
                }
                zzuw.zzi("%s: Unable to modify file subscription for key %s", "SharedFileManager", zzeaVar2);
                return zzarx.zzh(Boolean.FALSE);
            }
        };
        return zzarx.zzo(zzt, zzaeq.zzc(zzaqtVar), this.zzj);
    }

    public final /* synthetic */ zzasi zzr(final zzea zzeaVar, zzee zzeeVar) throws Exception {
        if (zzeeVar != null) {
            return zzarx.zzh(Boolean.TRUE);
        }
        SharedPreferences zza = zzwe.zza(this.zza, "gms_icing_mdd_shared_file_manager_metadata", this.zzi);
        long j = zza.getLong("next_file_name_v2", System.currentTimeMillis());
        if (!zza.edit().putLong("next_file_name_v2", 1 + j).commit()) {
            zzuw.zzi("%s: Unable to update file name %s", "SharedFileManager", zzeaVar);
            return zzarx.zzh(Boolean.FALSE);
        }
        String str = "datadownloadfile_" + j;
        zzed zze = zzee.zze();
        zze.zze(zzds.SUBSCRIBED);
        zze.zzd(str);
        return zzarx.zzo(this.zzb.zzu(zzeaVar, (zzee) zze.zzx()), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzrd
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzea zzeaVar2 = zzea.this;
                if (((Boolean) obj).booleanValue()) {
                    return zzarx.zzh(Boolean.TRUE);
                }
                zzuw.zzi("%s: Unable to write back subscription for file entry with %s", "SharedFileManager", zzeaVar2);
                return zzarx.zzh(Boolean.FALSE);
            }
        }), this.zzj);
    }

    public final /* synthetic */ zzasi zzs(final zzed zzedVar, final zzea zzeaVar, String str, final zzdu zzduVar, final zzck zzckVar, final zzcw zzcwVar, final zzdh zzdhVar, final int i, final List list, zzcr zzcrVar) throws Exception {
        zzasi zzh;
        final int zzc = zzcrVar.zzc();
        final long zze = zzcrVar.zze();
        final String zzt = zzcrVar.zzt();
        Uri zze2 = zzvm.zze(this.zza, zzeaVar.zzm(), str, zzckVar.zzk(), this.zzk, this.zzi, false);
        if (zze2 == null) {
            zzuw.zzf("%s: Failed to get file uri!", "SharedFileManager");
            zzbg zzbgVar = new zzbg();
            zzbgVar.zzb(zzbh.UNABLE_TO_CREATE_FILE_URI_ERROR);
            zzh = zzarx.zzg(zzbgVar.zze());
        } else {
            zzh = zzarx.zzh(zze2);
        }
        final zzasi zzasiVar = zzh;
        return zzwu.zzc(zzasiVar).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzrj
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrn.this.zzl(zzedVar, zzeaVar, (Uri) obj);
            }
        }, this.zzj).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzrk
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrn.this.zzk(zzasiVar, zzcwVar, zzckVar, zzeaVar, zzduVar, zzc, zze, zzt, zzdhVar, i, list, (Boolean) obj);
            }
        }, this.zzj);
    }

    public final /* synthetic */ zzasi zzt(zzee zzeeVar, final zzck zzckVar, final zzdu zzduVar, final zzea zzeaVar, final zzdh zzdhVar, final int i, final List list, final zzcw zzcwVar) throws Exception {
        final zzed zzedVar = (zzed) zzeeVar.zzO();
        String zzj = zzeeVar.zzj();
        if (zzcwVar != null) {
            zzj = zzui.zzb(zzj, zzcwVar.zze());
        } else if (zzckVar.zzu()) {
            zzj = zzui.zzb(zzj, zzckVar.zzl());
        }
        final String str = zzj;
        zzasi zzg = this.zzh.zzg(zzduVar);
        zzre zzreVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzre
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzcr zzcrVar = (zzcr) obj;
                if (zzcrVar == null) {
                    zzcrVar = zzcr.zzk();
                }
                return zzarx.zzh(zzcrVar);
            }
        };
        zzasi zzo = zzarx.zzo(zzg, zzaeq.zzc(zzreVar), this.zzj);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqu
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrn.this.zzs(zzedVar, zzeaVar, str, zzduVar, zzckVar, zzcwVar, zzdhVar, i, list, (zzcr) obj);
            }
        };
        return zzarx.zzo(zzo, zzaeq.zzc(zzaqtVar), this.zzj);
    }

    public final /* synthetic */ zzasi zzu(final zzea zzeaVar, final zzdu zzduVar, final zzck zzckVar, final zzdh zzdhVar, final int i, final List list, final zzee zzeeVar) throws Exception {
        if (zzeeVar == null) {
            zzuw.zzi("%s: Start download called on file that doesn't exist. Key = %s!", "SharedFileManager", zzeaVar);
            zzro zzroVar = new zzro();
            zzbg zzbgVar = new zzbg();
            zzbgVar.zzb(zzbh.SHARED_FILE_NOT_FOUND_ERROR);
            zzbgVar.zza(zzroVar);
            return zzarx.zzg(zzbgVar.zze());
        }
        if (zzeeVar.zzd() != zzds.DOWNLOAD_COMPLETE) {
            return zzarx.zzo((zznp.zzd(this.zza, this.zzk).zzd < zzno.USE_CHECKSUM_ONLY.zzd || !this.zze.zzc() || ((zzgc) this.zze.zza()).zzb() == 1) ? zzarx.zzh(null) : zzE(zzckVar.zzp(), 0, zzeaVar.zzm()), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqv
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzrn.this.zzt(zzeeVar, zzckVar, zzduVar, zzeaVar, zzdhVar, i, list, (zzcw) obj);
                }
            }), this.zzj);
        }
        if (!this.zzf.zzc()) {
            return zzarx.zzi();
        }
        zzduVar.zzg();
        zzckVar.zza();
        throw null;
    }

    public final /* synthetic */ zzasi zzv(long j, zzea zzeaVar, zzee zzeeVar) throws Exception {
        if (j <= zzeeVar.zzc()) {
            return zzarx.zzh(Boolean.TRUE);
        }
        zzed zzedVar = (zzed) zzeeVar.zzO();
        zzedVar.zzf(j);
        return this.zzb.zzu(zzeaVar, (zzee) zzedVar.zzx());
    }

    public final zzasi zzw(final zzea zzeaVar, final zzck zzckVar) {
        return zzwu.zzc(zzg(zzeaVar)).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzrb
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrn.this.zzp(zzeaVar, zzckVar, (zzee) obj);
            }
        }, this.zzj);
    }

    public final zzasi zzx(final zzea zzeaVar) {
        zzasi zzr = this.zzb.zzr(zzeaVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzqt
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrn.this.zzq(zzeaVar, (zzee) obj);
            }
        };
        return zzarx.zzo(zzr, zzaeq.zzc(zzaqtVar), this.zzj);
    }

    public final zzasi zzy(final zzea zzeaVar) {
        zzasi zzr = this.zzb.zzr(zzeaVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzrl
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzrn.this.zzr(zzeaVar, (zzee) obj);
            }
        };
        return zzarx.zzo(zzr, zzaeq.zzc(zzaqtVar), this.zzj);
    }

    public final zzasi zzz(zzea zzeaVar, String str, long j) {
        zzed zze = zzee.zze();
        zze.zze(zzds.DOWNLOAD_COMPLETE);
        zze.zzd("android_shared_".concat(String.valueOf(str)));
        zze.zza(true);
        zze.zzf(j);
        zze.zzb(str);
        return this.zzb.zzu(zzeaVar, (zzee) zze.zzx());
    }
}
