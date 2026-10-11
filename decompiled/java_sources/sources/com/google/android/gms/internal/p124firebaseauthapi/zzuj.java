package com.google.android.gms.internal.p124firebaseauthapi;

/* loaded from: classes5.dex */
public enum zzuj implements zzajg {
    KDF_UNKNOWN(0),
    HKDF_SHA256(1),
    HKDF_SHA384(2),
    HKDF_SHA512(3),
    UNRECOGNIZED(-1);

    private static final zzajj<zzuj> zzf = new zzajj<zzuj>() { // from class: com.google.android.gms.internal.firebase-auth-api.zzum
    };
    private final int zzh;

    zzuj(int i) {
        this.zzh = i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append(zzuj.class.getName());
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(zza());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzajg
    public final int zza() {
        if (this != UNRECOGNIZED) {
            return this.zzh;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public static zzuj zza(int i) {
        if (i == 0) {
            return KDF_UNKNOWN;
        }
        if (i == 1) {
            return HKDF_SHA256;
        }
        if (i == 2) {
            return HKDF_SHA384;
        }
        if (i != 3) {
            return null;
        }
        return HKDF_SHA512;
    }
}
