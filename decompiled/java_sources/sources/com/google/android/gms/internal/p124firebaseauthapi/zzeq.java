package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.material.motion.MotionUtils;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class zzeq extends zzcw {
    private final zza zza;

    /* loaded from: classes5.dex */
    public static final class zza {
        public static final zza zza = new zza("TINK");
        public static final zza zzb = new zza("CRUNCHY");
        public static final zza zzc = new zza("NO_PREFIX");
        private final String zzd;

        private zza(String str) {
            this.zzd = str;
        }

        public final String toString() {
            return this.zzd;
        }
    }

    private zzeq(zza zzaVar) {
        this.zza = zzaVar;
    }

    public static zzeq zza(zza zzaVar) {
        return new zzeq(zzaVar);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzeq) && ((zzeq) obj).zza == this.zza;
    }

    public final int hashCode() {
        return Objects.hash(zzeq.class, this.zza);
    }

    public final String toString() {
        return "ChaCha20Poly1305 Parameters (variant: " + String.valueOf(this.zza) + MotionUtils.f31762d;
    }

    public final zza zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzci
    public final boolean zza() {
        return this.zza != zza.zzc;
    }
}
