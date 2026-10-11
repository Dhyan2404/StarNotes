package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzeq;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzem extends zzcu {
    private final zzeq zza;
    private final zzxw zzb;
    private final zzxv zzc;

    @Nullable
    private final Integer zzd;

    private zzem(zzeq zzeqVar, zzxw zzxwVar, zzxv zzxvVar, @Nullable Integer num) {
        this.zza = zzeqVar;
        this.zzb = zzxwVar;
        this.zzc = zzxvVar;
        this.zzd = num;
    }

    public static zzem zza(zzeq.zza zzaVar, zzxw zzxwVar, @Nullable Integer num) throws GeneralSecurityException {
        zzxv zzb;
        zzeq.zza zzaVar2 = zzeq.zza.zzc;
        if (zzaVar != zzaVar2 && num == null) {
            throw new GeneralSecurityException("For given Variant " + String.valueOf(zzaVar) + " the value of idRequirement must be non-null");
        }
        if (zzaVar == zzaVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (zzxwVar.zza() == 32) {
            zzeq zza = zzeq.zza(zzaVar);
            if (zza.zzb() == zzaVar2) {
                zzb = zznt.zza;
            } else if (zza.zzb() == zzeq.zza.zzb) {
                zzb = zznt.zza(num.intValue());
            } else if (zza.zzb() == zzeq.zza.zza) {
                zzb = zznt.zzb(num.intValue());
            } else {
                throw new IllegalStateException("Unknown Variant: " + String.valueOf(zza.zzb()));
            }
            return new zzem(zza, zzxwVar, zzb, num);
        }
        throw new GeneralSecurityException("ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + zzxwVar.zza());
    }

    public final zzeq zzb() {
        return this.zza;
    }

    public final zzxv zzc() {
        return this.zzc;
    }

    public final zzxw zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbu
    @Nullable
    public final Integer zza() {
        return this.zzd;
    }
}
