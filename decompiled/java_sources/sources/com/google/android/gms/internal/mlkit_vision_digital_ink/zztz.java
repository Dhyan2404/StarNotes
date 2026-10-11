package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zztz implements zzuo {
    private final Context zza;
    private final zzrq zzb;
    private final zzyg zzc;
    private final zzck zzd;
    private final zzgc zze;
    private final zzcw zzf;
    private final zzdu zzg;
    private final int zzh;
    private final long zzi;
    private final String zzj;
    private final zzagb zzk;
    private final zzbq zzl;
    private final Executor zzm;
    private final zzsp zzn;
    private final int zzo;
    private final zzuz zzp;

    public zztz(Context context, zzrq zzrqVar, zzyg zzygVar, zzsp zzspVar, zzck zzckVar, int i, zzgc zzgcVar, zzcw zzcwVar, zzuz zzuzVar, zzdu zzduVar, int i2, long j, String str, zzagb zzagbVar, zzbq zzbqVar, Executor executor, byte[] bArr, byte[] bArr2) {
        this.zza = context;
        this.zzb = zzrqVar;
        this.zzc = zzygVar;
        this.zzn = zzspVar;
        this.zzd = zzckVar;
        this.zzo = i;
        this.zze = zzgcVar;
        this.zzf = zzcwVar;
        this.zzp = zzuzVar;
        this.zzg = zzduVar;
        this.zzh = i2;
        this.zzi = j;
        this.zzj = str;
        this.zzk = zzagbVar;
        this.zzl = zzbqVar;
        this.zzm = executor;
    }

    public final /* synthetic */ zzasi zza(zzea zzeaVar, Uri uri, Uri uri2, zzee zzeeVar) throws Exception {
        Uri uri3 = null;
        if (zzeeVar != null && zzeeVar.zzd() == zzds.DOWNLOAD_COMPLETE) {
            uri3 = zzvm.zze(this.zza, this.zzo, zzeeVar.zzj(), zzeaVar.zzf(), this.zzn, this.zzk, false);
        }
        if (uri3 == null) {
            zzbg zzbgVar = new zzbg();
            zzbgVar.zzb(zzbh.DELTA_DOWNLOAD_BASE_FILE_NOT_FOUND_ERROR);
            return zzarx.zzg(zzbgVar.zze());
        }
        try {
            if (this.zzc.zzi(uri)) {
                this.zzc.zzf(uri);
            }
            this.zze.zza();
            this.zzc.zzf(uri2);
            zzapf zza = zzapg.zza();
            zza.zzc(this.zzg.zzg());
            zza.zzd(this.zzh);
            zza.zzf(this.zzg.zzh());
            zza.zza(this.zzi);
            zza.zzg(this.zzj);
            this.zzd.zza();
            this.zzd.zzm();
            for (int i = 0; i < this.zzd.zzc() && !zzafd.zzc(this.zzd.zzf(i).zze(), this.zzf.zze()); i++) {
            }
            return zzarx.zzi();
        } catch (IOException e) {
            zzuw.zzj(e, "%s: Failed to decode delta file with url = %s failed. checksum = %s ", "DeltaFileDownloaderCallbackImpl", this.zzf.zzf(), this.zzd.zzk());
            zzbg zzbgVar2 = new zzbg();
            zzbgVar2.zzb(zzbh.DELTA_DOWNLOAD_DECODE_IO_ERROR);
            zzbgVar2.zza(e);
            return zzarx.zzg(zzbgVar2.zze());
        }
    }

    public final /* synthetic */ zzasi zzb(Uri uri, Void r4) throws Exception {
        zzyg zzygVar = this.zzc;
        if (zzuj.zzb(zzygVar, uri).equals(this.zzd.zzk())) {
            return zzuh.zza(zzds.DOWNLOAD_COMPLETE, this.zzd, this.zzo, this.zzb, this.zzm);
        }
        zzuw.zzi("%s: Final file checksum verification failed. %s.", "DeltaFileDownloaderCallbackImpl", uri);
        zzbg zzbgVar = new zzbg();
        zzbgVar.zzb(zzbh.FINAL_FILE_CHECKSUM_MISMATCH_ERROR);
        return zzarx.zzg(zzbgVar.zze());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzuo
    public final zzasi zzc(final Uri uri) {
        zzuw.zzc("%s: Successfully downloaded delta file %s", "DeltaFileDownloaderCallbackImpl", uri);
        zzyg zzygVar = this.zzc;
        if (!zzuj.zzb(zzygVar, uri).equals(this.zzf.zze())) {
            zzuw.zzg("%s: Downloaded delta file at uri = %s, checksum = %s verification failed", "DeltaFileDownloaderCallbackImpl", uri, this.zzf.zze());
            zzbg zzbgVar = new zzbg();
            zzbgVar.zzb(zzbh.DOWNLOADED_FILE_CHECKSUM_MISMATCH_ERROR);
            final zzbj zze = zzbgVar.zze();
            return zzwu.zzc(zzuh.zzb(this.zzb, this.zzd, this.zzo, this.zzc, uri, this.zzf.zze(), this.zzp, this.zzl, this.zzm)).zzb(IOException.class, new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zztv
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(zzbj.this, (IOException) obj);
                    } catch (Exception unused) {
                    }
                    return zzarx.zzi();
                }
            }, this.zzm).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zztw
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzarx.zzg(zzbj.this);
                }
            }, this.zzm);
        }
        final Uri zza = zzui.zza(uri);
        zzdz zzc = zzea.zzc();
        zzc.zzb(this.zzf.zzc().zzd());
        zzc.zze(this.zzo);
        final zzea zzeaVar = (zzea) zzc.zzx();
        zzasi zzr = this.zzb.zzr(zzeaVar);
        zzaqt zzaqtVar = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzty
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zztz.this.zza(zzeaVar, zza, uri, (zzee) obj);
            }
        };
        zzasi zzo = zzarx.zzo(zzr, zzaeq.zzc(zzaqtVar), this.zzm);
        zzaqt zzaqtVar2 = new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zztx
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zztz.this.zzb(zza, (Void) obj);
            }
        };
        return zzarx.zzo(zzo, zzaeq.zzc(zzaqtVar2), this.zzm);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzuo
    public final zzasi zzd(zzbj zzbjVar) {
        zzuw.zzc("%s: Failed to download file(delta) %s", "DeltaFileDownloaderCallbackImpl", this.zzd.zzk());
        return zzbjVar.zza().equals(zzbh.DOWNLOADED_FILE_CHECKSUM_MISMATCH_ERROR) ? zzuh.zza(zzds.CORRUPTED, this.zzd, this.zzo, this.zzb, this.zzm) : zzuh.zza(zzds.DOWNLOAD_FAILED, this.zzd, this.zzo, this.zzb, this.zzm);
    }
}
