package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;

/* loaded from: classes5.dex */
final class zzaan extends zzaay {
    private final Uri zza;
    private final zzbvu zzb;
    private final zzaao zzc;
    private final zzajm zzd;
    private final zzaca zze;
    private final boolean zzf;

    public /* synthetic */ zzaan(Uri uri, zzbvu zzbvuVar, zzaao zzaaoVar, zzajm zzajmVar, zzaca zzacaVar, boolean z, boolean z2, zzaam zzaamVar) {
        this.zza = uri;
        this.zzb = zzbvuVar;
        this.zzc = zzaaoVar;
        this.zzd = zzajmVar;
        this.zze = zzacaVar;
        this.zzf = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzaay) {
            zzaay zzaayVar = (zzaay) obj;
            if (this.zza.equals(zzaayVar.zza()) && this.zzb.equals(zzaayVar.zze()) && this.zzc.equals(zzaayVar.zzb()) && this.zzd.equals(zzaayVar.zzd()) && this.zze.equals(zzaayVar.zzc()) && this.zzf == zzaayVar.zzg()) {
                zzaayVar.zzf();
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((true != this.zzf ? 1237 : 1231) ^ ((((((((((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb.hashCode()) * 1000003) ^ this.zzc.hashCode()) * 1000003) ^ this.zzd.hashCode()) * 1000003) ^ this.zze.hashCode()) * 1000003)) * 1000003) ^ 1237;
    }

    public final String toString() {
        return "ProtoDataStoreConfig{uri=" + this.zza.toString() + ", schema=" + this.zzb.toString() + ", handler=" + this.zzc.toString() + ", migrations=" + String.valueOf(this.zzd) + ", variantConfig=" + this.zze.toString() + ", useGeneratedExtensionRegistry=" + this.zzf + ", enableTracing=false}";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaay
    public final Uri zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaay
    public final zzaao zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaay
    public final zzaca zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaay
    public final zzajm zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaay
    public final zzbvu zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaay
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaay
    public final boolean zzg() {
        return this.zzf;
    }
}
