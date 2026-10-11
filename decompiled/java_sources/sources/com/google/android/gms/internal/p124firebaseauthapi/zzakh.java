package com.google.android.gms.internal.p124firebaseauthapi;

import java.io.IOException;

/* loaded from: classes5.dex */
public final class zzakh<K, V> {
    public static <K, V> int zza(zzakg<K, V> zzakgVar, K k, V v) {
        return zzaix.zza(zzakgVar.zza, 1, k) + zzaix.zza(zzakgVar.zzc, 2, v);
    }

    public static <K, V> void zza(zzaim zzaimVar, zzakg<K, V> zzakgVar, K k, V v) throws IOException {
        zzaix.zza(zzaimVar, zzakgVar.zza, 1, k);
        zzaix.zza(zzaimVar, zzakgVar.zzc, 2, v);
    }
}
