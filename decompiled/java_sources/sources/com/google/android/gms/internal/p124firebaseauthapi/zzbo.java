package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzvg;
import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzbo {
    public static final byte[] zza = new byte[0];

    public static byte[] zza(zzvg.zza zzaVar) throws GeneralSecurityException {
        int i = zzbn.zza[zzaVar.zzf().ordinal()];
        if (i == 1 || i == 2) {
            return zznt.zza(zzaVar.zza()).zzb();
        }
        if (i == 3) {
            return zznt.zzb(zzaVar.zza()).zzb();
        }
        if (i == 4) {
            return zza;
        }
        throw new GeneralSecurityException("unknown output prefix type");
    }
}
