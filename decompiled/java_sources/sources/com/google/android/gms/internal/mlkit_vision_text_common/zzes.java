package com.google.android.gms.internal.mlkit_vision_text_common;

import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;

/* loaded from: classes5.dex */
public final class zzes {
    private final zzou zza;
    private final Boolean zzb;
    private final Boolean zzc;
    private final zzod zzd;
    private final zzsd zze;

    public /* synthetic */ zzes(zzeq zzeqVar, zzer zzerVar) {
        zzou zzouVar;
        Boolean bool;
        zzsd zzsdVar;
        zzouVar = zzeqVar.zza;
        this.zza = zzouVar;
        this.zzb = null;
        bool = zzeqVar.zzb;
        this.zzc = bool;
        this.zzd = null;
        zzsdVar = zzeqVar.zzc;
        this.zze = zzsdVar;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzes)) {
            return false;
        }
        zzes zzesVar = (zzes) obj;
        return Objects.equal(this.zza, zzesVar.zza) && Objects.equal(null, null) && Objects.equal(this.zzc, zzesVar.zzc) && Objects.equal(null, null) && Objects.equal(this.zze, zzesVar.zze);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, null, this.zzc, null, this.zze);
    }

    @Nullable
    @zzcx(zza = 1)
    public final zzou zza() {
        return this.zza;
    }

    @Nullable
    @zzcx(zza = 5)
    public final zzsd zzb() {
        return this.zze;
    }

    @Nullable
    @zzcx(zza = 3)
    public final Boolean zzc() {
        return this.zzc;
    }
}
