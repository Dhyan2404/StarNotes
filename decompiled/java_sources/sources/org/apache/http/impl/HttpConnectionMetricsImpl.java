package org.apache.http.impl;

import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.io.HttpTransportMetrics;

/* loaded from: classes12.dex */
public class HttpConnectionMetricsImpl implements HttpConnectionMetrics {
    public static final String RECEIVED_BYTES_COUNT = "http.received-bytes-count";
    public static final String REQUEST_COUNT = "http.request-count";
    public static final String RESPONSE_COUNT = "http.response-count";
    public static final String SENT_BYTES_COUNT = "http.sent-bytes-count";

    /* renamed from: a */
    public final HttpTransportMetrics f110405a;

    /* renamed from: b */
    public final HttpTransportMetrics f110406b;

    /* renamed from: c */
    public long f110407c = 0;

    /* renamed from: d */
    public long f110408d = 0;

    /* renamed from: e */
    public Map<String, Object> f110409e;

    public HttpConnectionMetricsImpl(HttpTransportMetrics httpTransportMetrics, HttpTransportMetrics httpTransportMetrics2) {
        this.f110405a = httpTransportMetrics;
        this.f110406b = httpTransportMetrics2;
    }

    @Override // org.apache.http.HttpConnectionMetrics
    public Object getMetric(String str) {
        Map<String, Object> map = this.f110409e;
        Object obj = map != null ? map.get(str) : null;
        if (obj != null) {
            return obj;
        }
        if (REQUEST_COUNT.equals(str)) {
            return Long.valueOf(this.f110407c);
        }
        if (RESPONSE_COUNT.equals(str)) {
            return Long.valueOf(this.f110408d);
        }
        if (RECEIVED_BYTES_COUNT.equals(str)) {
            HttpTransportMetrics httpTransportMetrics = this.f110405a;
            if (httpTransportMetrics != null) {
                return Long.valueOf(httpTransportMetrics.getBytesTransferred());
            }
            return null;
        }
        if (!SENT_BYTES_COUNT.equals(str)) {
            return obj;
        }
        HttpTransportMetrics httpTransportMetrics2 = this.f110406b;
        if (httpTransportMetrics2 != null) {
            return Long.valueOf(httpTransportMetrics2.getBytesTransferred());
        }
        return null;
    }

    @Override // org.apache.http.HttpConnectionMetrics
    public long getReceivedBytesCount() {
        HttpTransportMetrics httpTransportMetrics = this.f110405a;
        if (httpTransportMetrics != null) {
            return httpTransportMetrics.getBytesTransferred();
        }
        return -1L;
    }

    @Override // org.apache.http.HttpConnectionMetrics
    public long getRequestCount() {
        return this.f110407c;
    }

    @Override // org.apache.http.HttpConnectionMetrics
    public long getResponseCount() {
        return this.f110408d;
    }

    @Override // org.apache.http.HttpConnectionMetrics
    public long getSentBytesCount() {
        HttpTransportMetrics httpTransportMetrics = this.f110406b;
        if (httpTransportMetrics != null) {
            return httpTransportMetrics.getBytesTransferred();
        }
        return -1L;
    }

    public void incrementRequestCount() {
        this.f110407c++;
    }

    public void incrementResponseCount() {
        this.f110408d++;
    }

    @Override // org.apache.http.HttpConnectionMetrics
    public void reset() {
        HttpTransportMetrics httpTransportMetrics = this.f110406b;
        if (httpTransportMetrics != null) {
            httpTransportMetrics.reset();
        }
        HttpTransportMetrics httpTransportMetrics2 = this.f110405a;
        if (httpTransportMetrics2 != null) {
            httpTransportMetrics2.reset();
        }
        this.f110407c = 0L;
        this.f110408d = 0L;
        this.f110409e = null;
    }

    public void setMetric(String str, Object obj) {
        if (this.f110409e == null) {
            this.f110409e = new HashMap();
        }
        this.f110409e.put(str, obj);
    }
}
