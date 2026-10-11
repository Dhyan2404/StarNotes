package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzoy extends zzmo {
    private static final zzoy zza = new zzoy();

    private zzoy() {
    }

    public static zzoy zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzmo
    @Nullable
    public final Class<?> zza(Class<?> cls) {
        return zzco.zza(cls);
    }

    public static <P> P zza(zzuw zzuwVar, Class<P> cls) throws GeneralSecurityException {
        return (P) zzco.zza(zzuwVar, cls);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzmo
    public final <P> P zza(zzbu zzbuVar, Class<P> cls) throws GeneralSecurityException {
        return (P) zznp.zza().zza((zznp) zzbuVar, (Class) cls);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzmo
    public final <B, P> P zza(zzoo<B> zzooVar, Class<P> cls) throws GeneralSecurityException {
        return (P) zzco.zza(zzooVar, cls);
    }
}
