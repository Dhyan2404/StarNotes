package com.dropbox.core.http;

import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.http.OkHttpUtil;
import com.dropbox.core.util.IOUtil;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.squareup.okhttp.Call;
import com.squareup.okhttp.Callback;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;

/* loaded from: classes4.dex */
public class OkHttpRequestor extends HttpRequestor {

    /* renamed from: a */
    public final OkHttpClient f16546a;

    /* loaded from: classes4.dex */
    public static final class AsyncCallback implements Callback {

        /* renamed from: a */
        public IOException f16547a;

        /* renamed from: b */
        public Response f16548b;

        public synchronized Response getResponse() throws IOException {
            IOException iOException;
            while (true) {
                iOException = this.f16547a;
                if (iOException != null || this.f16548b != null) {
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
            return this.f16548b;
        }

        @Override // com.squareup.okhttp.Callback
        public synchronized void onFailure(Request request, IOException iOException) {
            this.f16547a = iOException;
            notifyAll();
        }

        @Override // com.squareup.okhttp.Callback
        public synchronized void onResponse(Response response) throws IOException {
            this.f16548b = response;
            notifyAll();
        }

        public AsyncCallback() {
            this.f16547a = null;
            this.f16548b = null;
        }
    }

    /* renamed from: com.dropbox.core.http.OkHttpRequestor$b */
    /* loaded from: classes4.dex */
    public class C2270b extends HttpRequestor.Uploader {

        /* renamed from: a */
        public final String f16549a;

        /* renamed from: b */
        public final Request.Builder f16550b;

        /* renamed from: c */
        public RequestBody f16551c = null;

        /* renamed from: d */
        public Call f16552d = null;

        /* renamed from: e */
        public AsyncCallback f16553e = null;

        /* renamed from: f */
        public boolean f16554f = false;

        /* renamed from: g */
        public boolean f16555g = false;

        public C2270b(String str, Request.Builder builder) {
            this.f16549a = str;
            this.f16550b = builder;
        }

        /* renamed from: a */
        public final void m10045a() {
            if (this.f16551c != null) {
                throw new IllegalStateException("Request body already set.");
            }
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void abort() {
            Call call = this.f16552d;
            if (call != null) {
                call.cancel();
            }
            this.f16555g = true;
            close();
        }

        /* renamed from: b */
        public final void m10046b(RequestBody requestBody) {
            m10045a();
            this.f16551c = requestBody;
            this.f16550b.method(this.f16549a, requestBody);
            OkHttpRequestor.this.configureRequest(this.f16550b);
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void close() {
            Object obj = this.f16551c;
            if (obj != null && (obj instanceof Closeable)) {
                try {
                    ((Closeable) obj).close();
                } catch (IOException unused) {
                }
            }
            this.f16554f = true;
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public HttpRequestor.Response finish() throws IOException {
            Response response;
            if (this.f16555g) {
                throw new IllegalStateException("Already aborted");
            }
            if (this.f16551c == null) {
                upload(new byte[0]);
            }
            if (this.f16553e != null) {
                try {
                    getBody().close();
                } catch (IOException unused) {
                }
                response = this.f16553e.getResponse();
            } else {
                Call newCall = OkHttpRequestor.this.f16546a.newCall(this.f16550b.build());
                this.f16552d = newCall;
                response = newCall.execute();
            }
            Response interceptResponse = OkHttpRequestor.this.interceptResponse(response);
            return new HttpRequestor.Response(interceptResponse.code(), interceptResponse.body().byteStream(), OkHttpRequestor.m10042c(interceptResponse.headers()));
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public OutputStream getBody() {
            RequestBody requestBody = this.f16551c;
            if (requestBody instanceof C2271c) {
                return ((C2271c) requestBody).m10048j();
            }
            C2271c c2271c = new C2271c();
            IOUtil.ProgressListener progressListener = this.progressListener;
            if (progressListener != null) {
                c2271c.m10049w(progressListener);
            }
            m10046b(c2271c);
            this.f16553e = new AsyncCallback();
            Call newCall = OkHttpRequestor.this.f16546a.newCall(this.f16550b.build());
            this.f16552d = newCall;
            newCall.enqueue(this.f16553e);
            return c2271c.m10048j();
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void upload(File file) {
            m10046b(RequestBody.create((MediaType) null, file));
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void upload(byte[] bArr) {
            m10046b(RequestBody.create((MediaType) null, bArr));
        }
    }

    /* renamed from: com.dropbox.core.http.OkHttpRequestor$c */
    /* loaded from: classes4.dex */
    public static class C2271c extends RequestBody implements Closeable {

        /* renamed from: e */
        public final OkHttpUtil.PipedStream f16557e = new OkHttpUtil.PipedStream();

        /* renamed from: f */
        public IOUtil.ProgressListener f16558f;

        /* renamed from: com.dropbox.core.http.OkHttpRequestor$c$a */
        /* loaded from: classes4.dex */
        public final class a extends ForwardingSink {

            /* renamed from: e */
            public long f16559e;

            public a(Sink sink) {
                super(sink);
                this.f16559e = 0L;
            }

            @Override // okio.ForwardingSink, okio.Sink
            public void write(Buffer buffer, long j) throws IOException {
                super.write(buffer, j);
                this.f16559e += j;
                if (C2271c.this.f16558f != null) {
                    C2271c.this.f16558f.onProgress(this.f16559e);
                }
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f16557e.close();
        }

        @Override // com.squareup.okhttp.RequestBody
        public long contentLength() {
            return -1L;
        }

        @Override // com.squareup.okhttp.RequestBody
        public MediaType contentType() {
            return null;
        }

        /* renamed from: j */
        public OutputStream m10048j() {
            return this.f16557e.getOutputStream();
        }

        /* renamed from: w */
        public void m10049w(IOUtil.ProgressListener progressListener) {
            this.f16558f = progressListener;
        }

        @Override // com.squareup.okhttp.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            BufferedSink buffer = Okio.buffer(new a(bufferedSink));
            this.f16557e.writeTo(buffer);
            buffer.flush();
            close();
        }
    }

    public OkHttpRequestor(OkHttpClient okHttpClient) {
        if (okHttpClient == null) {
            throw new NullPointerException(Constant.CLIENT);
        }
        OkHttpUtil.m10050a(okHttpClient.getDispatcher().getExecutorService());
        this.f16546a = okHttpClient.m72425clone();
    }

    /* renamed from: c */
    public static Map<String, List<String>> m10042c(Headers headers) {
        HashMap hashMap = new HashMap(headers.size());
        for (String str : headers.names()) {
            hashMap.put(str, headers.values(str));
        }
        return hashMap;
    }

    public static OkHttpClient defaultOkHttpClient() {
        OkHttpClient okHttpClient = new OkHttpClient();
        long j = HttpRequestor.DEFAULT_CONNECT_TIMEOUT_MILLIS;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        okHttpClient.setConnectTimeout(j, timeUnit);
        long j2 = HttpRequestor.DEFAULT_READ_TIMEOUT_MILLIS;
        okHttpClient.setReadTimeout(j2, timeUnit);
        okHttpClient.setWriteTimeout(j2, timeUnit);
        okHttpClient.setSslSocketFactory(SSLConfig.getSSLSocketFactory());
        return okHttpClient;
    }

    /* renamed from: e */
    public static void m10043e(Iterable<HttpRequestor.Header> iterable, Request.Builder builder) {
        for (HttpRequestor.Header header : iterable) {
            builder.addHeader(header.getKey(), header.getValue());
        }
    }

    public void configureRequest(Request.Builder builder) {
    }

    /* renamed from: d */
    public final C2270b m10044d(String str, Iterable<HttpRequestor.Header> iterable, String str2) {
        Request.Builder url = new Request.Builder().url(str);
        m10043e(iterable, url);
        return new C2270b(str2, url);
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Response doGet(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        Request.Builder url = new Request.Builder().get().url(str);
        m10043e(iterable, url);
        configureRequest(url);
        Response interceptResponse = interceptResponse(this.f16546a.newCall(url.build()).execute());
        return new HttpRequestor.Response(interceptResponse.code(), interceptResponse.body().byteStream(), m10042c(interceptResponse.headers()));
    }

    public OkHttpClient getClient() {
        return this.f16546a;
    }

    public Response interceptResponse(Response response) {
        return response;
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Uploader startPost(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        return m10044d(str, iterable, "POST");
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Uploader startPut(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        return m10044d(str, iterable, "PUT");
    }
}
