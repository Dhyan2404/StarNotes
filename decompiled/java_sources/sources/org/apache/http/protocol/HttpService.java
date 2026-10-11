package org.apache.http.protocol;

import java.io.IOException;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.MethodNotSupportedException;
import org.apache.http.ProtocolException;
import org.apache.http.UnsupportedHttpVersionException;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.DefaultHttpResponseFactory;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.EncodingUtils;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes12.dex */
public class HttpService {

    /* renamed from: a */
    public volatile HttpParams f111130a;

    /* renamed from: b */
    public volatile HttpProcessor f111131b;

    /* renamed from: c */
    public volatile HttpRequestHandlerMapper f111132c;

    /* renamed from: d */
    public volatile ConnectionReuseStrategy f111133d;

    /* renamed from: e */
    public volatile HttpResponseFactory f111134e;

    /* renamed from: f */
    public volatile HttpExpectationVerifier f111135f;

    @Deprecated
    /* renamed from: org.apache.http.protocol.HttpService$a */
    /* loaded from: classes12.dex */
    public static class C19390a implements HttpRequestHandlerMapper {

        /* renamed from: a */
        public final HttpRequestHandlerResolver f111136a;

        public C19390a(HttpRequestHandlerResolver httpRequestHandlerResolver) {
            this.f111136a = httpRequestHandlerResolver;
        }

        @Override // org.apache.http.protocol.HttpRequestHandlerMapper
        public HttpRequestHandler lookup(HttpRequest httpRequest) {
            return this.f111136a.lookup(httpRequest.getRequestLine().getUri());
        }
    }

