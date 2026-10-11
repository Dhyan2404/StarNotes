package com.google.android.gms.internal.mlkit_vision_text_common;

import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;

/* loaded from: classes5.dex */
public final class zzod {
    private final zzob zza;
    private final Integer zzb;
    private final Integer zzc;
    private final Boolean zzd;

    public /* synthetic */ zzod(zzoa zzoaVar, zzoc zzocVar) {
        zzob zzobVar;
        Integer num;
        zzobVar = zzoaVar.zza;
        this.zza = zzobVar;
        num = zzoaVar.zzb;
        this.zzb = num;
        this.zzc = null;
        this.zzd = null;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzod)) {
            return false;
        }
        zzod zzodVar = (zzod) obj;
        return Objects.equal(this.zza, zzodVar.zza) && Objects.equal(this.zzb, zzodVar.zzb) && Objects.equal(null, null) && Objects.equal(null, null);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, null, null);
    }

    @Nullable
    @zzcx(zza = 1)
    public final zzob zza() {
        return this.zza;
    }

    @Nullable
    @zzcx(zza = 2)
    public final Integer zzb() {
        return this.zzb;
    }
}
