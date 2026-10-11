package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;

/* loaded from: classes5.dex */
final class zzgi extends zzgn {
    private final Uri zza;
    private final String zzb;
    private final zzgl zzc;
    private final int zzd;
    private final zzajm zze;
    private final zzagb zzf;

    public /* synthetic */ zzgi(Uri uri, String str, zzgl zzglVar, int i, zzajm zzajmVar, zzagb zzagbVar, zzgh zzghVar) {
        this.zza = uri;
        this.zzb = str;
        this.zzc = zzglVar;
        this.zzd = i;
        this.zze = zzajmVar;
        this.zzf = zzagbVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgn) {
            zzgn zzgnVar = (zzgn) obj;
            if (this.zza.equals(zzgnVar.zzb()) && this.zzb.equals(zzgnVar.zzf()) && this.zzc.equals(zzgnVar.zzc()) && this.zzd == zzgnVar.zza() && this.zze.equals(zzgnVar.zze()) && this.zzf.equals(zzgnVar.zzd())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zze.hashCode() ^ ((((((((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb.hashCode()) * 1000003) ^ this.zzc.hashCode()) * 1000003) ^ this.zzd) * 1000003)) * 1000003) ^ 2040732332;
    }

    public final String toString() {
        return "DownloadRequest{fileUri=" + this.zza.toString() + ", urlToDownload=" + this.zzb + ", downloadConstraints=" + this.zzc.toString() + ", trafficTag=" + this.zzd + ", extraHttpHeaders=" + this.zze.toString() + ", inlineDownloadParamsOptional=Optional.absent()}";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgn
    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgn
    public final Uri zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgn
    public final zzgl zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgn
    public final zzagb zzd() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgn
    public final zzajm zze() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgn
    public final String zzf() {
        return this.zzb;
    }
}
