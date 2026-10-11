package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzou implements zzox {
    private final String zza;
    private final zzxv zzb;
    private final zzaho zzc;
    private final zzuw.zzb zzd;
    private final zzvs zze;

    @Nullable
    private final Integer zzf;

    private zzou(String str, zzxv zzxvVar, zzaho zzahoVar, zzuw.zzb zzbVar, zzvs zzvsVar, @Nullable Integer num) {
        this.zza = str;
        this.zzb = zzxvVar;
        this.zzc = zzahoVar;
        this.zzd = zzbVar;
        this.zze = zzvsVar;
        this.zzf = num;
    }

    public static zzou zza(String str, zzaho zzahoVar, zzuw.zzb zzbVar, zzvs zzvsVar, @Nullable Integer num) throws GeneralSecurityException {
        if (zzvsVar == zzvs.RAW) {
            if (num != null) {
                throw new GeneralSecurityException("Keys with output prefix type raw should not have an id requirement.");
            }
        } else if (num == null) {
            throw new GeneralSecurityException("Keys with output prefix type different from raw should have an id requirement.");
        }
        return new zzou(str, zzph.zza(str), zzahoVar, zzbVar, zzvsVar, num);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzox
    public final zzxv zzb() {
        return this.zzb;
    }

    public final zzvs zzc() {
        return this.zze;
    }

    public final zzaho zzd() {
        return this.zzc;
    }

    @Nullable
    public final Integer zze() {
        return this.zzf;
    }

    public final String zzf() {
        return this.zza;
    }

    public final zzuw.zzb zza() {
        return this.zzd;
    }
}
