package org.apache.http.protocol;

import com.sunia.HTREnginev2.kqd;
import java.util.LinkedList;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponseInterceptor;

/* loaded from: classes12.dex */
public class HttpProcessorBuilder {

    /* renamed from: a */
    public kqd<HttpRequestInterceptor> f111126a;

    /* renamed from: b */
    public kqd<HttpResponseInterceptor> f111127b;

    public static HttpProcessorBuilder create() {
        return new HttpProcessorBuilder();
    }

    /* renamed from: a */
    public final kqd<HttpRequestInterceptor> m68605a() {
        if (this.f111126a == null) {
            this.f111126a = new kqd<>();
        }
        return this.f111126a;
    }

    public HttpProcessorBuilder add(HttpRequestInterceptor httpRequestInterceptor) {
        return addLast(httpRequestInterceptor);
    }

    public HttpProcessorBuilder addAll(HttpRequestInterceptor... httpRequestInterceptorArr) {
        return addAllLast(httpRequestInterceptorArr);
    }

    public HttpProcessorBuilder addAllFirst(HttpRequestInterceptor... httpRequestInterceptorArr) {
        if (httpRequestInterceptorArr == null) {
            return this;
        }
        m68605a().m55300b(httpRequestInterceptorArr);
        return this;
    }

    public HttpProcessorBuilder addAllLast(HttpRequestInterceptor... httpRequestInterceptorArr) {
        if (httpRequestInterceptorArr == null) {
            return this;
        }
        m68605a().m55302d(httpRequestInterceptorArr);
        return this;
    }

    public HttpProcessorBuilder addFirst(HttpRequestInterceptor httpRequestInterceptor) {
        if (httpRequestInterceptor == null) {
            return this;
        }
        m68605a().m55303e(httpRequestInterceptor);
        return this;
    }

    public HttpProcessorBuilder addLast(HttpRequestInterceptor httpRequestInterceptor) {
        if (httpRequestInterceptor == null) {
            return this;
        }
        m68605a().m55304f(httpRequestInterceptor);
        return this;
    }

    /* renamed from: b */
    public final kqd<HttpResponseInterceptor> m68606b() {
        if (this.f111127b == null) {
            this.f111127b = new kqd<>();
        }
        return this.f111127b;
    }

    public HttpProcessor build() {
        kqd<HttpRequestInterceptor> kqdVar = this.f111126a;
        LinkedList<HttpRequestInterceptor> m55305g = kqdVar != null ? kqdVar.m55305g() : null;
        kqd<HttpResponseInterceptor> kqdVar2 = this.f111127b;
        return new ImmutableHttpProcessor(m55305g, kqdVar2 != null ? kqdVar2.m55305g() : null);
    }

    public HttpProcessorBuilder add(HttpResponseInterceptor httpResponseInterceptor) {
        return addLast(httpResponseInterceptor);
    }

    public HttpProcessorBuilder addAll(HttpResponseInterceptor... httpResponseInterceptorArr) {
        return addAllLast(httpResponseInterceptorArr);
    }

    public HttpProcessorBuilder addAllFirst(HttpResponseInterceptor... httpResponseInterceptorArr) {
        if (httpResponseInterceptorArr == null) {
            return this;
        }
        m68606b().m55300b(httpResponseInterceptorArr);
        return this;
    }

    public HttpProcessorBuilder addAllLast(HttpResponseInterceptor... httpResponseInterceptorArr) {
        if (httpResponseInterceptorArr == null) {
            return this;
        }
        m68606b().m55302d(httpResponseInterceptorArr);
        return this;
    }

    public HttpProcessorBuilder addFirst(HttpResponseInterceptor httpResponseInterceptor) {
        if (httpResponseInterceptor == null) {
            return this;
        }
        m68606b().m55303e(httpResponseInterceptor);
        return this;
    }

    public HttpProcessorBuilder addLast(HttpResponseInterceptor httpResponseInterceptor) {
        if (httpResponseInterceptor == null) {
            return this;
        }
        m68606b().m55304f(httpResponseInterceptor);
        return this;
    }
}
