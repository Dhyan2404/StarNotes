package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.spdy.ErrorCode;
import com.squareup.okhttp.internal.spdy.Header;
import com.squareup.okhttp.internal.spdy.SpdyConnection;
import com.squareup.okhttp.internal.spdy.SpdyStream;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okio.ByteString;
import okio.Okio;
import okio.Sink;
import org.mortbay.jetty.HttpVersions;

/* loaded from: classes9.dex */
public final class SpdyTransport implements Transport {

    /* renamed from: d */
    public static final List<ByteString> f63830d = Util.immutableList(ByteString.encodeUtf8(Http2ExchangeCodec.f103777g), ByteString.encodeUtf8(Http2ExchangeCodec.f103778h), ByteString.encodeUtf8("keep-alive"), ByteString.encodeUtf8(Http2ExchangeCodec.f103780j), ByteString.encodeUtf8(Http2ExchangeCodec.f103781k));

    /* renamed from: e */
    public static final List<ByteString> f63831e = Util.immutableList(ByteString.encodeUtf8(Http2ExchangeCodec.f103777g), ByteString.encodeUtf8(Http2ExchangeCodec.f103778h), ByteString.encodeUtf8("keep-alive"), ByteString.encodeUtf8(Http2ExchangeCodec.f103780j), ByteString.encodeUtf8(Http2ExchangeCodec.f103782l), ByteString.encodeUtf8(Http2ExchangeCodec.f103781k), ByteString.encodeUtf8("encoding"), ByteString.encodeUtf8(Http2ExchangeCodec.f103784n));

    /* renamed from: a */
    public final HttpEngine f63832a;

    /* renamed from: b */
    public final SpdyConnection f63833b;

    /* renamed from: c */
    public SpdyStream f63834c;

    public SpdyTransport(HttpEngine httpEngine, SpdyConnection spdyConnection) {
        this.f63832a = httpEngine;
        this.f63833b = spdyConnection;
    }

    /* renamed from: a */
    public static boolean m52718a(Protocol protocol, ByteString byteString) {
        if (protocol == Protocol.SPDY_3) {
            return f63830d.contains(byteString);
        }
        if (protocol == Protocol.HTTP_2) {
            return f63831e.contains(byteString);
        }
        throw new AssertionError(protocol);
    }

    /* renamed from: b */
    public static String m52719b(String str, String str2) {
        return str + (char) 0 + str2;
    }

    public static Response.Builder readNameValueBlock(List<Header> list, Protocol protocol) throws IOException {
        Headers.Builder builder = new Headers.Builder();
        builder.set(OkHeaders.SELECTED_PROTOCOL, protocol.toString());
        int size = list.size();
        String str = null;
        String str2 = HttpVersions.HTTP_1_1;
        for (int i = 0; i < size; i++) {
            ByteString byteString = list.get(i).name;
            String utf8 = list.get(i).value.utf8();
            int i2 = 0;
            while (i2 < utf8.length()) {
                int indexOf = utf8.indexOf(0, i2);
                if (indexOf == -1) {
                    indexOf = utf8.length();
                }
                String substring = utf8.substring(i2, indexOf);
                if (byteString.equals(Header.RESPONSE_STATUS)) {
                    str = substring;
                } else if (byteString.equals(Header.VERSION)) {
                    str2 = substring;
                } else if (!m52718a(protocol, byteString)) {
                    builder.add(byteString.utf8(), substring);
                }
                i2 = indexOf + 1;
            }
        }
        if (str == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        StatusLine parse = StatusLine.parse(str2 + " " + str);
        return new Response.Builder().protocol(protocol).code(parse.code).message(parse.message).headers(builder.build());
    }

    public static List<Header> writeNameValueBlock(Request request, Protocol protocol, String str) {
        Headers headers = request.headers();
        ArrayList arrayList = new ArrayList(headers.size() + 10);
        arrayList.add(new Header(Header.TARGET_METHOD, request.method()));
        arrayList.add(new Header(Header.TARGET_PATH, RequestLine.requestPath(request.url())));
        String hostHeader = HttpEngine.hostHeader(request.url());
        if (Protocol.SPDY_3 == protocol) {
            arrayList.add(new Header(Header.VERSION, str));
            arrayList.add(new Header(Header.TARGET_HOST, hostHeader));
        } else {
            if (Protocol.HTTP_2 != protocol) {
                throw new AssertionError();
            }
            arrayList.add(new Header(Header.TARGET_AUTHORITY, hostHeader));
        }
        arrayList.add(new Header(Header.TARGET_SCHEME, request.url().getProtocol()));
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            ByteString encodeUtf8 = ByteString.encodeUtf8(headers.name(i).toLowerCase(Locale.US));
            String value = headers.value(i);
            if (!m52718a(protocol, encodeUtf8) && !encodeUtf8.equals(Header.TARGET_METHOD) && !encodeUtf8.equals(Header.TARGET_PATH) && !encodeUtf8.equals(Header.TARGET_SCHEME) && !encodeUtf8.equals(Header.TARGET_AUTHORITY) && !encodeUtf8.equals(Header.TARGET_HOST) && !encodeUtf8.equals(Header.VERSION)) {
                if (linkedHashSet.add(encodeUtf8)) {
                    arrayList.add(new Header(encodeUtf8, value));
                } else {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= arrayList.size()) {
                            break;
                        }
                        if (((Header) arrayList.get(i2)).name.equals(encodeUtf8)) {
                            arrayList.set(i2, new Header(encodeUtf8, m52719b(((Header) arrayList.get(i2)).value.utf8(), value)));
                            break;
                        }
                        i2++;
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public boolean canReuseConnection() {
        return true;
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public Sink createRequestBody(Request request, long j) throws IOException {
        return this.f63834c.getSink();
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public void disconnect(HttpEngine httpEngine) throws IOException {
        SpdyStream spdyStream = this.f63834c;
        if (spdyStream != null) {
            spdyStream.close(ErrorCode.CANCEL);
        }
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public void finishRequest() throws IOException {
        this.f63834c.getSink().close();
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public ResponseBody openResponseBody(Response response) throws IOException {
        return new RealResponseBody(response.headers(), Okio.buffer(this.f63834c.getSource()));
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public Response.Builder readResponseHeaders() throws IOException {
        return readNameValueBlock(this.f63834c.getResponseHeaders(), this.f63833b.getProtocol());
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public void releaseConnectionOnIdle() {
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public void writeRequestBody(RetryableSink retryableSink) throws IOException {
        retryableSink.writeToSocket(this.f63834c.getSink());
    }

    @Override // com.squareup.okhttp.internal.http.Transport
    public void writeRequestHeaders(Request request) throws IOException {
        if (this.f63834c != null) {
            return;
        }
        this.f63832a.writingRequestHeaders();
        boolean m52695p = this.f63832a.m52695p();
        String version = RequestLine.version(this.f63832a.getConnection().getProtocol());
        SpdyConnection spdyConnection = this.f63833b;
        SpdyStream newStream = spdyConnection.newStream(writeNameValueBlock(request, spdyConnection.getProtocol(), version), m52695p, true);
        this.f63834c = newStream;
        newStream.readTimeout().timeout(this.f63832a.f63779a.getReadTimeout(), TimeUnit.MILLISECONDS);
    }
}
