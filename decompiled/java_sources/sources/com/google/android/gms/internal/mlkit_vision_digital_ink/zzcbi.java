package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Handshake;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzcbi extends zzcbf {
    private final zzcbh zza;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzcbi(java.net.URL r2, okhttp3.OkHttpClient r3) {
        /*
            r1 = this;
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzcbh r0 = new com.google.android.gms.internal.mlkit_vision_digital_ink.zzcbh
            r0.<init>(r2, r3)
            r1.<init>(r0)
            r1.zza = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzcbi.<init>(java.net.URL, okhttp3.OkHttpClient):void");
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final HostnameVerifier getHostnameVerifier() {
        return this.zza.zza.hostnameVerifier();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final SSLSocketFactory getSSLSocketFactory() {
        return this.zza.zza.sslSocketFactory();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        zzcbh zzcbhVar = this.zza;
        zzcbhVar.zza = zzcbhVar.zza.newBuilder().hostnameVerifier(hostnameVerifier).build();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public final void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        if (sSLSocketFactory == null) {
            throw new IllegalArgumentException("sslSocketFactory == null");
        }
        zzcbh zzcbhVar = this.zza;
        zzcbhVar.zza = zzcbhVar.zza.newBuilder().sslSocketFactory(sSLSocketFactory).build();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzcbf
    public final Handshake zza() {
        zzcbh zzcbhVar = this.zza;
        if (zzcbhVar.zzf != null) {
            return zzcbhVar.zzk;
        }
        throw new IllegalStateException("Connection has not yet been established");
    }
}
