package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
import javax.crypto.Cipher;

/* loaded from: classes5.dex */
final class zzhc extends ThreadLocal<Cipher> {
    @Nullable
    private static Cipher zza() {
        boolean zzb;
        try {
            Cipher zza = zzwv.zza.zza("ChaCha20-Poly1305");
            zzb = zzhd.zzb(zza);
            if (zzb) {
                return zza;
            }
            return null;
        } catch (GeneralSecurityException unused) {
            return null;
        }
    }

    @Override // java.lang.ThreadLocal
    @Nullable
    public final /* synthetic */ Cipher initialValue() {
        return zza();
    }
}
