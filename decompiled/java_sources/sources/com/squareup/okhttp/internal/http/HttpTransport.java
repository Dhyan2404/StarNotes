package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import java.io.IOException;
import okio.Okio;
import okio.Sink;
import okio.Source;

/* loaded from: classes9.dex */
public final class HttpTransport implements Transport {

    /* renamed from: a */
    public final HttpEngine f63807a;

    /* renamed from: b */
    public final HttpConnection f63808b;

    public HttpTransport(HttpEngine httpEngine, HttpConnection httpConnection) {
        this.f63807a = httpEngine;
        this.f63808b = httpConnection;
    }

    /* renamed from: a */
    public final Source m52698a(Response response) throws IOException {
        if (!HttpEngine.hasBody(response)) {
            return this.f63808b.newFixedLengthSource(0L);
        }
        if ("chunked".equalsIgnoreCase(response.header("Transfer-Encoding"))) {
            return this.f63808b.newChunkedSource(this.f63807a);
        }
        long contentLength = OkHeaders.contentLength(response);
        return contentLength != -1 ? this.f63808b.newFixedLengthSource(contentLength) : this.f63808b.newUnknownLengthSource();
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public boolean canReuseConnection() {
        return ("close".equalsIgnoreCase(this.f63807a.getRequest().header("Connection")) || "close".equalsIgnoreCase(this.f63807a.getResponse().header("Connection")) || this.f63808b.isClosed()) ? false : true;
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public Sink createRequestBody(Request request, long j) throws IOException {
        if ("chunked".equalsIgnoreCase(request.header("Transfer-Encoding"))) {
            return this.f63808b.newChunkedSink();
        }
        if (j != -1) {
            return this.f63808b.newFixedLengthSink(j);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public void disconnect(HttpEngine httpEngine) throws IOException {
        this.f63808b.closeIfOwnedBy(httpEngine);
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public void finishRequest() throws IOException {
        this.f63808b.flush();
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public ResponseBody openResponseBody(Response response) throws IOException {
        return new RealResponseBody(response.headers(), Okio.buffer(m52698a(response)));
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public Response.Builder readResponseHeaders() throws IOException {
        return this.f63808b.readResponse();
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public void releaseConnectionOnIdle() throws IOException {
        if (canReuseConnection()) {
            this.f63808b.poolOnIdle();
        } else {
            this.f63808b.closeOnIdle();
        }
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public void writeRequestBody(RetryableSink retryableSink) throws IOException {
        this.f63808b.writeRequestBody(retryableSink);
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public void writeRequestHeaders(Request request) throws IOException {
        this.f63807a.writingRequestHeaders();
        this.f63808b.writeRequest(request.headers(), RequestLine.m52704a(request, this.f63807a.getConnection().getRoute().getProxy().type(), this.f63807a.getConnection().getProtocol()));
    }
}
