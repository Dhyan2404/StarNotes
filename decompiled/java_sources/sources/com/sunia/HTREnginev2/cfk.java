package com.sunia.HTREnginev2;

import java.io.IOException;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;
import retrofit2.C20501f;
import retrofit2.Call;
import retrofit2.Response;

/* loaded from: classes16.dex */
public final class cfk<T> implements Call<T> {

    /* renamed from: e */
    public final C20501f<T> f66777e;

    /* renamed from: f */
    public final Object[] f66778f;

    /* renamed from: g */
    public volatile boolean f66779g;

    /* renamed from: h */
    public okhttp3.Call f66780h;

    /* renamed from: i */
    public Throwable f66781i;

    /* renamed from: j */
    public boolean f66782j;

    /* renamed from: com.sunia.HTREnginev2.cfk$a */
    /* loaded from: classes16.dex */
    public class C13563a implements Callback {

        /* renamed from: e */
        public final /* synthetic */ retrofit2.Callback f66783e;

        public C13563a(retrofit2.Callback callback) {
            this.f66783e = callback;
        }

        /* renamed from: a */
        public final void m53443a(Throwable th) {
            try {
                this.f66783e.onFailure(cfk.this, th);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }

        /* renamed from: b */
        public final void m53444b(Response<T> response) {
            try {
                this.f66783e.onResponse(cfk.this, response);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // okhttp3.Callback
        public void onFailure(okhttp3.Call call, IOException iOException) {
            try {
                this.f66783e.onFailure(cfk.this, iOException);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // okhttp3.Callback
        public void onResponse(okhttp3.Call call, okhttp3.Response response) throws IOException {
            try {
                m53444b(cfk.this.m53442c(response));
            } catch (Throwable th) {
                m53443a(th);
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.cfk$b */
    /* loaded from: classes16.dex */
    public static final class C13564b extends ResponseBody {

        /* renamed from: f */
        public final ResponseBody f66785f;

        /* renamed from: g */
        public IOException f66786g;

        /* renamed from: com.sunia.HTREnginev2.cfk$b$a */
        /* loaded from: classes16.dex */
        public class a extends ForwardingSource {
            public a(Source source) {
                super(source);
            }

            @Override // okio.ForwardingSource, okio.Source
            public long read(Buffer buffer, long j) throws IOException {
                try {
                    return super.read(buffer, j);
                } catch (IOException e) {
                    C13564b.this.f66786g = e;
                    throw e;
                }
            }
        }

        public C13564b(ResponseBody responseBody) {
            this.f66785f = responseBody;
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f66785f.close();
        }

        @Override // okhttp3.ResponseBody
        /* renamed from: contentLength */
        public long getContentLength() {
            return this.f66785f.getContentLength();
        }

        @Override // okhttp3.ResponseBody
        /* renamed from: contentType */
        public MediaType getF103417f() {
            return this.f66785f.getF103417f();
        }

        @Override // okhttp3.ResponseBody
        /* renamed from: source */
        public BufferedSource getSource() {
            return Okio.buffer(new a(this.f66785f.getSource()));
        }

        /* renamed from: w */
        public void m53445w() throws IOException {
            IOException iOException = this.f66786g;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.cfk$c */
    /* loaded from: classes16.dex */
    public static final class C13565c extends ResponseBody {

        /* renamed from: f */
        public final MediaType f66788f;

        /* renamed from: g */
        public final long f66789g;

        public C13565c(MediaType mediaType, long j) {
            this.f66788f = mediaType;
            this.f66789g = j;
        }

        @Override // okhttp3.ResponseBody
        /* renamed from: contentLength */
        public long getContentLength() {
            return this.f66789g;
        }

        @Override // okhttp3.ResponseBody
        /* renamed from: contentType */
        public MediaType getF103417f() {
            return this.f66788f;
        }

        @Override // okhttp3.ResponseBody
        /* renamed from: source */
        public BufferedSource getSource() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    public cfk(C20501f<T> c20501f, Object[] objArr) {
        this.f66777e = c20501f;
        this.f66778f = objArr;
    }

    @Override // retrofit2.Call
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public cfk<T> clone() {
        return new cfk<>(this.f66777e, this.f66778f);
    }

    /* renamed from: b */
    public final okhttp3.Call m53441b() throws IOException {
        okhttp3.Call newCall = this.f66777e.f116285a.newCall(this.f66777e.m72054c(this.f66778f));
        if (newCall != null) {
            return newCall;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    /* renamed from: c */
    public Response<T> m53442c(okhttp3.Response response) throws IOException {
        ResponseBody body = response.body();
        okhttp3.Response build = response.newBuilder().body(new C13565c(body.getF103417f(), body.getContentLength())).build();
        int code = build.code();
        if (code < 200 || code >= 300) {
            try {
                return Response.error(jzn.m55076a(body), build);
            } finally {
                body.close();
            }
        }
        if (code == 204 || code == 205) {
            return Response.success((Object) null, build);
        }
        C13564b c13564b = new C13564b(body);
        try {
            return Response.success(this.f66777e.m72055d(c13564b), build);
        } catch (RuntimeException e) {
            c13564b.m53445w();
            throw e;
        }
    }

    @Override // retrofit2.Call
    public void cancel() {
        okhttp3.Call call;
        this.f66779g = true;
        synchronized (this) {
            call = this.f66780h;
        }
        if (call != null) {
            call.cancel();
        }
    }

    @Override // retrofit2.Call
    public void enqueue(retrofit2.Callback<T> callback) {
        okhttp3.Call call;
        Throwable th;
        if (callback == null) {
            throw new NullPointerException("callback == null");
        }
        synchronized (this) {
            if (this.f66782j) {
                throw new IllegalStateException("Already executed.");
            }
            this.f66782j = true;
            call = this.f66780h;
            th = this.f66781i;
            if (call == null && th == null) {
                try {
                    okhttp3.Call m53441b = m53441b();
                    this.f66780h = m53441b;
                    call = m53441b;
                } catch (Throwable th2) {
                    th = th2;
                    this.f66781i = th;
                }
            }
        }
        if (th != null) {
            callback.onFailure(this, th);
            return;
        }
        if (this.f66779g) {
            call.cancel();
        }
        call.enqueue(new C13563a(callback));
    }

    @Override // retrofit2.Call
    public Response<T> execute() throws IOException {
        okhttp3.Call call;
        synchronized (this) {
            if (this.f66782j) {
                throw new IllegalStateException("Already executed.");
            }
            this.f66782j = true;
            Throwable th = this.f66781i;
            if (th != null) {
                if (th instanceof IOException) {
                    throw ((IOException) th);
                }
                throw ((RuntimeException) th);
            }
            call = this.f66780h;
            if (call == null) {
                try {
                    call = m53441b();
                    this.f66780h = call;
                } catch (IOException | RuntimeException e) {
                    this.f66781i = e;
                    throw e;
                }
            }
        }
        if (this.f66779g) {
            call.cancel();
        }
        return m53442c(call.execute());
    }

    @Override // retrofit2.Call
    public boolean isCanceled() {
        return this.f66779g;
    }

    @Override // retrofit2.Call
    public synchronized boolean isExecuted() {
        return this.f66782j;
    }

    @Override // retrofit2.Call
    public synchronized Request request() {
        okhttp3.Call call = this.f66780h;
        if (call != null) {
            return call.request();
        }
        Throwable th = this.f66781i;
        if (th != null) {
            if (th instanceof IOException) {
                throw new RuntimeException("Unable to create request.", this.f66781i);
            }
            throw ((RuntimeException) th);
        }
        try {
            okhttp3.Call m53441b = m53441b();
            this.f66780h = m53441b;
            return m53441b.request();
        } catch (IOException e) {
            this.f66781i = e;
            throw new RuntimeException("Unable to create request.", e);
        } catch (RuntimeException e2) {
            this.f66781i = e2;
            throw e2;
        }
    }
}
