package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;

/* loaded from: classes5.dex */
final class zzgg extends zzgm {
    private Uri zza;
    private String zzb;
    private zzgl zzc;
    private int zzd;
    private zzajm zze;
    private final zzagb zzf = zzagb.zzd();
    private byte zzg;

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgm
    public final zzgm zza(zzgl zzglVar) {
        if (zzglVar == null) {
            throw new NullPointerException("Null downloadConstraints");
        }
        this.zzc = zzglVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgm
    public final zzgm zzb(zzajm zzajmVar) {
        if (zzajmVar == null) {
            throw new NullPointerException("Null extraHttpHeaders");
        }
        this.zze = zzajmVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgm
    public final zzgm zzc(Uri uri) {
        if (uri == null) {
            throw new NullPointerException("Null fileUri");
        }
        this.zza = uri;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgm
    public final zzgm zzd(int i) {
        this.zzd = i;
        this.zzg = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgm
    public final zzgm zze(String str) {
        if (str == null) {
            throw new NullPointerException("Null urlToDownload");
        }
        this.zzb = str;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgm
    public final zzgn zzf() {
        Uri uri;
        String str;
        zzgl zzglVar;
        zzajm zzajmVar;
        if (this.zzg == 1 && (uri = this.zza) != null && (str = this.zzb) != null && (zzglVar = this.zzc) != null && (zzajmVar = this.zze) != null) {
            return new zzgi(uri, str, zzglVar, this.zzd, zzajmVar, this.zzf, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" fileUri");
        }
        if (this.zzb == null) {
            sb.append(" urlToDownload");
        }
        if (this.zzc == null) {
            sb.append(" downloadConstraints");
        }
        if (this.zzg == 0) {
            sb.append(" trafficTag");
        }
        if (this.zze == null) {
            sb.append(" extraHttpHeaders");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzgm
    public final String zzg() {
        String str = this.zzb;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException("Property \"urlToDownload\" has not been set");
    }
}
