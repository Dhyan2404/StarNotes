package com.squareup.okhttp;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.internal.http.HttpMethod;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.List;
import org.mortbay.util.URIUtil;

/* loaded from: classes9.dex */
public final class Request {

    /* renamed from: a */
    public final HttpUrl f63598a;

    /* renamed from: b */
    public final String f63599b;

    /* renamed from: c */
    public final Headers f63600c;

    /* renamed from: d */
    public final RequestBody f63601d;

    /* renamed from: e */
    public final Object f63602e;

    /* renamed from: f */
    public volatile URL f63603f;

    /* renamed from: g */
    public volatile URI f63604g;

    /* renamed from: h */
    public volatile CacheControl f63605h;

    /* loaded from: classes9.dex */
    public static class Builder {

        /* renamed from: a */
        public HttpUrl f63606a;

        /* renamed from: b */
        public String f63607b;

        /* renamed from: c */
        public Headers.Builder f63608c;

        /* renamed from: d */
        public RequestBody f63609d;

        /* renamed from: e */
        public Object f63610e;

        public Builder addHeader(String str, String str2) {
            this.f63608c.add(str, str2);
            return this;
        }

        public Request build() {
            if (this.f63606a != null) {
                return new Request(this);
            }
            throw new IllegalStateException("url == null");
        }

        public Builder cacheControl(CacheControl cacheControl) {
            String cacheControl2 = cacheControl.toString();
            return cacheControl2.isEmpty() ? removeHeader("Cache-Control") : header("Cache-Control", cacheControl2);
        }

        public Builder delete(RequestBody requestBody) {
            return method("DELETE", requestBody);
        }

        public Builder get() {
            return method("GET", null);
        }

        public Builder head() {
            return method("HEAD", null);
        }

        public Builder header(String str, String str2) {
            this.f63608c.set(str, str2);
            return this;
        }

        public Builder headers(Headers headers) {
            this.f63608c = headers.newBuilder();
            return this;
        }

        public Builder method(String str, RequestBody requestBody) {
            if (str == null || str.length() == 0) {
                throw new IllegalArgumentException("method == null || method.length() == 0");
            }
            if (requestBody != null && !HttpMethod.permitsRequestBody(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            }
            if (requestBody != null || !HttpMethod.requiresRequestBody(str)) {
                this.f63607b = str;
                this.f63609d = requestBody;
                return this;
            }
            throw new IllegalArgumentException("method " + str + " must have a request body.");
        }

        public Builder patch(RequestBody requestBody) {
            return method("PATCH", requestBody);
        }

        public Builder post(RequestBody requestBody) {
            return method("POST", requestBody);
        }

        public Builder put(RequestBody requestBody) {
            return method("PUT", requestBody);
        }

        public Builder removeHeader(String str) {
            this.f63608c.removeAll(str);
            return this;
        }

        public Builder tag(Object obj) {
            this.f63610e = obj;
            return this;
        }

        public Builder url(HttpUrl httpUrl) {
            if (httpUrl != null) {
                this.f63606a = httpUrl;
                return this;
            }
            throw new IllegalArgumentException("url == null");
        }

        public Builder() {
            this.f63607b = "GET";
            this.f63608c = new Headers.Builder();
        }

        public Builder delete() {
            return delete(RequestBody.create((MediaType) null, new byte[0]));
        }

        public Builder url(String str) {
            if (str != null) {
                if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                    str = URIUtil.HTTP_COLON + str.substring(3);
                } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                    str = URIUtil.HTTPS_COLON + str.substring(4);
                }
                HttpUrl parse = HttpUrl.parse(str);
                if (parse != null) {
                    return url(parse);
                }
                throw new IllegalArgumentException("unexpected url: " + str);
            }
            throw new IllegalArgumentException("url == null");
        }

        public Builder(Request request) {
            this.f63606a = request.f63598a;
            this.f63607b = request.f63599b;
            this.f63609d = request.f63601d;
            this.f63610e = request.f63602e;
            this.f63608c = request.f63600c.newBuilder();
        }

        public Builder url(URL url) {
            if (url != null) {
                HttpUrl httpUrl = HttpUrl.get(url);
                if (httpUrl != null) {
                    return url(httpUrl);
                }
                throw new IllegalArgumentException("unexpected url: " + url);
            }
            throw new IllegalArgumentException("url == null");
        }
    }

    public RequestBody body() {
        return this.f63601d;
    }

    public CacheControl cacheControl() {
        CacheControl cacheControl = this.f63605h;
        if (cacheControl != null) {
            return cacheControl;
        }
        CacheControl parse = CacheControl.parse(this.f63600c);
        this.f63605h = parse;
        return parse;
    }

    public String header(String str) {
        return this.f63600c.get(str);
    }

    public Headers headers() {
        return this.f63600c;
    }

    public HttpUrl httpUrl() {
        return this.f63598a;
    }

    public boolean isHttps() {
        return this.f63598a.isHttps();
    }

    public String method() {
        return this.f63599b;
    }

    public Builder newBuilder() {
        return new Builder();
    }

    public Object tag() {
        return this.f63602e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(this.f63599b);
        sb.append(", url=");
        sb.append(this.f63598a);
        sb.append(", tag=");
        Object obj = this.f63602e;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }

    public URI uri() throws IOException {
        try {
            URI uri = this.f63604g;
            if (uri != null) {
                return uri;
            }
            URI uri2 = this.f63598a.uri();
            this.f63604g = uri2;
            return uri2;
        } catch (IllegalStateException e) {
            throw new IOException(e.getMessage());
        }
    }

    public URL url() {
        URL url = this.f63603f;
        if (url != null) {
            return url;
        }
        URL url2 = this.f63598a.url();
        this.f63603f = url2;
        return url2;
    }

    public String urlString() {
        return this.f63598a.toString();
    }

    public Request(Builder builder) {
        this.f63598a = builder.f63606a;
        this.f63599b = builder.f63607b;
        this.f63600c = builder.f63608c.build();
        this.f63601d = builder.f63609d;
        this.f63602e = builder.f63610e != null ? builder.f63610e : this;
    }

    public List<String> headers(String str) {
        return this.f63600c.values(str);
    }
}
