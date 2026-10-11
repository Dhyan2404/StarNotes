package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import java.io.IOException;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzuh implements zzuo {
    private final zzrq zza;
    private final zzyg zzb;
    private final zzck zzc;
    private final String zzd;
    private final zzdu zze;
    private final int zzf;
    private final long zzg;
    private final String zzh;
    private final zzbq zzi;
    private final Executor zzj;
    private final int zzk;
    private final zzuz zzl;

    public zzuh(zzrq zzrqVar, zzyg zzygVar, zzck zzckVar, int i, zzuz zzuzVar, zzdu zzduVar, int i2, long j, String str, zzbq zzbqVar, Executor executor, byte[] bArr) {
        this.zza = zzrqVar;
        this.zzb = zzygVar;
        this.zzc = zzckVar;
        this.zzk = i;
        this.zzd = zzvu.zze(zzckVar);
        this.zzl = zzuzVar;
        this.zze = zzduVar;
        this.zzf = i2;
        this.zzg = j;
        this.zzh = str;
        this.zzi = zzbqVar;
        this.zzj = executor;
    }

    public static zzasi zza(final zzds zzdsVar, zzck zzckVar, int i, final zzrq zzrqVar, Executor executor) {
        final zzea zza = zzrp.zza(zzckVar, i);
        return zzwu.zzc(zze(zzrqVar, zza, executor)).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzuf
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzds zzdsVar2 = zzds.this;
                zzrq zzrqVar2 = zzrqVar;
                zzea zzeaVar = zza;
                zzee zzeeVar = (zzee) obj;
                zzed zzedVar = (zzed) zzeeVar.zzO();
                zzedVar.zze(zzdsVar2);
                if (zzdsVar2.equals(zzds.CORRUPTED)) {
                    zzedVar.zzc(zzeeVar.zza() + 1);
                }
                return zzrqVar2.zzu(zzeaVar, (zzee) zzedVar.zzx());
            }
        }, executor).zze(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzug
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzea zzeaVar = zzea.this;
                if (((Boolean) obj).booleanValue()) {
                    return zzarx.zzi();
                }
                zzuw.zzi("%s: Unable to write back download info for file entry with %s", "DownloaderCallbackImpl", zzeaVar);
                zzbg zzbgVar = new zzbg();
                zzbgVar.zzb(zzbh.UNABLE_TO_UPDATE_FILE_STATE_ERROR);
                return zzarx.zzg(zzbgVar.zze());
            }
        }, executor);
    }

    public static zzasi zzb(zzrq zzrqVar, zzck zzckVar, int i, final zzyg zzygVar, final Uri uri, final String str, final zzuz zzuzVar, final zzbq zzbqVar, Executor executor) {
        final byte[] bArr = null;
        return zzwu.zzc(zze(zzrqVar, zzrp.zza(zzckVar, i), executor)).zze(new zzaqt(str, zzuzVar, zzygVar, uri, bArr) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzub
            public final /* synthetic */ String zzb;
            public final /* synthetic */ zzyg zzc;
            public final /* synthetic */ Uri zzd;
            public final /* synthetic */ zzuz zze;

            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzbq zzbqVar2 = zzbq.this;
                String str2 = this.zzb;
                zzyg zzygVar2 = this.zzc;
                Uri uri2 = this.zzd;
                int zza = ((zzee) obj).zza();
                zzbqVar2.zze();
                if (zza >= 5) {
                    zzuw.zzc("%s: Checksum mismatch detected but the has already reached retry limit! Skipping removal for file %s", "DownloaderCallbackImpl", str2);
                } else {
                    zzuw.zza("%s: Removing file and marking as corrupted due to checksum mismatch", "DownloaderCallbackImpl");
                    try {
                        zzygVar2.zzf(uri2);
                    } catch (IOException e) {
                        zzuw.zzj(e, "%s: Failed to remove corrupted file %s", "DownloaderCallbackImpl", str2);
                        return zzarx.zzg(e);
                    }
                }
                return zzarx.zzi();
            }
        }, executor);
    }

    private static zzasi zze(zzrq zzrqVar, final zzea zzeaVar, Executor executor) {
        return zzarx.zzo(zzrqVar.zzr(zzeaVar), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzuc
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzea zzeaVar2 = zzea.this;
                zzee zzeeVar = (zzee) obj;
                if (zzeeVar != null) {
                    return zzarx.zzh(zzeeVar);
                }
                zzuw.zzi("%s: Shared file not found, newFileKey = %s", "DownloaderCallbackImpl", zzeaVar2);
                zzbg zzbgVar = new zzbg();
                zzbgVar.zzb(zzbh.SHARED_FILE_NOT_FOUND_ERROR);
                return zzarx.zzg(zzbgVar.zze());
            }
        }), executor);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x023c  */
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzuo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.mlkit_vision_digital_ink.zzasi zzc(android.net.Uri r21) {
        /*
            Method dump skipped, instructions count: 577
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzuh.zzc(android.net.Uri):com.google.android.gms.internal.mlkit_vision_digital_ink.zzasi");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzuo
    public final zzasi zzd(zzbj zzbjVar) {
        zzuw.zzc("%s: Failed to download file %s", "DownloaderCallbackImpl", this.zzd);
        return zzbjVar.zza().equals(zzbh.DOWNLOADED_FILE_CHECKSUM_MISMATCH_ERROR) ? zza(zzds.CORRUPTED, this.zzc, this.zzk, this.zza, this.zzj) : zza(zzds.DOWNLOAD_FAILED, this.zzc, this.zzk, this.zza, this.zzj);
    }
}
