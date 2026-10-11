package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.util.Log;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.io.File;

/* loaded from: classes5.dex */
public final class zzbpt {
    private final zzbrp zza;

    public zzbpt(zzbrp zzbrpVar) {
        this.zza = zzbrpVar;
    }

    public final void zza(File file, long j) {
        Log.d("DownloadCompleteHandler", String.format("Downloaded file %s", file.getName()));
        this.zza.zzc(null);
    }

    public final void zzb(File file, zzxe zzxeVar) {
        zzbh zzbhVar;
        Throwable zzd = zzxeVar.zzd();
        Log.d("DownloadCompleteHandler", String.format("Failed to download file %s due to %s", file.getName(), zzxd.zza(zzxeVar.zze())), zzd);
        zzbg zzbgVar = new zzbg();
        int zze = zzxeVar.zze();
        int i = zze - 1;
        if (zze == 0) {
            throw null;
        }
        switch (i) {
            case 0:
                zzbhVar = zzbh.ANDROID_DOWNLOADER_UNKNOWN;
                break;
            case 1:
                zzbhVar = zzbh.ANDROID_DOWNLOADER_CANCELED;
                break;
            case 2:
                zzbhVar = zzbh.ANDROID_DOWNLOADER_INVALID_REQUEST;
                break;
            case 3:
                zzbhVar = zzbh.ANDROID_DOWNLOADER_HTTP_ERROR;
                break;
            case 4:
                zzbhVar = zzbh.ANDROID_DOWNLOADER_REQUEST_ERROR;
                break;
            case 5:
                zzbhVar = zzbh.ANDROID_DOWNLOADER_RESPONSE_OPEN_ERROR;
                break;
            case 6:
                zzbhVar = zzbh.ANDROID_DOWNLOADER_RESPONSE_CLOSE_ERROR;
                break;
            case 7:
                zzbhVar = zzbh.ANDROID_DOWNLOADER_NETWORK_IO_ERROR;
                break;
            case 8:
                zzbhVar = zzbh.ANDROID_DOWNLOADER_DISK_IO_ERROR;
                break;
            case 9:
                zzbhVar = zzbh.ANDROID_DOWNLOADER_FILE_SYSTEM_ERROR;
                break;
            case 10:
                zzbhVar = zzbh.ANDROID_DOWNLOADER_UNKNOWN_IO_ERROR;
                break;
            default:
                zzbhVar = zzbh.UNKNOWN_ERROR;
                break;
        }
        zzbgVar.zzb(zzbhVar);
        int zze2 = zzxeVar.zze();
        String zza = zzxd.zza(zze2);
        if (zze2 == 0) {
            throw null;
        }
        if (zzxeVar.zza() >= 0) {
            zza = zza + " HttpCode: " + zzxeVar.zza() + AndroidTreeView.f47214k;
        }
        if (zzxeVar.zzc() != null) {
            zza = zza + " Message: " + zzxeVar.zzc() + AndroidTreeView.f47214k;
        }
        zzbgVar.zzc(zza);
        if (zzd != null) {
            zzbgVar.zza(zzd);
        }
        this.zza.zzd(zzbgVar.zze());
    }
}
