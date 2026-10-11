package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public class zzbuz {
    private static final zzbtr zzb = zzbtr.zza;
    protected volatile zzbvu zza;
    private volatile zzbsz zzc;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbuz)) {
            return false;
        }
        zzbuz zzbuzVar = (zzbuz) obj;
        zzbvu zzbvuVar = this.zza;
        zzbvu zzbvuVar2 = zzbuzVar.zza;
        if (zzbvuVar == null && zzbvuVar2 == null) {
            return zzb().equals(zzbuzVar.zzb());
        }
        if (zzbvuVar != null && zzbvuVar2 != null) {
            return zzbvuVar.equals(zzbvuVar2);
        }
        if (zzbvuVar != null) {
            zzbuzVar.zzd(zzbvuVar.zzak());
            return zzbvuVar.equals(zzbuzVar.zza);
        }
        zzd(zzbvuVar2.zzak());
        return this.zza.equals(zzbvuVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final int zza() {
        if (this.zzc != null) {
            return ((zzbsw) this.zzc).zza.length;
        }
        if (this.zza != null) {
            return this.zza.zzM();
        }
        return 0;
    }

    public final zzbsz zzb() {
        if (this.zzc != null) {
            return this.zzc;
        }
        synchronized (this) {
            if (this.zzc != null) {
                return this.zzc;
            }
            if (this.zza == null) {
                this.zzc = zzbsz.zzb;
            } else {
                this.zzc = this.zza.zzH();
            }
            return this.zzc;
        }
    }

    public final zzbvu zzc(zzbvu zzbvuVar) {
        zzbvu zzbvuVar2 = this.zza;
        this.zzc = null;
        this.zza = zzbvuVar;
        return zzbvuVar2;
    }

    public final void zzd(zzbvu zzbvuVar) {
        if (this.zza != null) {
            return;
        }
        synchronized (this) {
            if (this.zza == null) {
                try {
                    this.zza = zzbvuVar;
                    this.zzc = zzbsz.zzb;
                } catch (zzbut unused) {
                    this.zza = zzbvuVar;
                    this.zzc = zzbsz.zzb;
                }
            }
        }
    }
}
