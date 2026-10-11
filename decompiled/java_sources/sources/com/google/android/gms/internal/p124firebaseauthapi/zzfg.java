package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzfi;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public class zzfg extends zzcu {
    private final zzfi zza;
    private final zzxv zzb;

    @Nullable
    private final Integer zzc;

    private zzfg(zzfi zzfiVar, zzxv zzxvVar, @Nullable Integer num) {
        this.zza = zzfiVar;
        this.zzb = zzxvVar;
        this.zzc = num;
    }

    public static zzfg zza(zzfi zzfiVar, @Nullable Integer num) throws GeneralSecurityException {
        zzxv zzb;
        if (zzfiVar.zzc() == zzfi.zzc.zzb) {
            if (num == null) {
                zzb = zznt.zza;
            } else {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
        } else {
            if (zzfiVar.zzc() != zzfi.zzc.zza) {
                throw new GeneralSecurityException("Unknown Variant: " + String.valueOf(zzfiVar.zzc()));
            }
            if (num != null) {
                zzb = zznt.zzb(num.intValue());
            } else {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
        }
        return new zzfg(zzfiVar, zzb, num);
    }

    public final zzfi zzb() {
        return this.zza;
    }

    public final zzxv zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbu
    public final Integer zza() {
        return this.zzc;
    }
}
