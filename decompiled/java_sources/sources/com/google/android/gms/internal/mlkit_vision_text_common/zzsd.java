package com.google.android.gms.internal.mlkit_vision_text_common;

import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;

/* loaded from: classes5.dex */
public final class zzsd {
    private final zzsb zza;
    private final Boolean zzb;
    private final String zzc;

    public /* synthetic */ zzsd(zzsa zzsaVar, zzsc zzscVar) {
        zzsb zzsbVar;
        zzsbVar = zzsaVar.zza;
        this.zza = zzsbVar;
        this.zzb = null;
        this.zzc = null;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof zzsd) && Objects.equal(this.zza, ((zzsd) obj).zza) && Objects.equal(null, null) && Objects.equal(null, null);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, null, null);
    }

    @Nullable
    @zzcx(zza = 3)
    public final zzsb zza() {
        return this.zza;
    }
}
