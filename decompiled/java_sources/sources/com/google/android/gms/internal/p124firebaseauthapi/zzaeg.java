package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
final class zzaeg extends zzafx {

    @Nullable
    private final String zza;

    @Nullable
    private final String zzb;

    public zzaeg(@Nullable String str, @Nullable String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzafx) {
            zzafx zzafxVar = (zzafx) obj;
            String str = this.zza;
            if (str != null ? str.equals(zzafxVar.zzb()) : zzafxVar.zzb() == null) {
                String str2 = this.zzb;
                if (str2 != null ? str2.equals(zzafxVar.zza()) : zzafxVar.zza() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.zza;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.zzb;
        return hashCode ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "RecaptchaEnforcementState{provider=" + this.zza + ", enforcementState=" + this.zzb + "}";
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzafx
    @Nullable
    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzafx
    @Nullable
    public final String zzb() {
        return this.zza;
    }
}
