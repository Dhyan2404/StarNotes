package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.io.InterruptedIOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzcbg implements Interceptor {
    final /* synthetic */ zzcbh zza;
    private boolean zzb;

    public zzcbg(zzcbh zzcbhVar) {
        this.zza = zzcbhVar;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Request request = chain.request();
        obj = this.zza.zzl;
        synchronized (obj) {
            zzcbh zzcbhVar = this.zza;
            zzcbhVar.zzi = false;
            zzcbhVar.zzj = chain.connection().getRoute().proxy();
            this.zza.zzk = chain.connection().getHandshake();
            obj2 = this.zza.zzl;
            obj2.notifyAll();
            while (!this.zzb) {
                try {
                    obj4 = this.zza.zzl;
                    obj4.wait();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new InterruptedIOException();
                }
            }
        }
        if (request.body() instanceof zzcbk) {
            request = ((zzcbk) request.body()).zza(request);
        }
        Response proceed = chain.proceed(request);
        obj3 = this.zza.zzl;
        synchronized (obj3) {
            zzcbh zzcbhVar2 = this.zza;
            zzcbhVar2.zzh = proceed;
            zzcbh.zzb(zzcbhVar2, proceed.request().url().url());
        }
        return proceed;
    }

    public final void zza() {
        Object obj;
        Object obj2;
        obj = this.zza.zzl;
        synchronized (obj) {
            this.zzb = true;
            obj2 = this.zza.zzl;
            obj2.notifyAll();
        }
    }
}
