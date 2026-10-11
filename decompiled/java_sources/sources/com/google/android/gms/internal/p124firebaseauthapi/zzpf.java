package com.google.android.gms.internal.p124firebaseauthapi;

/* loaded from: classes5.dex */
public final class zzpf extends RuntimeException {
    public zzpf(String str) {
        super(str);
    }

    public static <T> T zza(zzpi<T> zzpiVar) {
        try {
            return zzpiVar.zza();
        } catch (Exception e) {
            throw new zzpf(e);
        }
    }

    private zzpf(Throwable th) {
        super(th);
    }
}
