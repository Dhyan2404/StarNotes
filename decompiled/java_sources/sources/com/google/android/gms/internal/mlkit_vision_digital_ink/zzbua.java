package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzbua implements zzbvs {
    private static final zzbua zza = new zzbua();

    private zzbua() {
    }

    public static zzbua zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvs
    public final zzbvr zzb(Class cls) {
        if (!zzbui.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (zzbvr) zzbui.zzR(cls.asSubclass(zzbui.class)).zzb(3, null, null);
        } catch (Exception e) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvs
    public final boolean zzc(Class cls) {
        return zzbui.class.isAssignableFrom(cls);
    }
}
