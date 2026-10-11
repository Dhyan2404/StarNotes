package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzaal extends zzaax {
    private Uri zza;
    private zzbvu zzb;
    private zzaao zzc;
    private zzaji zzd;
    private zzajm zze;
    private zzaca zzf;
    private boolean zzg;
    private byte zzh;

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaax
    public final zzaax zza(boolean z) {
        this.zzh = (byte) (this.zzh | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaax
    public final zzaax zzb(zzaao zzaaoVar) {
        this.zzc = zzaaoVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaax
    public final zzaax zzc(zzbvu zzbvuVar) {
        if (zzbvuVar == null) {
            throw new NullPointerException("Null schema");
        }
        this.zzb = zzbvuVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaax
    public final zzaax zzd(Uri uri) {
        if (uri == null) {
            throw new NullPointerException("Null uri");
        }
        this.zza = uri;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaax
    public final zzaax zze(boolean z) {
        this.zzg = z;
        this.zzh = (byte) (this.zzh | 1);
        return this;
    }

    public final zzaax zzf(zzaca zzacaVar) {
        this.zzf = zzacaVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaax
    public final zzaay zzg() {
        Uri uri;
        zzbvu zzbvuVar;
        zzaao zzaaoVar;
        zzaca zzacaVar;
        zzaji zzajiVar = this.zzd;
        if (zzajiVar != null) {
            this.zze = zzajiVar.zzh();
        } else if (this.zze == null) {
            this.zze = zzajm.zzq();
        }
        if (this.zzh == 3 && (uri = this.zza) != null && (zzbvuVar = this.zzb) != null && (zzaaoVar = this.zzc) != null && (zzacaVar = this.zzf) != null) {
            return new zzaan(uri, zzbvuVar, zzaaoVar, this.zze, zzacaVar, this.zzg, false, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" uri");
        }
        if (this.zzb == null) {
            sb.append(" schema");
        }
        if (this.zzc == null) {
            sb.append(" handler");
        }
        if (this.zzf == null) {
            sb.append(" variantConfig");
        }
        if ((this.zzh & 1) == 0) {
            sb.append(" useGeneratedExtensionRegistry");
        }
        if ((this.zzh & 2) == 0) {
            sb.append(" enableTracing");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaax
    public final zzaji zzh() {
        if (this.zzd == null) {
            if (this.zze == null) {
                this.zzd = zzajm.zze();
            } else {
                zzaji zze = zzajm.zze();
                this.zzd = zze;
                zze.zzf(this.zze);
                this.zze = null;
            }
        }
        return this.zzd;
    }
}
