package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzbtu {
    private static final zzbts zza = new zzbtt();
    private static final zzbts zzb;

    static {
        zzbts zzbtsVar;
        try {
            zzbtsVar = (zzbts) Class.forName("com.google.protobuf.k").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzbtsVar = null;
        }
        zzb = zzbtsVar;
    }

    public static zzbts zza() {
        zzbts zzbtsVar = zzb;
        if (zzbtsVar != null) {
            return zzbtsVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    public static zzbts zzb() {
        return zza;
    }
}
