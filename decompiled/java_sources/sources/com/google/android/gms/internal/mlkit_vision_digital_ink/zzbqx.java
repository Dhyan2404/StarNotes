package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import okhttp3.OkHttpClient;

/* loaded from: classes5.dex */
final class zzbqx implements zzxt {
    private final zzcbo zza;

    public zzbqx(OkHttpClient okHttpClient) {
        this.zza = new zzcbo(okHttpClient);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzxt
    public final HttpURLConnection zza(String str) throws IOException {
        return this.zza.zzf(new URL(str));
    }
}
