package com.dropbox.core.http;

import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.http.OkHttpUtil;
import com.dropbox.core.util.IOUtil;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;

/* loaded from: classes4.dex */
public class OkHttp3Requestor extends HttpRequestor {

    /* renamed from: a */
    public final OkHttpClient f16530a;

    /* loaded from: classes4.dex */
    public static final class AsyncCallback implements Callback {

        /* renamed from: e */
        public C2268c f16531e;

        /* renamed from: f */
        public IOException f16532f;

        /* renamed from: g */
        public Response f16533g;

        public synchronized Response getResponse() throws IOException {
            IOException iOException;
            while (true) {
                iOException = this.f16532f;
                if (iOException != null || this.f16533g != null) {
                    break;
                }
                try {
                    wait();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new InterruptedIOException();
                }
            }
            if (iOException != null) {
                throw iOException;
            }
            return this.f16533g;
        }

        @Override // okhttp3.Callback
        public synchronized void onFailure(Call call, IOException iOException) {
            this.f16532f = iOException;
            this.f16531e.close();
            notifyAll();
        }

        @Override // okhttp3.Callback
        public synchronized void onResponse(Call call, Response response) throws IOException {
            this.f16533g = response;
            notifyAll();
        }

        public AsyncCallback(C2268c c2268c) {
            this.f16531e = c2268c;
            this.f16532f = null;
            this.f16533g = null;
        }
    }

    /* renamed from: com.dropbox.core.http.OkHttp3Requestor$b */
    /* loaded from: classes4.dex */
    public class C2267b extends HttpRequestor.Uploader {

        /* renamed from: a */
        public final String f16534a;

        /* renamed from: b */
        public final Request.Builder f16535b;

        /* renamed from: c */
        public RequestBody f16536c = null;

        /* renamed from: d */
        public Call f16537d = null;

        /* renamed from: e */
        public AsyncCallback f16538e = null;

        /* renamed from: f */
        public boolean f16539f = false;

        /* renamed from: g */
        public boolean f16540g = false;

        public C2267b(String str, Request.Builder builder) {
            this.f16534a = str;
            this.f16535b = builder;
        }

