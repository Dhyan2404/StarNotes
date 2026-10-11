package org.apache.http.message;

import org.apache.http.HttpRequest;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class BasicHttpRequest extends AbstractHttpMessage implements HttpRequest {

    /* renamed from: e */
    public final String f111062e;

    /* renamed from: f */
    public final String f111063f;

    /* renamed from: g */
    public RequestLine f111064g;

    public BasicHttpRequest(String str, String str2) {
        this.f111062e = (String) Args.notNull(str, "Method name");
        this.f111063f = (String) Args.notNull(str2, "Request URI");
        this.f111064g = null;
    }

    @Override // org.apache.http.HttpMessage
    public ProtocolVersion getProtocolVersion() {
        return getRequestLine().getProtocolVersion();
    }

    @Override // org.apache.http.HttpRequest
    public RequestLine getRequestLine() {
        if (this.f111064g == null) {
            this.f111064g = new BasicRequestLine(this.f111062e, this.f111063f, HttpVersion.HTTP_1_1);
        }
        return this.f111064g;
    }

    public String toString() {
        return this.f111062e + ' ' + this.f111063f + ' ' + this.headergroup;
    }

    public BasicHttpRequest(String str, String str2, ProtocolVersion protocolVersion) {
        this(new BasicRequestLine(str, str2, protocolVersion));
    }

    public BasicHttpRequest(RequestLine requestLine) {
        this.f111064g = (RequestLine) Args.notNull(requestLine, "Request line");
        this.f111062e = requestLine.getMethod();
        this.f111063f = requestLine.getUri();
    }
}
