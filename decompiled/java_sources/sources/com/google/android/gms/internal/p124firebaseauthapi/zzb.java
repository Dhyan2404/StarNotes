package com.google.android.gms.internal.p124firebaseauthapi;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes5.dex */
public abstract class zzb {
    private static zzb zza = new zze();

    public static synchronized zzb zza() {
        zzb zzbVar;
        synchronized (zzb.class) {
            zzbVar = zza;
        }
        return zzbVar;
    }

    public abstract URLConnection zza(URL url, String str) throws IOException;
}
