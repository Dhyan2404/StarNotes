package org.apache.http.impl.io;

import org.apache.http.io.HttpTransportMetrics;

/* loaded from: classes12.dex */
public class HttpTransportMetricsImpl implements HttpTransportMetrics {

    /* renamed from: a */
    public long f111015a = 0;

    @Override // org.apache.http.io.HttpTransportMetrics
    public long getBytesTransferred() {
        return this.f111015a;
    }

    public void incrementBytesTransferred(long j) {
        this.f111015a += j;
    }

    @Override // org.apache.http.io.HttpTransportMetrics
    public void reset() {
        this.f111015a = 0L;
    }

    public void setBytesTransferred(long j) {
        this.f111015a = j;
    }
}
