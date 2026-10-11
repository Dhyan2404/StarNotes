package com.dropbox.core.http;

import androidx.core.app.NotificationCompat;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.util.IOUtil;
import com.google.appengine.api.urlfetch.FetchOptions;
import com.google.appengine.api.urlfetch.HTTPHeader;
import com.google.appengine.api.urlfetch.HTTPMethod;
import com.google.appengine.api.urlfetch.HTTPRequest;
import com.google.appengine.api.urlfetch.HTTPResponse;
import com.google.appengine.api.urlfetch.URLFetchService;
import com.google.appengine.api.urlfetch.URLFetchServiceFactory;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes4.dex */
public class GoogleAppEngineRequestor extends HttpRequestor {

    /* renamed from: a */
    public final URLFetchService f16520a;

    /* renamed from: b */
    public final FetchOptions f16521b;

    /* renamed from: com.dropbox.core.http.GoogleAppEngineRequestor$a */
    /* loaded from: classes4.dex */
    public static class C2265a extends HttpRequestor.Uploader {

        /* renamed from: a */
        public final URLFetchService f16522a;

        /* renamed from: b */
        public final ByteArrayOutputStream f16523b;

        /* renamed from: c */
        public HTTPRequest f16524c;

        public C2265a(URLFetchService uRLFetchService, HTTPRequest hTTPRequest, ByteArrayOutputStream byteArrayOutputStream) {
            this.f16522a = uRLFetchService;
            this.f16524c = hTTPRequest;
            this.f16523b = byteArrayOutputStream;
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void abort() {
            if (this.f16524c == null) {
                throw new IllegalStateException("Uploader already closed.");
            }
            close();
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void close() {
            if (this.f16524c != null) {
                try {
                    this.f16523b.close();
                } catch (IOException unused) {
                }
                this.f16524c = null;
            }
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public HttpRequestor.Response finish() throws IOException {
            HTTPRequest hTTPRequest = this.f16524c;
            if (hTTPRequest == null) {
                throw new IllegalStateException("Uploader already closed.");
            }
            hTTPRequest.setPayload(this.f16523b.toByteArray());
            HttpRequestor.Response m10027c = GoogleAppEngineRequestor.m10027c(this.f16522a.fetch(this.f16524c));
            close();
            IOUtil.ProgressListener progressListener = this.progressListener;
            if (progressListener != null) {
                progressListener.onProgress(this.f16524c.getPayload().length);
            }
            return m10027c;
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public OutputStream getBody() {
            return this.f16523b;
        }
    }

    public GoogleAppEngineRequestor() {
        this(newDefaultOptions());
    }

    /* renamed from: c */
    public static HttpRequestor.Response m10027c(HTTPResponse hTTPResponse) {
        HashMap hashMap = new HashMap();
        for (HTTPHeader hTTPHeader : hTTPResponse.getHeadersUncombined()) {
            List list = (List) hashMap.get(hTTPHeader.getName());
            if (list == null) {
                list = new ArrayList();
                hashMap.put(hTTPHeader.getName(), list);
            }
            list.add(hTTPHeader.getValue());
        }
        return new HttpRequestor.Response(hTTPResponse.getResponseCode(), new ByteArrayInputStream(hTTPResponse.getContent()), hashMap);
    }

    public static FetchOptions newDefaultOptions() {
        return FetchOptions.Builder.withDefaults().validateCertificate().doNotFollowRedirects().disallowTruncate().setDeadline(Double.valueOf((HttpRequestor.DEFAULT_CONNECT_TIMEOUT_MILLIS + HttpRequestor.DEFAULT_READ_TIMEOUT_MILLIS) / 1000.0d));
    }

    /* renamed from: b */
    public final HTTPRequest m10028b(String str, HTTPMethod hTTPMethod, Iterable<HttpRequestor.Header> iterable) throws IOException {
        HTTPRequest hTTPRequest = new HTTPRequest(new URL(str), hTTPMethod, this.f16521b);
        for (HttpRequestor.Header header : iterable) {
            hTTPRequest.addHeader(new HTTPHeader(header.getKey(), header.getValue()));
        }
        return hTTPRequest;
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Response doGet(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        return m10027c(this.f16520a.fetch(m10028b(str, HTTPMethod.GET, iterable)));
    }

    public FetchOptions getOptions() {
        return this.f16521b;
    }

    public URLFetchService getService() {
        return this.f16520a;
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Uploader startPost(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        return new C2265a(this.f16520a, m10028b(str, HTTPMethod.POST, iterable), new ByteArrayOutputStream());
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Uploader startPut(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        return new C2265a(this.f16520a, m10028b(str, HTTPMethod.POST, iterable), new ByteArrayOutputStream());
    }

    public GoogleAppEngineRequestor(FetchOptions fetchOptions) {
        this(fetchOptions, URLFetchServiceFactory.getURLFetchService());
    }

    public GoogleAppEngineRequestor(FetchOptions fetchOptions, URLFetchService uRLFetchService) {
        if (fetchOptions == null) {
            throw new NullPointerException("options");
        }
        if (uRLFetchService != null) {
            this.f16521b = fetchOptions;
            this.f16520a = uRLFetchService;
            return;
        }
        throw new NullPointerException(NotificationCompat.CATEGORY_SERVICE);
    }
}
