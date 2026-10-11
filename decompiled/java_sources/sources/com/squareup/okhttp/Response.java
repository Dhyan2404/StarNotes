package com.squareup.okhttp;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.internal.http.OkHeaders;
import java.util.Collections;
import java.util.List;

/* loaded from: classes9.dex */
public final class Response {

    /* renamed from: a */
    public final Request f63619a;

    /* renamed from: b */
    public final Protocol f63620b;

    /* renamed from: c */
    public final int f63621c;

    /* renamed from: d */
    public final String f63622d;

    /* renamed from: e */
    public final Handshake f63623e;

    /* renamed from: f */
    public final Headers f63624f;

    /* renamed from: g */
    public final ResponseBody f63625g;

    /* renamed from: h */
    public Response f63626h;

    /* renamed from: i */
    public Response f63627i;

    /* renamed from: j */
    public final Response f63628j;

    /* renamed from: k */
    public volatile CacheControl f63629k;

    /* loaded from: classes9.dex */
    public static class Builder {

        /* renamed from: a */
        public Request f63630a;

        /* renamed from: b */
        public Protocol f63631b;

        /* renamed from: c */
        public int f63632c;

        /* renamed from: d */
        public String f63633d;

        /* renamed from: e */
        public Handshake f63634e;

        /* renamed from: f */
        public Headers.Builder f63635f;

        /* renamed from: g */
        public ResponseBody f63636g;

        /* renamed from: h */
        public Response f63637h;

        /* renamed from: i */
        public Response f63638i;

        /* renamed from: j */
        public Response f63639j;

        public Builder addHeader(String str, String str2) {
            this.f63635f.add(str, str2);
            return this;
        }

        public Builder body(ResponseBody responseBody) {
            this.f63636g = responseBody;
            return this;
        }

        public Response build() {
            if (this.f63630a == null) {
                throw new IllegalStateException("request == null");
            }
            if (this.f63631b == null) {
                throw new IllegalStateException("protocol == null");
            }
            if (this.f63632c >= 0) {
                return new Response(this);
            }
            throw new IllegalStateException("code < 0: " + this.f63632c);
        }

        public Builder cacheResponse(Response response) {
            if (response != null) {
                m52599l("cacheResponse", response);
            }
            this.f63638i = response;
            return this;
        }

        public Builder code(int i) {
            this.f63632c = i;
            return this;
        }

        public Builder handshake(Handshake handshake) {
            this.f63634e = handshake;
            return this;
        }

        public Builder header(String str, String str2) {
            this.f63635f.set(str, str2);
            return this;
        }

        public Builder headers(Headers headers) {
            this.f63635f = headers.newBuilder();
            return this;
        }

        /* renamed from: k */
        public final void m52598k(Response response) {
            if (response.f63625g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        /* renamed from: l */
        public final void m52599l(String str, Response response) {
            if (response.f63625g != null) {
                throw new IllegalArgumentException(str + ".body != null");
            }
            if (response.f63626h != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            if (response.f63627i != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            }
            if (response.f63628j == null) {
                return;
            }
            throw new IllegalArgumentException(str + ".priorResponse != null");
        }

        public Builder message(String str) {
            this.f63633d = str;
            return this;
        }

        public Builder networkResponse(Response response) {
            if (response != null) {
                m52599l("networkResponse", response);
            }
            this.f63637h = response;
            return this;
        }

        public Builder priorResponse(Response response) {
            if (response != null) {
                m52598k(response);
            }
            this.f63639j = response;
            return this;
        }

        public Builder protocol(Protocol protocol) {
            this.f63631b = protocol;
            return this;
        }

        public Builder removeHeader(String str) {
            this.f63635f.removeAll(str);
            return this;
        }

        public Builder request(Request request) {
            this.f63630a = request;
            return this;
        }

        public Builder() {
            this.f63632c = -1;
            this.f63635f = new Headers.Builder();
        }

        public Builder(Response response) {
            this.f63632c = -1;
            this.f63630a = response.f63619a;
            this.f63631b = response.f63620b;
            this.f63632c = response.f63621c;
            this.f63633d = response.f63622d;
            this.f63634e = response.f63623e;
            this.f63635f = response.f63624f.newBuilder();
            this.f63636g = response.f63625g;
            this.f63637h = response.f63626h;
            this.f63638i = response.f63627i;
            this.f63639j = response.f63628j;
        }
    }

    public ResponseBody body() {
        return this.f63625g;
    }

    public CacheControl cacheControl() {
        CacheControl cacheControl = this.f63629k;
        if (cacheControl != null) {
            return cacheControl;
        }
        CacheControl parse = CacheControl.parse(this.f63624f);
        this.f63629k = parse;
        return parse;
    }

    public Response cacheResponse() {
        return this.f63627i;
    }

    public List<Challenge> challenges() {
        String str;
        int i = this.f63621c;
        if (i == 401) {
            str = "WWW-Authenticate";
        } else {
            if (i != 407) {
                return Collections.emptyList();
            }
            str = "Proxy-Authenticate";
        }
        return OkHeaders.parseChallenges(headers(), str);
    }

    public int code() {
        return this.f63621c;
    }

    public Handshake handshake() {
        return this.f63623e;
    }

    public String header(String str) {
        return header(str, null);
    }

    public List<String> headers(String str) {
        return this.f63624f.values(str);
    }

    public boolean isRedirect() {
        int i = this.f63621c;
        if (i == 307 || i == 308) {
            return true;
        }
        switch (i) {
            case 300:
            case 301:
            case 302:
            case 303:
                return true;
            default:
                return false;
        }
    }

    public boolean isSuccessful() {
        int i = this.f63621c;
        return i >= 200 && i < 300;
    }

    public String message() {
        return this.f63622d;
    }

    public Response networkResponse() {
        return this.f63626h;
    }

    public Builder newBuilder() {
        return new Builder();
    }

    public Response priorResponse() {
        return this.f63628j;
    }

    public Protocol protocol() {
        return this.f63620b;
    }

    public Request request() {
        return this.f63619a;
    }

    public String toString() {
        return "Response{protocol=" + this.f63620b + ", code=" + this.f63621c + ", message=" + this.f63622d + ", url=" + this.f63619a.urlString() + '}';
    }

    public Response(Builder builder) {
        this.f63619a = builder.f63630a;
        this.f63620b = builder.f63631b;
        this.f63621c = builder.f63632c;
        this.f63622d = builder.f63633d;
        this.f63623e = builder.f63634e;
        this.f63624f = builder.f63635f.build();
        this.f63625g = builder.f63636g;
        this.f63626h = builder.f63637h;
        this.f63627i = builder.f63638i;
        this.f63628j = builder.f63639j;
    }

    public String header(String str, String str2) {
        String str3 = this.f63624f.get(str);
        return str3 != null ? str3 : str2;
    }

    public Headers headers() {
        return this.f63624f;
    }
}
