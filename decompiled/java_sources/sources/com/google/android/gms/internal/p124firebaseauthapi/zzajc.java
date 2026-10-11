package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzaje;

/* loaded from: classes5.dex */
final class zzajc implements zzakm {
    private static final zzajc zza = new zzajc();

    private zzajc() {
    }

    public static zzajc zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzakm
    public final boolean zzb(Class<?> cls) {
        return zzaje.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzakm
    public final zzakn zza(Class<?> cls) {
        if (zzaje.class.isAssignableFrom(cls)) {
            try {
                return (zzakn) zzaje.zza(cls.asSubclass(zzaje.class)).zza(zzaje.zzf.zzc, (Object) null, (Object) null);
            } catch (Exception e) {
                throw new RuntimeException("Unable to get message info for " + cls.getName(), e);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
    }
}
