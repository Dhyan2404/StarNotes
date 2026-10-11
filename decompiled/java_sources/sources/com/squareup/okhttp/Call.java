package com.squareup.okhttp;

import com.squareup.okhttp.Interceptor;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.RequestException;
import com.squareup.okhttp.internal.http.RouteException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.logging.Level;

/* loaded from: classes9.dex */
public class Call {

    /* renamed from: a */
    public final OkHttpClient f63470a;

    /* renamed from: b */
    public boolean f63471b;

    /* renamed from: c */
    public volatile boolean f63472c;

    /* renamed from: d */
    public Request f63473d;

    /* renamed from: e */
    public HttpEngine f63474e;

    /* renamed from: com.squareup.okhttp.Call$b */
    /* loaded from: classes9.dex */
    public class C13148b implements Interceptor.Chain {

        /* renamed from: a */
        public final int f63475a;

        /* renamed from: b */
        public final Request f63476b;

        /* renamed from: c */
        public final boolean f63477c;

        public C13148b(int i, Request request, boolean z) {
            this.f63475a = i;
            this.f63476b = request;
            this.f63477c = z;
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Connection connection() {
            return null;
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Response proceed(Request request) throws IOException {
            if (this.f63475a >= Call.this.f63470a.interceptors().size()) {
                return Call.this.m52460e(request, this.f63477c);
            }
            return Call.this.f63470a.interceptors().get(this.f63475a).intercept(new C13148b(this.f63475a + 1, request, this.f63477c));
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Request request() {
            return this.f63476b;
        }
    }

    /* renamed from: com.squareup.okhttp.Call$c */
    /* loaded from: classes9.dex */
    public final class C13149c extends NamedRunnable {

        /* renamed from: e */
        public final Callback f63479e;

        /* renamed from: f */
        public final boolean f63480f;

        /* renamed from: a */
        public void m52464a() {
            Call.this.cancel();
        }

        /* renamed from: b */
        public Call m52465b() {
            return Call.this;
        }

        /* renamed from: c */
        public String m52466c() {
            return Call.this.f63473d.url().getHost();
        }

        /* renamed from: d */
        public Request m52467d() {
            return Call.this.f63473d;
        }

        /* renamed from: e */
        public Object m52468e() {
            return Call.this.f63473d.tag();
        }

        @Override // com.squareup.okhttp.internal.NamedRunnable
        public void execute() {
            boolean z;
            IOException e;
            try {
                try {
                    Response m52461f = Call.this.m52461f(this.f63480f);
                    z = true;
                    try {
                        if (Call.this.f63472c) {
                            this.f63479e.onFailure(Call.this.f63473d, new IOException("Canceled"));
                        } else {
                            this.f63479e.onResponse(m52461f);
                        }
                    } catch (IOException e2) {
                        e = e2;
                        if (z) {
                            Internal.logger.log(Level.INFO, "Callback failure for " + Call.this.m52463h(), (Throwable) e);
                        } else {
                            this.f63479e.onFailure(Call.this.f63474e.getRequest(), e);
                        }
                    }
                } finally {
                    Call.this.f63470a.getDispatcher().m52512c(this);
                }
            } catch (IOException e3) {
                z = false;
                e = e3;
            }
        }

        public C13149c(Callback callback, boolean z) {
            super("OkHttp %s", Call.this.f63473d.urlString());
            this.f63479e = callback;
            this.f63480f = z;
        }
    }

    public Call(OkHttpClient okHttpClient, Request request) {
        this.f63470a = okHttpClient.m52563c();
        this.f63473d = request;
    }

    public void cancel() {
        this.f63472c = true;
        HttpEngine httpEngine = this.f63474e;
        if (httpEngine != null) {
            httpEngine.disconnect();
        }
    }

    /* renamed from: d */
    public void m52459d(Callback callback, boolean z) {
        synchronized (this) {
            if (this.f63471b) {
                throw new IllegalStateException("Already Executed");
            }
            this.f63471b = true;
        }
        this.f63470a.getDispatcher().m52510a(new C13149c(callback, z));
    }

    /* renamed from: e */
    public Response m52460e(Request request, boolean z) throws IOException {
        Response response;
        Request followUpRequest;
        RequestBody body = request.body();
        if (body != null) {
            Request.Builder newBuilder = request.newBuilder();
            MediaType contentType = body.contentType();
            if (contentType != null) {
                newBuilder.header("Content-Type", contentType.toString());
            }
            long contentLength = body.contentLength();
            if (contentLength != -1) {
                newBuilder.header("Content-Length", Long.toString(contentLength));
                newBuilder.removeHeader("Transfer-Encoding");
            } else {
                newBuilder.header("Transfer-Encoding", "chunked");
                newBuilder.removeHeader("Content-Length");
            }
            request = newBuilder.build();
        }
        this.f63474e = new HttpEngine(this.f63470a, request, false, false, z, null, null, null, null);
        int i = 0;
        while (!this.f63472c) {
            try {
                this.f63474e.sendRequest();
                this.f63474e.readResponse();
                response = this.f63474e.getResponse();
                followUpRequest = this.f63474e.followUpRequest();
            } catch (RequestException e) {
                throw e.getCause();
            } catch (RouteException e2) {
                HttpEngine recover = this.f63474e.recover(e2);
                if (recover == null) {
                    throw e2.getLastConnectException();
                }
                this.f63474e = recover;
            } catch (IOException e3) {
                HttpEngine recover2 = this.f63474e.recover(e3, null);
                if (recover2 == null) {
                    throw e3;
                }
                this.f63474e = recover2;
            }
            if (followUpRequest == null) {
                if (!z) {
                    this.f63474e.releaseConnection();
                }
                return response;
            }
            i++;
            if (i > 20) {
                throw new ProtocolException("Too many follow-up requests: " + i);
            }
            if (!this.f63474e.sameConnection(followUpRequest.url())) {
                this.f63474e.releaseConnection();
            }
            this.f63474e = new HttpEngine(this.f63470a, followUpRequest, false, false, z, this.f63474e.close(), null, null, response);
        }
        this.f63474e.releaseConnection();
        throw new IOException("Canceled");
    }

    public void enqueue(Callback callback) {
        m52459d(callback, false);
    }

    public Response execute() throws IOException {
        synchronized (this) {
            if (this.f63471b) {
                throw new IllegalStateException("Already Executed");
            }
            this.f63471b = true;
        }
        try {
            this.f63470a.getDispatcher().m52511b(this);
            Response m52461f = m52461f(false);
            if (m52461f != null) {
                return m52461f;
            }
            throw new IOException("Canceled");
        } finally {
            this.f63470a.getDispatcher().m52513d(this);
        }
    }

    /* renamed from: f */
    public final Response m52461f(boolean z) throws IOException {
        return new C13148b(0, this.f63473d, z).proceed(this.f63473d);
    }

    /* renamed from: g */
    public Object m52462g() {
        return this.f63473d.tag();
    }

    /* renamed from: h */
    public final String m52463h() {
        String str = this.f63472c ? "canceled call" : "call";
        try {
            return str + " to " + new URL(this.f63473d.url(), "/...").toString();
        } catch (MalformedURLException unused) {
            return str;
        }
    }

    public boolean isCanceled() {
        return this.f63472c;
    }
}
