package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.CacheControl;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* loaded from: classes9.dex */
public final class CacheStrategy {
    public final Response cacheResponse;
    public final Request networkRequest;

    /* loaded from: classes9.dex */
    public static class Factory {

        /* renamed from: a */
        public final long f63726a;

        /* renamed from: b */
        public final Request f63727b;

        /* renamed from: c */
        public final Response f63728c;

        /* renamed from: d */
        public Date f63729d;

        /* renamed from: e */
        public String f63730e;

        /* renamed from: f */
        public Date f63731f;

        /* renamed from: g */
        public String f63732g;

        /* renamed from: h */
        public Date f63733h;

        /* renamed from: i */
        public long f63734i;

        /* renamed from: j */
        public long f63735j;

        /* renamed from: k */
        public String f63736k;

        /* renamed from: l */
        public int f63737l;

        public Factory(long j, Request request, Response response) {
            this.f63737l = -1;
            this.f63726a = j;
            this.f63727b = request;
            this.f63728c = response;
            if (response != null) {
                Headers headers = response.headers();
                int size = headers.size();
                for (int i = 0; i < size; i++) {
                    String name = headers.name(i);
                    String value = headers.value(i);
                    if ("Date".equalsIgnoreCase(name)) {
                        this.f63729d = HttpDate.parse(value);
                        this.f63730e = value;
                    } else if ("Expires".equalsIgnoreCase(name)) {
                        this.f63733h = HttpDate.parse(value);
                    } else if ("Last-Modified".equalsIgnoreCase(name)) {
                        this.f63731f = HttpDate.parse(value);
                        this.f63732g = value;
                    } else if ("ETag".equalsIgnoreCase(name)) {
                        this.f63736k = value;
                    } else if ("Age".equalsIgnoreCase(name)) {
                        this.f63737l = HeaderParser.parseSeconds(value, -1);
                    } else if (OkHeaders.SENT_MILLIS.equalsIgnoreCase(name)) {
                        this.f63734i = Long.parseLong(value);
                    } else if (OkHeaders.RECEIVED_MILLIS.equalsIgnoreCase(name)) {
                        this.f63735j = Long.parseLong(value);
                    }
                }
            }
        }

        /* renamed from: d */
        public static boolean m52658d(Request request) {
            return (request.header("If-Modified-Since") == null && request.header("If-None-Match") == null) ? false : true;
        }

        /* renamed from: a */
        public final long m52659a() {
            Date date = this.f63729d;
            long max = date != null ? Math.max(0L, this.f63735j - date.getTime()) : 0L;
            int i = this.f63737l;
            if (i != -1) {
                max = Math.max(max, TimeUnit.SECONDS.toMillis(i));
            }
            long j = this.f63735j;
            return max + (j - this.f63734i) + (this.f63726a - j);
        }

