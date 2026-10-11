package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.exoplayer2.extractor.p007ts.PsExtractor;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

/* loaded from: classes5.dex */
final class zzcbd extends URLStreamHandler {
    final /* synthetic */ String zza;
    final /* synthetic */ zzcbo zzb;

    public zzcbd(zzcbo zzcboVar, String str) {
        this.zzb = zzcboVar;
        this.zza = str;
    }

    @Override // java.net.URLStreamHandler
    public final int getDefaultPort() {
        if (this.zza.equals("http")) {
            return 80;
        }
        if (this.zza.equals("https")) {
            return PsExtractor.f24604m;
        }
        throw new AssertionError();
    }

    @Override // java.net.URLStreamHandler
    public final URLConnection openConnection(URL url) {
        return this.zzb.zzf(url);
    }

    @Override // java.net.URLStreamHandler
    public final URLConnection openConnection(URL url, Proxy proxy) {
        return this.zzb.zzg(url, proxy);
    }
}
