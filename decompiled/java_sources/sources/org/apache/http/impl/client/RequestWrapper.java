package org.apache.http.impl.client;

import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolException;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.message.AbstractHttpMessage;
import org.apache.http.message.BasicRequestLine;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.Args;

@Deprecated
/* loaded from: classes12.dex */
public class RequestWrapper extends AbstractHttpMessage implements HttpUriRequest {

    /* renamed from: e */
    public final HttpRequest f110680e;

    /* renamed from: f */
    public URI f110681f;

    /* renamed from: g */
    public String f110682g;

    /* renamed from: h */
    public ProtocolVersion f110683h;

    /* renamed from: i */
    public int f110684i;

    public RequestWrapper(HttpRequest httpRequest) throws ProtocolException {
        Args.notNull(httpRequest, "HTTP request");
        this.f110680e = httpRequest;
        setParams(httpRequest.getParams());
        setHeaders(httpRequest.getAllHeaders());
        if (httpRequest instanceof HttpUriRequest) {
            HttpUriRequest httpUriRequest = (HttpUriRequest) httpRequest;
            this.f110681f = httpUriRequest.getURI();
            this.f110682g = httpUriRequest.getMethod();
            this.f110683h = null;
        } else {
            RequestLine requestLine = httpRequest.getRequestLine();
            try {
                this.f110681f = new URI(requestLine.getUri());
                this.f110682g = requestLine.getMethod();
                this.f110683h = httpRequest.getProtocolVersion();
            } catch (URISyntaxException e) {
                throw new ProtocolException("Invalid request URI: " + requestLine.getUri(), e);
            }
        }
        this.f110684i = 0;
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public void abort() throws UnsupportedOperationException {
        throw new UnsupportedOperationException();
    }

    public int getExecCount() {
        return this.f110684i;
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return this.f110682g;
    }

    public HttpRequest getOriginal() {
        return this.f110680e;
    }

    @Override // org.apache.http.HttpMessage
    public ProtocolVersion getProtocolVersion() {
        if (this.f110683h == null) {
            this.f110683h = HttpProtocolParams.getVersion(getParams());
        }
        return this.f110683h;
    }

    @Override // org.apache.http.HttpRequest
    public RequestLine getRequestLine() {
        ProtocolVersion protocolVersion = getProtocolVersion();
        URI uri = this.f110681f;
        String aSCIIString = uri != null ? uri.toASCIIString() : null;
        if (aSCIIString == null || aSCIIString.isEmpty()) {
            aSCIIString = "/";
        }
        return new BasicRequestLine(getMethod(), aSCIIString, protocolVersion);
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public URI getURI() {
        return this.f110681f;
    }

    public void incrementExecCount() {
        this.f110684i++;
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public boolean isAborted() {
        return false;
    }

    public boolean isRepeatable() {
        return true;
    }

    public void resetHeaders() {
        this.headergroup.clear();
        setHeaders(this.f110680e.getAllHeaders());
    }

    public void setMethod(String str) {
        Args.notNull(str, "Method name");
        this.f110682g = str;
    }

    public void setProtocolVersion(ProtocolVersion protocolVersion) {
        this.f110683h = protocolVersion;
    }

    public void setURI(URI uri) {
        this.f110681f = uri;
    }
}