        /* renamed from: a */
        public final void m10035a() {
            if (this.f16536c != null) {
                throw new IllegalStateException("Request body already set.");
            }
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void abort() {
            Call call = this.f16537d;
            if (call != null) {
                call.cancel();
            }
            this.f16540g = true;
            close();
        }

        /* renamed from: b */
        public final void m10036b(RequestBody requestBody) {
            m10035a();
            this.f16536c = requestBody;
            this.f16535b.method(this.f16534a, requestBody);
            OkHttp3Requestor.this.configureRequest(this.f16535b);
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void close() {
            Object obj = this.f16536c;
            if (obj != null && (obj instanceof Closeable)) {
                try {
                    ((Closeable) obj).close();
                } catch (IOException unused) {
                }
            }
            this.f16539f = true;
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public HttpRequestor.Response finish() throws IOException {
            Response response;
            if (this.f16540g) {
                throw new IllegalStateException("Already aborted");
            }
            if (this.f16536c == null) {
                upload(new byte[0]);
            }
            if (this.f16538e != null) {
                try {
                    getBody().close();
                } catch (IOException unused) {
                }
                response = this.f16538e.getResponse();
            } else {
                Call newCall = OkHttp3Requestor.this.f16530a.newCall(this.f16535b.build());
                this.f16537d = newCall;
                response = newCall.execute();
            }
            Response interceptResponse = OkHttp3Requestor.this.interceptResponse(response);
            return new HttpRequestor.Response(interceptResponse.code(), interceptResponse.body().byteStream(), OkHttp3Requestor.m10032c(interceptResponse.headers()));
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public OutputStream getBody() {
            RequestBody requestBody = this.f16536c;
            if (requestBody instanceof C2268c) {
                return ((C2268c) requestBody).m10038j();
            }
            C2268c c2268c = new C2268c();
            IOUtil.ProgressListener progressListener = this.progressListener;
            if (progressListener != null) {
                c2268c.m10039w(progressListener);
            }
            m10036b(c2268c);
            this.f16538e = new AsyncCallback(c2268c);
            Call newCall = OkHttp3Requestor.this.f16530a.newCall(this.f16535b.build());
            this.f16537d = newCall;
            newCall.enqueue(this.f16538e);
            return c2268c.m10038j();
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void upload(File file) {
            m10036b(RequestBody.create((MediaType) null, file));
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void upload(byte[] bArr) {
            m10036b(RequestBody.create((MediaType) null, bArr));
        }
    }

    /* renamed from: com.dropbox.core.http.OkHttp3Requestor$c */
    /* loaded from: classes4.dex */
    public static class C2268c extends RequestBody implements Closeable {

        /* renamed from: e */
        public final OkHttpUtil.PipedStream f16542e = new OkHttpUtil.PipedStream();

        /* renamed from: f */
        public IOUtil.ProgressListener f16543f;

        /* renamed from: com.dropbox.core.http.OkHttp3Requestor$c$a */
        /* loaded from: classes4.dex */
        public final class a extends ForwardingSink {

            /* renamed from: e */
            public long f16544e;

            public a(Sink sink) {
                super(sink);
                this.f16544e = 0L;
            }

            @Override // okio.ForwardingSink, okio.Sink
            public void write(Buffer buffer, long j) throws IOException {
                super.write(buffer, j);
                this.f16544e += j;
                if (C2268c.this.f16543f != null) {
                    C2268c.this.f16543f.onProgress(this.f16544e);
                }
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f16542e.close();
        }

        @Override // okhttp3.RequestBody
        public long contentLength() {
            return -1L;
        }

        @Override // okhttp3.RequestBody
        /* renamed from: contentType */
        public MediaType getContentType() {
            return null;
        }

        /* renamed from: j */
        public OutputStream m10038j() {
            return this.f16542e.getOutputStream();
        }

        /* renamed from: w */
        public void m10039w(IOUtil.ProgressListener progressListener) {
            this.f16543f = progressListener;
        }

        @Override // okhttp3.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            BufferedSink buffer = Okio.buffer(new a(bufferedSink));
            this.f16542e.writeTo(buffer);
            buffer.flush();
            close();
        }
    }

    public OkHttp3Requestor(OkHttpClient okHttpClient) {
        if (okHttpClient == null) {
            throw new NullPointerException(Constant.CLIENT);
        }
        OkHttpUtil.m10050a(okHttpClient.dispatcher().executorService());
        this.f16530a = okHttpClient;
    }

    /* renamed from: c */
    public static Map<String, List<String>> m10032c(Headers headers) {
        HashMap hashMap = new HashMap(headers.size());
        for (String str : headers.names()) {
            hashMap.put(str, headers.values(str));
        }
        return hashMap;
    }

    public static OkHttpClient defaultOkHttpClient() {
        return defaultOkHttpClientBuilder().build();
    }

    public static OkHttpClient.Builder defaultOkHttpClientBuilder() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        long j = HttpRequestor.DEFAULT_CONNECT_TIMEOUT_MILLIS;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        OkHttpClient.Builder connectTimeout = builder.connectTimeout(j, timeUnit);
        long j2 = HttpRequestor.DEFAULT_READ_TIMEOUT_MILLIS;
        return connectTimeout.readTimeout(j2, timeUnit).writeTimeout(j2, timeUnit).sslSocketFactory(SSLConfig.getSSLSocketFactory(), SSLConfig.getTrustManager());
    }

    /* renamed from: e */
    public static void m10033e(Iterable<HttpRequestor.Header> iterable, Request.Builder builder) {
        for (HttpRequestor.Header header : iterable) {
            builder.addHeader(header.getKey(), header.getValue());
        }
    }

    public void configureRequest(Request.Builder builder) {
    }

    /* renamed from: d */
    public final C2267b m10034d(String str, Iterable<HttpRequestor.Header> iterable, String str2) {
        Request.Builder url = new Request.Builder().url(str);
        m10033e(iterable, url);
        return new C2267b(str2, url);
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Response doGet(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        Request.Builder url = new Request.Builder().get().url(str);
        m10033e(iterable, url);
        configureRequest(url);
        Response interceptResponse = interceptResponse(this.f16530a.newCall(url.build()).execute());
        return new HttpRequestor.Response(interceptResponse.code(), interceptResponse.body().byteStream(), m10032c(interceptResponse.headers()));
    }

    public OkHttpClient getClient() {
        return this.f16530a;
    }

    public Response interceptResponse(Response response) {
        return response;
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Uploader startPost(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        return m10034d(str, iterable, "POST");
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Uploader startPut(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        return m10034d(str, iterable, "PUT");
    }
}
