package com.google.android.gms.internal.p124firebaseauthapi;

/* loaded from: classes5.dex */
public final class zzxw {
    private final zzxv zza;

    private zzxw(zzxv zzxvVar) {
        this.zza = zzxvVar;
    }

    public final int zza() {
        return this.zza.zza();
    }

    public static zzxw zza(byte[] bArr, zzcn zzcnVar) {
        if (zzcnVar != null) {
            return new zzxw(zzxv.zza(bArr));
        }
        throw new NullPointerException("SecretKeyAccess required");
    }

    public static zzxw zza(int i) {
        return new zzxw(zzxv.zza(zzow.zza(i)));
    }

    public final byte[] zza(zzcn zzcnVar) {
        if (zzcnVar != null) {
            return this.zza.zzb();
        }
        throw new NullPointerException("SecretKeyAccess required");
    }
}
