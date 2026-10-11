package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketPermission;
import java.net.URL;
import java.security.Permission;
import java.text.DateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Dispatcher;
import okhttp3.Handshake;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzcbh extends HttpURLConnection implements Callback {
    OkHttpClient zza;
    final zzcbg zzb;
    final Headers.Builder zzc;
    Headers zzd;
    boolean zze;
    Call zzf;
    long zzg;
    Response zzh;
    boolean zzi;
    Proxy zzj;
    Handshake zzk;
    private final Object zzl;
    private Response zzm;
    private Throwable zzn;

    public zzcbh(URL url, OkHttpClient okHttpClient) {
        super(url);
        this.zzb = new zzcbg(this);
        this.zzc = new Headers.Builder();
        this.zzg = -1L;
        this.zzl = new Object();
        this.zzi = true;
        this.zza = okHttpClient;
    }

    public static /* synthetic */ URL zzb(zzcbh zzcbhVar, URL url) {
        ((HttpURLConnection) zzcbhVar).url = url;
        return url;
    }

    private final Call zzd() throws IOException {
        zzcbk zzcbkVar;
        Call call = this.zzf;
        if (call != null) {
            return call;
        }
        boolean z = true;
        ((HttpURLConnection) this).connected = true;
        if (((HttpURLConnection) this).doOutput) {
            if (((HttpURLConnection) this).method.equals("GET")) {
                ((HttpURLConnection) this).method = "POST";
            } else if (!zzcbo.zzj(((HttpURLConnection) this).method)) {
                throw new ProtocolException(String.valueOf(((HttpURLConnection) this).method).concat(" does not support writing"));
            }
        }
        if (this.zzc.get("User-Agent") == null) {
            Headers.Builder builder = this.zzc;
            String zzb = zzcbo.zzb("http.agent", null);
            builder.add("User-Agent", zzb != null ? zzcbo.zze(zzb) : "ObsoleteUrlFactory");
        }
        if (zzcbo.zzj(((HttpURLConnection) this).method)) {
            if (this.zzc.get("Content-Type") == null) {
                this.zzc.add("Content-Type", "application/x-www-form-urlencoded");
            }
            long j = -1;
            if (this.zzg == -1 && ((HttpURLConnection) this).chunkLength <= 0) {
                z = false;
            }
            String str = this.zzc.get("Content-Length");
            long j2 = this.zzg;
            if (j2 != -1) {
                j = j2;
            } else if (str != null) {
                j = Long.parseLong(str);
            }
            zzcbkVar = z ? new zzcbl(j) : new zzcbe(j);
            zzcbkVar.zzc.timeout(this.zza.writeTimeoutMillis(), TimeUnit.MILLISECONDS);
        } else {
            zzcbkVar = null;
        }
        try {
            Request build = new Request.Builder().url(HttpUrl.get(getURL().toString())).headers(this.zzc.build()).method(((HttpURLConnection) this).method, zzcbkVar).build();
            OkHttpClient.Builder newBuilder = this.zza.newBuilder();
            newBuilder.interceptors().clear();
            newBuilder.interceptors().add(zzcbn.zza);
            newBuilder.networkInterceptors().clear();
            newBuilder.networkInterceptors().add(this.zzb);
            newBuilder.dispatcher(new Dispatcher(this.zza.dispatcher().executorService()));
            if (!getUseCaches()) {
                newBuilder.cache(null);
            }
            Call newCall = newBuilder.build().newCall(build);
            this.zzf = newCall;
            return newCall;
        } catch (IllegalArgumentException e) {
            MalformedURLException malformedURLException = new MalformedURLException();
            malformedURLException.initCause(e);
            throw malformedURLException;
        }
    }

    private final Response zze(boolean z) throws IOException {
        Response response;
        synchronized (this.zzl) {
            Response response2 = this.zzm;
            if (response2 != null) {
                return response2;
            }
            Throwable th = this.zzn;
            if (th != null) {
                if (!z || (response = this.zzh) == null) {
                    throw zzcbo.zza(th);
                }
                return response;
            }
            Call zzd = zzd();
            this.zzb.zza();
            zzcbk zzcbkVar = (zzcbk) zzd.request().body();
            if (zzcbkVar != null) {
                zzcbkVar.zze.close();
            }
            if (this.zze) {
                synchronized (this.zzl) {
                    while (this.zzm == null && this.zzn == null) {
                        try {
                            try {
                                this.zzl.wait();
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                                throw new InterruptedIOException();
                            }
                        } finally {
                        }
                    }
                }
            } else {
                this.zze = true;
                try {
                    onResponse(zzd, zzd.execute());
                } catch (IOException e) {
                    onFailure(zzd, e);
                }
            }
            synchronized (this.zzl) {
                Throwable th2 = this.zzn;
                if (th2 != null) {
                    throw zzcbo.zza(th2);
                }
                Response response3 = this.zzm;
                if (response3 != null) {
                    return response3;
                }
                throw new AssertionError();
            }
        }
    }

    @Override // java.net.URLConnection
    public final void addRequestProperty(String str, String str2) {
        if (((HttpURLConnection) this).connected) {
            throw new IllegalStateException("Cannot add request property after connection is made");
        }
        if (str == null) {
            throw new NullPointerException("field == null");
        }
        if (str2 == null) {
            return;
        }
        this.zzc.add(str, str2);
    }

    @Override // java.net.URLConnection
    public final void connect() throws IOException {
        if (this.zze) {
            return;
        }
        Call zzd = zzd();
        this.zze = true;
        zzd.enqueue(this);
        synchronized (this.zzl) {
            while (this.zzi && this.zzm == null && this.zzn == null) {
                try {
                    this.zzl.wait();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new InterruptedIOException();
                }
            }
            Throwable th = this.zzn;
            if (th != null) {
                throw zzcbo.zza(th);
            }
        }
    }

    @Override // java.net.HttpURLConnection
    public final void disconnect() {
        if (this.zzf == null) {
            return;
        }
        this.zzb.zza();
        this.zzf.cancel();
    }

    @Override // java.net.URLConnection
    public final int getConnectTimeout() {
        return this.zza.connectTimeoutMillis();
    }

    @Override // java.net.HttpURLConnection
    public final InputStream getErrorStream() {
        try {
            Response zze = zze(true);
            if (zzcbo.zzi(zze) && zze.code() >= 400) {
                return zze.body().byteStream();
            }
        } catch (IOException unused) {
        }
        return null;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final String getHeaderField(int i) {
        try {
            Headers zzc = zzc();
            if (i >= 0 && i < zzc.size()) {
                return zzc.value(i);
            }
        } catch (IOException unused) {
        }
        return null;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final String getHeaderFieldKey(int i) {
        try {
            Headers zzc = zzc();
            if (i >= 0 && i < zzc.size()) {
                return zzc.name(i);
            }
        } catch (IOException unused) {
        }
        return null;
    }

    @Override // java.net.URLConnection
    public final Map getHeaderFields() {
        try {
            return zzcbo.zzh(zzc(), zzcbo.zzd(zze(true)));
        } catch (IOException unused) {
            return Collections.emptyMap();
        }
    }

    @Override // java.net.URLConnection
    public final InputStream getInputStream() throws IOException {
        if (!((HttpURLConnection) this).doInput) {
            throw new ProtocolException("This protocol does not support input");
        }
        Response zze = zze(false);
        if (zze.code() < 400) {
            return zze.body().byteStream();
        }
        throw new FileNotFoundException(((HttpURLConnection) this).url.toString());
    }

    @Override // java.net.HttpURLConnection
    public final boolean getInstanceFollowRedirects() {
        return this.zza.followRedirects();
    }

    @Override // java.net.URLConnection
    public final OutputStream getOutputStream() throws IOException {
        zzcbk zzcbkVar = (zzcbk) zzd().request().body();
        if (zzcbkVar == null) {
            throw new ProtocolException("method does not support a request body: ".concat(String.valueOf(((HttpURLConnection) this).method)));
        }
        if (zzcbkVar instanceof zzcbl) {
            connect();
            this.zzb.zza();
        }
        if (zzcbkVar.zzf) {
            throw new ProtocolException("cannot write request body after response has been read");
        }
        return zzcbkVar.zze;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final Permission getPermission() {
        URL url = getURL();
        String host = url.getHost();
        int port = url.getPort() != -1 ? url.getPort() : HttpUrl.defaultPort(url.getProtocol());
        if (usingProxy()) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) this.zza.proxy().address();
            host = inetSocketAddress.getHostName();
            port = inetSocketAddress.getPort();
        }
        return new SocketPermission(host + ":" + port, "connect, resolve");
    }

    @Override // java.net.URLConnection
    public final int getReadTimeout() {
        return this.zza.readTimeoutMillis();
    }

    @Override // java.net.URLConnection
    public final Map getRequestProperties() {
        if (((HttpURLConnection) this).connected) {
            throw new IllegalStateException("Cannot access request header fields after connection is set");
        }
        return zzcbo.zzh(this.zzc.build(), null);
    }

    @Override // java.net.URLConnection
    public final String getRequestProperty(String str) {
        if (str == null) {
            return null;
        }
        return this.zzc.get(str);
    }

    @Override // java.net.HttpURLConnection
    public final int getResponseCode() throws IOException {
        return zze(true).code();
    }

    @Override // java.net.HttpURLConnection
    public final String getResponseMessage() throws IOException {
        return zze(true).message();
    }

    @Override // okhttp3.Callback
    public final void onFailure(Call call, IOException iOException) {
        synchronized (this.zzl) {
            boolean z = iOException instanceof zzcbn;
            Throwable th = iOException;
            if (z) {
                th = iOException.getCause();
            }
            this.zzn = th;
            this.zzl.notifyAll();
        }
    }

    @Override // okhttp3.Callback
    public final void onResponse(Call call, Response response) {
        synchronized (this.zzl) {
            this.zzm = response;
            this.zzk = response.handshake();
            ((HttpURLConnection) this).url = response.request().url().url();
            this.zzl.notifyAll();
        }
    }

    @Override // java.net.URLConnection
    public final void setConnectTimeout(int i) {
        this.zza = this.zza.newBuilder().connectTimeout(i, TimeUnit.MILLISECONDS).build();
    }

    @Override // java.net.HttpURLConnection
    public final void setFixedLengthStreamingMode(int i) {
        setFixedLengthStreamingMode(i);
    }

    @Override // java.net.URLConnection
    public final void setIfModifiedSince(long j) {
        super.setIfModifiedSince(j);
        if (((HttpURLConnection) this).ifModifiedSince == 0) {
            this.zzc.removeAll("If-Modified-Since");
            return;
        }
        this.zzc.set("If-Modified-Since", ((DateFormat) zzcbo.zzc.get()).format(new Date(((HttpURLConnection) this).ifModifiedSince)));
    }

    @Override // java.net.HttpURLConnection
    public final void setInstanceFollowRedirects(boolean z) {
        this.zza = this.zza.newBuilder().followRedirects(z).build();
    }

    @Override // java.net.URLConnection
    public final void setReadTimeout(int i) {
        this.zza = this.zza.newBuilder().readTimeout(i, TimeUnit.MILLISECONDS).build();
    }

    @Override // java.net.HttpURLConnection
    public final void setRequestMethod(String str) throws ProtocolException {
        Set set = zzcbo.zza;
        if (set.contains(str)) {
            ((HttpURLConnection) this).method = str;
            return;
        }
        throw new ProtocolException("Expected one of " + String.valueOf(set) + " but was " + str);
    }

    @Override // java.net.URLConnection
    public final void setRequestProperty(String str, String str2) {
        if (((HttpURLConnection) this).connected) {
            throw new IllegalStateException("Cannot set request property after connection is made");
        }
        if (str == null) {
            throw new NullPointerException("field == null");
        }
        if (str2 == null) {
            return;
        }
        this.zzc.set(str, str2);
    }

    @Override // java.net.HttpURLConnection
    public final boolean usingProxy() {
        if (this.zzj != null) {
            return true;
        }
        Proxy proxy = this.zza.proxy();
        return (proxy == null || proxy.type() == Proxy.Type.DIRECT) ? false : true;
    }

    public final Headers zzc() throws IOException {
        if (this.zzd == null) {
            Response zze = zze(true);
            this.zzd = zze.headers().newBuilder().add("ObsoleteUrlFactory-Selected-Protocol", zze.protocol().getProtocol()).add("ObsoleteUrlFactory-Response-Source", zzcbo.zzc(zze)).build();
        }
        return this.zzd;
    }

    @Override // java.net.HttpURLConnection
    public final void setFixedLengthStreamingMode(long j) {
        if (!((HttpURLConnection) this).connected) {
            if (((HttpURLConnection) this).chunkLength > 0) {
                throw new IllegalStateException("Already in chunked mode");
            }
            if (j >= 0) {
                this.zzg = j;
                ((HttpURLConnection) this).fixedContentLength = (int) Math.min(j, 2147483647L);
                return;
            }
            throw new IllegalArgumentException("contentLength < 0");
        }
        throw new IllegalStateException("Already connected");
    }

    @Override // java.net.URLConnection
    public final String getHeaderField(String str) {
        String str2;
        try {
            if (str == null) {
                str2 = zzcbo.zzd(zze(true));
            } else {
                str2 = zzc().get(str);
            }
            return str2;
        } catch (IOException unused) {
            return null;
        }
    }
}
