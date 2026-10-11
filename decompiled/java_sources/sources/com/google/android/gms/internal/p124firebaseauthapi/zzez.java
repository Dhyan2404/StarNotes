package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.material.motion.MotionUtils;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class zzez extends zzcw {
    private final String zza;
    private final zza zzb;

    /* loaded from: classes5.dex */
    public static final class zza {
        public static final zza zza = new zza("TINK");
        public static final zza zzb = new zza("NO_PREFIX");
        private final String zzc;

        private zza(String str) {
            this.zzc = str;
        }

        public final String toString() {
            return this.zzc;
        }
    }

    private zzez(String str, zza zzaVar) {
        this.zza = str;
        this.zzb = zzaVar;
    }

    public static zzez zza(String str, zza zzaVar) {
        return new zzez(str, zzaVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzez)) {
            return false;
        }
        zzez zzezVar = (zzez) obj;
        return zzezVar.zza.equals(this.zza) && zzezVar.zzb.equals(this.zzb);
    }

    public final int hashCode() {
        return Objects.hash(zzez.class, this.zza, this.zzb);
    }

    public final String toString() {
        return "LegacyKmsAead Parameters (keyUri: " + this.zza + ", variant: " + String.valueOf(this.zzb) + MotionUtils.f31762d;
    }

    public final zza zzb() {
        return this.zzb;
    }

    public final String zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzci
    public final boolean zza() {
        return this.zzb != zza.zzb;
    }
}
