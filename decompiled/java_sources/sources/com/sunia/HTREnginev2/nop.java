package com.sunia.HTREnginev2;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcy;
import com.google.android.gms.measurement.internal.zzle;
import com.sunia.HTREnginev2.nop;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

@WorkerThread
/* loaded from: classes5.dex */
public final class nop implements Runnable {

    /* renamed from: e */
    public final URL f78870e;

    /* renamed from: f */
    public final mop f78871f;

    /* renamed from: g */
    public final String f78872g;

    /* renamed from: h */
    public final Map<String, String> f78873h;

    /* renamed from: i */
    public final /* synthetic */ zzle f78874i;

    public nop(zzle zzleVar, String str, URL url, byte[] bArr, Map<String, String> map, mop mopVar) {
        this.f78874i = zzleVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(mopVar);
        this.f78870e = url;
        this.f78871f = mopVar;
        this.f78872g = str;
        this.f78873h = null;
    }

    /* renamed from: a */
    public final /* synthetic */ void m55783a(int i, Exception exc, byte[] bArr, Map map) {
        this.f78871f.zza(this.f78872g, i, exc, bArr, map);
    }

    /* renamed from: b */
    public final void m55784b(final int i, final Exception exc, final byte[] bArr, final Map<String, List<String>> map) {
        this.f78874i.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlf
            @Override // java.lang.Runnable
            public final void run() {
                nop.this.m55783a(i, exc, bArr, map);
            }
        });
    }

    @Override // java.lang.Runnable
    public final void run() {
        HttpURLConnection httpURLConnection;
        Map<String, List<String>> map;
        byte[] m22561c;
        this.f78874i.zzr();
        int i = 0;
        try {
            URLConnection zza = zzcy.zza().zza(this.f78870e, "client-measurement");
            if (!(zza instanceof HttpURLConnection)) {
                throw new IOException("Failed to obtain HTTP connection");
            }
            httpURLConnection = (HttpURLConnection) zza;
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setConnectTimeout(60000);
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setDoInput(true);
            try {
                i = httpURLConnection.getResponseCode();
                map = httpURLConnection.getHeaderFields();
                try {
                    zzle zzleVar = this.f78874i;
                    m22561c = zzle.m22561c(httpURLConnection);
                    httpURLConnection.disconnect();
                    m55784b(i, null, m22561c, map);
                } catch (IOException e) {
                    e = e;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    m55784b(i, e, null, map);
                } catch (Throwable th) {
                    th = th;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    m55784b(i, null, null, map);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                map = null;
            } catch (Throwable th2) {
                th = th2;
                map = null;
            }
        } catch (IOException e3) {
            e = e3;
            httpURLConnection = null;
            map = null;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
            map = null;
        }
    }
}
