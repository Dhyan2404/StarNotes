package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Set;

/* loaded from: classes5.dex */
public final class zzbib extends zzbhy {
    private final zzbkd zza = new zzbkd(false);

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof zzbib) && ((zzbib) obj).zza.equals(this.zza);
        }
        return true;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final Set zza() {
        return this.zza.entrySet();
    }

    public final void zzb(String str, zzbhy zzbhyVar) {
        this.zza.put(str, zzbhyVar);
    }
}
