package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.message.AbstractHttpMessage;
import org.apache.http.message.BasicRequestLine;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class HttpRequestWrapper extends AbstractHttpMessage implements HttpUriRequest {

    /* renamed from: e */
    public final HttpRequest f110170e;

    /* renamed from: f */
    public final HttpHost f110171f;

    /* renamed from: g */
    public final String f110172g;

    /* renamed from: h */
    public RequestLine f110173h;

    /* renamed from: i */
    public ProtocolVersion f110174i;

    /* renamed from: j */
    public URI f110175j;

    /* renamed from: org.apache.http.client.methods.HttpRequestWrapper$b */
    /* loaded from: classes12.dex */
    public static class C19338b extends HttpRequestWrapper implements HttpEntityEnclosingRequest {

        /* renamed from: k */
        public HttpEntity f110176k;

        public C19338b(HttpEntityEnclosingRequest httpEntityEnclosingRequest, HttpHost httpHost) {
            super(httpEntityEnclosingRequest, httpHost);
            this.f110176k = httpEntityEnclosingRequest.getEntity();
        }

        @Override // org.apache.http.HttpEntityEnclosingRequest
        public boolean expectContinue() {
            Header firstHeader = getFirstHeader("Expect");
            return firstHeader != null && "100-continue".equalsIgnoreCase(firstHeader.getValue());
        }

        @Override // org.apache.http.HttpEntityEnclosingRequest
        public HttpEntity getEntity() {
            return this.f110176k;
        }

        @Override // org.apache.http.HttpEntityEnclosingRequest
        public void setEntity(HttpEntity httpEntity) {
            this.f110176k = httpEntity;
        }
    }

    public static HttpRequestWrapper wrap(HttpRequest httpRequest) {
        return wrap(httpRequest, null);
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public void abort() throws UnsupportedOperationException {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return this.f110172g;
    }

    public HttpRequest getOriginal() {
        return this.f110170e;
    }

    @Override // org.apache.http.message.AbstractHttpMessage, org.apache.http.HttpMessage
    @Deprecated
    public HttpParams getParams() {
        if (this.params == null) {
            this.params = this.f110170e.getParams().copy();
        }
        return this.params;
    }

    @Override // org.apache.http.HttpMessage
    public ProtocolVersion getProtocolVersion() {
        ProtocolVersion protocolVersion = this.f110174i;
        return protocolVersion != null ? protocolVersion : this.f110170e.getProtocolVersion();
    }

    @Override // org.apache.http.HttpRequest
    public RequestLine getRequestLine() {
        if (this.f110173h == null) {
            URI uri = this.f110175j;
            String aSCIIString = uri != null ? uri.toASCIIString() : this.f110170e.getRequestLine().getUri();
            if (aSCIIString == null || aSCIIString.isEmpty()) {
                aSCIIString = "/";
            }
            this.f110173h = new BasicRequestLine(this.f110172g, aSCIIString, getProtocolVersion());
        }
        return this.f110173h;
    }

    public HttpHost getTarget() {
        return this.f110171f;
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public URI getURI() {
        return this.f110175j;
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public boolean isAborted() {
        return false;
    }

    public void setProtocolVersion(ProtocolVersion protocolVersion) {
        this.f110174i = protocolVersion;
        this.f110173h = null;
    }

    public void setURI(URI uri) {
        this.f110175j = uri;
        this.f110173h = null;
    }

    public String toString() {
        return getRequestLine() + " " + this.headergroup;
    }

    public HttpRequestWrapper(HttpRequest httpRequest, HttpHost httpHost) {
        HttpRequest httpRequest2 = (HttpRequest) Args.notNull(httpRequest, "HTTP request");
        this.f110170e = httpRequest2;
        this.f110171f = httpHost;
        this.f110174i = httpRequest2.getRequestLine().getProtocolVersion();
        this.f110172g = httpRequest2.getRequestLine().getMethod();
        if (httpRequest instanceof HttpUriRequest) {
            this.f110175j = ((HttpUriRequest) httpRequest).getURI();
        } else {
            this.f110175j = null;
        }
        setHeaders(httpRequest.getAllHeaders());
    }

    public static HttpRequestWrapper wrap(HttpRequest httpRequest, HttpHost httpHost) {
        Args.notNull(httpRequest, "HTTP request");
        return httpRequest instanceof HttpEntityEnclosingRequest ? new C19338b((HttpEntityEnclosingRequest) httpRequest, httpHost) : new HttpRequestWrapper(httpRequest, httpHost);
    }
}