    @Deprecated
    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory, HttpRequestHandlerResolver httpRequestHandlerResolver, HttpExpectationVerifier httpExpectationVerifier, HttpParams httpParams) {
        this(httpProcessor, connectionReuseStrategy, httpResponseFactory, new C19390a(httpRequestHandlerResolver), httpExpectationVerifier);
        this.f111130a = httpParams;
    }

    /* renamed from: a */
    public final boolean m68608a(HttpRequest httpRequest, HttpResponse httpResponse) {
        int statusCode;
        return ((httpRequest != null && "HEAD".equalsIgnoreCase(httpRequest.getRequestLine().getMethod())) || (statusCode = httpResponse.getStatusLine().getStatusCode()) < 200 || statusCode == 204 || statusCode == 304 || statusCode == 205) ? false : true;
    }

    public void doService(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        HttpRequestHandler lookup = this.f111132c != null ? this.f111132c.lookup(httpRequest) : null;
        if (lookup != null) {
            lookup.handle(httpRequest, httpResponse, httpContext);
        } else {
            httpResponse.setStatusCode(501);
        }
    }

    @Deprecated
    public HttpParams getParams() {
        return this.f111130a;
    }

    public void handleException(HttpException httpException, HttpResponse httpResponse) {
        if (httpException instanceof MethodNotSupportedException) {
            httpResponse.setStatusCode(501);
        } else if (httpException instanceof UnsupportedHttpVersionException) {
            httpResponse.setStatusCode(505);
        } else if (httpException instanceof ProtocolException) {
            httpResponse.setStatusCode(400);
        } else {
            httpResponse.setStatusCode(500);
        }
        String message = httpException.getMessage();
        if (message == null) {
            message = httpException.toString();
        }
        ByteArrayEntity byteArrayEntity = new ByteArrayEntity(EncodingUtils.getAsciiBytes(message));
        byteArrayEntity.setContentType("text/plain; charset=US-ASCII");
        httpResponse.setEntity(byteArrayEntity);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleRequest(org.apache.http.HttpServerConnection r9, org.apache.http.protocol.HttpContext r10) throws java.io.IOException, org.apache.http.HttpException {
        /*
            r8 = this;
            java.lang.String r0 = "http.connection"
            r10.setAttribute(r0, r9)
            r0 = 500(0x1f4, float:7.0E-43)
            r1 = 0
            org.apache.http.HttpRequest r2 = r9.receiveRequestHeader()     // Catch: org.apache.http.HttpException -> L83
            boolean r3 = r2 instanceof org.apache.http.HttpEntityEnclosingRequest     // Catch: org.apache.http.HttpException -> L81
            r4 = 200(0xc8, float:2.8E-43)
            if (r3 == 0) goto L5b
            r3 = r2
            org.apache.http.HttpEntityEnclosingRequest r3 = (org.apache.http.HttpEntityEnclosingRequest) r3     // Catch: org.apache.http.HttpException -> L81
            boolean r3 = r3.expectContinue()     // Catch: org.apache.http.HttpException -> L81
            if (r3 == 0) goto L55
            org.apache.http.HttpResponseFactory r3 = r8.f111134e     // Catch: org.apache.http.HttpException -> L81
            org.apache.http.HttpVersion r5 = org.apache.http.HttpVersion.HTTP_1_1     // Catch: org.apache.http.HttpException -> L81
            r6 = 100
            org.apache.http.HttpResponse r3 = r3.newHttpResponse(r5, r6, r10)     // Catch: org.apache.http.HttpException -> L81
            org.apache.http.protocol.HttpExpectationVerifier r5 = r8.f111135f     // Catch: org.apache.http.HttpException -> L81
            if (r5 == 0) goto L3c
            org.apache.http.protocol.HttpExpectationVerifier r5 = r8.f111135f     // Catch: org.apache.http.HttpException -> L2f
            r5.verify(r2, r3, r10)     // Catch: org.apache.http.HttpException -> L2f
            goto L3c
        L2f:
            r3 = move-exception
            org.apache.http.HttpResponseFactory r5 = r8.f111134e     // Catch: org.apache.http.HttpException -> L81
            org.apache.http.HttpVersion r6 = org.apache.http.HttpVersion.HTTP_1_0     // Catch: org.apache.http.HttpException -> L81
            org.apache.http.HttpResponse r5 = r5.newHttpResponse(r6, r0, r10)     // Catch: org.apache.http.HttpException -> L81
            r8.handleException(r3, r5)     // Catch: org.apache.http.HttpException -> L81
            r3 = r5
        L3c:
            org.apache.http.StatusLine r5 = r3.getStatusLine()     // Catch: org.apache.http.HttpException -> L81
            int r5 = r5.getStatusCode()     // Catch: org.apache.http.HttpException -> L81
            if (r5 >= r4) goto L53
            r9.sendResponseHeader(r3)     // Catch: org.apache.http.HttpException -> L81
            r9.flush()     // Catch: org.apache.http.HttpException -> L81
            r3 = r2
            org.apache.http.HttpEntityEnclosingRequest r3 = (org.apache.http.HttpEntityEnclosingRequest) r3     // Catch: org.apache.http.HttpException -> L81
            r9.receiveRequestEntity(r3)     // Catch: org.apache.http.HttpException -> L81
            goto L5b
        L53:
            r1 = r3
            goto L5b
        L55:
            r3 = r2
            org.apache.http.HttpEntityEnclosingRequest r3 = (org.apache.http.HttpEntityEnclosingRequest) r3     // Catch: org.apache.http.HttpException -> L81
            r9.receiveRequestEntity(r3)     // Catch: org.apache.http.HttpException -> L81
        L5b:
            java.lang.String r3 = "http.request"
            r10.setAttribute(r3, r2)     // Catch: org.apache.http.HttpException -> L81
            if (r1 != 0) goto L72
            org.apache.http.HttpResponseFactory r1 = r8.f111134e     // Catch: org.apache.http.HttpException -> L81
            org.apache.http.HttpVersion r3 = org.apache.http.HttpVersion.HTTP_1_1     // Catch: org.apache.http.HttpException -> L81
            org.apache.http.HttpResponse r1 = r1.newHttpResponse(r3, r4, r10)     // Catch: org.apache.http.HttpException -> L81
            org.apache.http.protocol.HttpProcessor r3 = r8.f111131b     // Catch: org.apache.http.HttpException -> L81
            r3.process(r2, r10)     // Catch: org.apache.http.HttpException -> L81
            r8.doService(r2, r1, r10)     // Catch: org.apache.http.HttpException -> L81
        L72:
            boolean r3 = r2 instanceof org.apache.http.HttpEntityEnclosingRequest     // Catch: org.apache.http.HttpException -> L81
            if (r3 == 0) goto L93
            r3 = r2
            org.apache.http.HttpEntityEnclosingRequest r3 = (org.apache.http.HttpEntityEnclosingRequest) r3     // Catch: org.apache.http.HttpException -> L81
            org.apache.http.HttpEntity r3 = r3.getEntity()     // Catch: org.apache.http.HttpException -> L81
            org.apache.http.util.EntityUtils.consume(r3)     // Catch: org.apache.http.HttpException -> L81
            goto L93
        L81:
            r1 = move-exception
            goto L87
        L83:
            r2 = move-exception
            r7 = r2
            r2 = r1
            r1 = r7
        L87:
            org.apache.http.HttpResponseFactory r3 = r8.f111134e
            org.apache.http.HttpVersion r4 = org.apache.http.HttpVersion.HTTP_1_0
            org.apache.http.HttpResponse r0 = r3.newHttpResponse(r4, r0, r10)
            r8.handleException(r1, r0)
            r1 = r0
        L93:
            java.lang.String r0 = "http.response"
            r10.setAttribute(r0, r1)
            org.apache.http.protocol.HttpProcessor r0 = r8.f111131b
            r0.process(r1, r10)
            r9.sendResponseHeader(r1)
            boolean r0 = r8.m68608a(r2, r1)
            if (r0 == 0) goto La9
            r9.sendResponseEntity(r1)
        La9:
            r9.flush()
            org.apache.http.ConnectionReuseStrategy r8 = r8.f111133d
            boolean r8 = r8.keepAlive(r1, r10)
            if (r8 != 0) goto Lb7
            r9.close()
        Lb7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.protocol.HttpService.handleRequest(org.apache.http.HttpServerConnection, org.apache.http.protocol.HttpContext):void");
    }

    @Deprecated
    public void setConnReuseStrategy(ConnectionReuseStrategy connectionReuseStrategy) {
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        this.f111133d = connectionReuseStrategy;
    }

    @Deprecated
    public void setExpectationVerifier(HttpExpectationVerifier httpExpectationVerifier) {
        this.f111135f = httpExpectationVerifier;
    }

    @Deprecated
    public void setHandlerResolver(HttpRequestHandlerResolver httpRequestHandlerResolver) {
        this.f111132c = new C19390a(httpRequestHandlerResolver);
    }

    @Deprecated
    public void setHttpProcessor(HttpProcessor httpProcessor) {
        Args.notNull(httpProcessor, "HTTP processor");
        this.f111131b = httpProcessor;
    }

    @Deprecated
    public void setParams(HttpParams httpParams) {
        this.f111130a = httpParams;
    }

    @Deprecated
    public void setResponseFactory(HttpResponseFactory httpResponseFactory) {
        Args.notNull(httpResponseFactory, "Response factory");
        this.f111134e = httpResponseFactory;
    }

    @Deprecated
    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory, HttpRequestHandlerResolver httpRequestHandlerResolver, HttpParams httpParams) {
        this(httpProcessor, connectionReuseStrategy, httpResponseFactory, new C19390a(httpRequestHandlerResolver), (HttpExpectationVerifier) null);
        this.f111130a = httpParams;
    }

    @Deprecated
    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory) {
        this.f111130a = null;
        this.f111131b = null;
        this.f111132c = null;
        this.f111133d = null;
        this.f111134e = null;
        this.f111135f = null;
        setHttpProcessor(httpProcessor);
        setConnReuseStrategy(connectionReuseStrategy);
        setResponseFactory(httpResponseFactory);
    }

    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory, HttpRequestHandlerMapper httpRequestHandlerMapper, HttpExpectationVerifier httpExpectationVerifier) {
        this.f111130a = null;
        this.f111131b = null;
        this.f111132c = null;
        this.f111133d = null;
        this.f111134e = null;
        this.f111135f = null;
        this.f111131b = (HttpProcessor) Args.notNull(httpProcessor, "HTTP processor");
        this.f111133d = connectionReuseStrategy == null ? DefaultConnectionReuseStrategy.INSTANCE : connectionReuseStrategy;
        this.f111134e = httpResponseFactory == null ? DefaultHttpResponseFactory.INSTANCE : httpResponseFactory;
        this.f111132c = httpRequestHandlerMapper;
        this.f111135f = httpExpectationVerifier;
    }

    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory, HttpRequestHandlerMapper httpRequestHandlerMapper) {
        this(httpProcessor, connectionReuseStrategy, httpResponseFactory, httpRequestHandlerMapper, (HttpExpectationVerifier) null);
    }

    public HttpService(HttpProcessor httpProcessor, HttpRequestHandlerMapper httpRequestHandlerMapper) {
        this(httpProcessor, (ConnectionReuseStrategy) null, (HttpResponseFactory) null, httpRequestHandlerMapper, (HttpExpectationVerifier) null);
    }
}
