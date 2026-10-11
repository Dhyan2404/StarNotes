package com.google.android.gms.internal.p124firebaseauthapi;

/* loaded from: classes5.dex */
final /* synthetic */ class zzlt {
    static final /* synthetic */ int[] zza;

    static {
        int[] iArr = new int[zzwq.values().length];
        zza = iArr;
        try {
            iArr[zzwq.NIST_P256.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zza[zzwq.NIST_P384.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zza[zzwq.NIST_P521.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