        /* renamed from: b */
        public final long m52660b() {
            if (this.f63728c.cacheControl().maxAgeSeconds() != -1) {
                return TimeUnit.SECONDS.toMillis(r0.maxAgeSeconds());
            }
            if (this.f63733h != null) {
                Date date = this.f63729d;
                long time = this.f63733h.getTime() - (date != null ? date.getTime() : this.f63735j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f63731f == null || this.f63728c.request().url().getQuery() != null) {
                return 0L;
            }
            Date date2 = this.f63729d;
            long time2 = (date2 != null ? date2.getTime() : this.f63734i) - this.f63731f.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: c */
        public final CacheStrategy m52661c() {
            Response response = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            Object[] objArr4 = 0;
            Object[] objArr5 = 0;
            Object[] objArr6 = 0;
            Object[] objArr7 = 0;
            Object[] objArr8 = 0;
            Object[] objArr9 = 0;
            Object[] objArr10 = 0;
            Object[] objArr11 = 0;
            Object[] objArr12 = 0;
            if (this.f63728c == null) {
                return new CacheStrategy(this.f63727b, response);
            }
            if (this.f63727b.isHttps() && this.f63728c.handshake() == null) {
                return new CacheStrategy(this.f63727b, objArr11 == true ? 1 : 0);
            }
            if (!CacheStrategy.isCacheable(this.f63728c, this.f63727b)) {
                return new CacheStrategy(this.f63727b, objArr9 == true ? 1 : 0);
            }
            CacheControl cacheControl = this.f63727b.cacheControl();
            if (cacheControl.noCache() || m52658d(this.f63727b)) {
                return new CacheStrategy(this.f63727b, objArr2 == true ? 1 : 0);
            }
            long m52659a = m52659a();
            long m52660b = m52660b();
            if (cacheControl.maxAgeSeconds() != -1) {
                m52660b = Math.min(m52660b, TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds()));
            }
            long j = 0;
            long millis = cacheControl.minFreshSeconds() != -1 ? TimeUnit.SECONDS.toMillis(cacheControl.minFreshSeconds()) : 0L;
            CacheControl cacheControl2 = this.f63728c.cacheControl();
            if (!cacheControl2.mustRevalidate() && cacheControl.maxStaleSeconds() != -1) {
                j = TimeUnit.SECONDS.toMillis(cacheControl.maxStaleSeconds());
            }
            if (!cacheControl2.noCache()) {
                long j2 = millis + m52659a;
                if (j2 < j + m52660b) {
                    Response.Builder newBuilder = this.f63728c.newBuilder();
                    if (j2 >= m52660b) {
                        newBuilder.addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
                    }
                    if (m52659a > 86400000 && m52662e()) {
                        newBuilder.addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                    }
                    return new CacheStrategy(objArr7 == true ? 1 : 0, newBuilder.build());
                }
            }
            Request.Builder newBuilder2 = this.f63727b.newBuilder();
            String str = this.f63736k;
            if (str != null) {
                newBuilder2.header("If-None-Match", str);
            } else if (this.f63731f != null) {
                newBuilder2.header("If-Modified-Since", this.f63732g);
            } else if (this.f63729d != null) {
                newBuilder2.header("If-Modified-Since", this.f63730e);
            }
            Request build = newBuilder2.build();
            return m52658d(build) ? new CacheStrategy(build, this.f63728c) : new CacheStrategy(build, objArr4 == true ? 1 : 0);
        }

        /* renamed from: e */
        public final boolean m52662e() {
            return this.f63728c.cacheControl().maxAgeSeconds() == -1 && this.f63733h == null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public CacheStrategy get() {
            CacheStrategy m52661c = m52661c();
            return (m52661c.networkRequest == null || !this.f63727b.cacheControl().onlyIfCached()) ? m52661c : new CacheStrategy(null, 0 == true ? 1 : 0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.cacheControl().isPrivate() == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isCacheable(com.squareup.okhttp.Response r3, com.squareup.okhttp.Request r4) {
        /*
            int r0 = r3.code()
            r1 = 200(0xc8, float:2.8E-43)
            r2 = 0
            if (r0 == r1) goto L5a
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 == r1) goto L5a
            r1 = 414(0x19e, float:5.8E-43)
            if (r0 == r1) goto L5a
            r1 = 501(0x1f5, float:7.02E-43)
            if (r0 == r1) goto L5a
            r1 = 203(0xcb, float:2.84E-43)
            if (r0 == r1) goto L5a
            r1 = 204(0xcc, float:2.86E-43)
            if (r0 == r1) goto L5a
            r1 = 307(0x133, float:4.3E-43)
            if (r0 == r1) goto L31
            r1 = 308(0x134, float:4.32E-43)
            if (r0 == r1) goto L5a
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L5a
            r1 = 405(0x195, float:5.68E-43)
            if (r0 == r1) goto L5a
            switch(r0) {
                case 300: goto L5a;
                case 301: goto L5a;
                case 302: goto L31;
                default: goto L30;
            }
        L30:
            goto L59
        L31:
            java.lang.String r0 = "Expires"
            java.lang.String r0 = r3.header(r0)
            if (r0 != 0) goto L5a
            com.squareup.okhttp.CacheControl r0 = r3.cacheControl()
            int r0 = r0.maxAgeSeconds()
            r1 = -1
            if (r0 != r1) goto L5a
            com.squareup.okhttp.CacheControl r0 = r3.cacheControl()
            boolean r0 = r0.isPublic()
            if (r0 != 0) goto L5a
            com.squareup.okhttp.CacheControl r0 = r3.cacheControl()
            boolean r0 = r0.isPrivate()
            if (r0 == 0) goto L59
            goto L5a
        L59:
            return r2
        L5a:
            com.squareup.okhttp.CacheControl r3 = r3.cacheControl()
            boolean r3 = r3.noStore()
            if (r3 != 0) goto L6f
            com.squareup.okhttp.CacheControl r3 = r4.cacheControl()
            boolean r3 = r3.noStore()
            if (r3 != 0) goto L6f
            r2 = 1
        L6f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.http.CacheStrategy.isCacheable(com.squareup.okhttp.Response, com.squareup.okhttp.Request):boolean");
    }

    public CacheStrategy(Request request, Response response) {
        this.networkRequest = request;
        this.cacheResponse = response;
    }
}
