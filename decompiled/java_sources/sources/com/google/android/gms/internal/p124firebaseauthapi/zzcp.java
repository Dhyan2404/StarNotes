package com.google.android.gms.internal.p124firebaseauthapi;

import java.io.IOException;
import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzcp {
    public static zzci zza(byte[] bArr) throws GeneralSecurityException {
        try {
            zzvc zza = zzvc.zza(bArr, zzaiq.zza());
            zzns zza2 = zzns.zza();
            zzot zza3 = zzot.zza(zza);
            if (!zza2.zzc(zza3)) {
                return new zznc(zza3);
            }
            return zza2.zza((zzns) zza3);
        } catch (IOException e) {
            throw new GeneralSecurityException("Failed to parse proto", e);
        }
    }

    public static byte[] zza(zzci zzciVar) throws GeneralSecurityException {
        if (zzciVar instanceof zznc) {
            return ((zznc) zzciVar).zzb().zza().m22248a_();
        }
        return ((zzot) zzns.zza().zza((zzns) zzciVar, zzot.class)).zza().m22248a_();
    }
}
