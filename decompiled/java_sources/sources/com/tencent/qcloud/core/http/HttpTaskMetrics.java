package com.tencent.qcloud.core.http;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.net.InetAddress;
import java.util.List;

/* loaded from: classes10.dex */
public class HttpTaskMetrics {
    private long calculateMD5STookTime;
    private long calculateMD5StartTime;

    @Nullable
    InetAddress connectAddress;
    long connectStartTimestamp;
    long connectTookTime;
    long dnsLookupTookTime;
    long dnsStartTimestamp;

    @Nullable
    String domainName;
    private long fullTaskStartTime;
    private long fullTaskTookTime;
    private long httpTaskStartTime;
    private long httpTaskTookTime;
    private boolean isClockSkewedRetry;
    long readResponseBodyStartTimestamp;
    long readResponseBodyTookTime;
    long readResponseHeaderStartTimestamp;
    long readResponseHeaderTookTime;

    @Nullable
    List<InetAddress> remoteAddress;
    long requestBodyByteCount;
    long responseBodyByteCount;
    private int retryCount;
    long secureConnectStartTimestamp;
    long secureConnectTookTime;
    private long signRequestStartTime;
    private long signRequestTookTime;
    long writeRequestBodyStartTimestamp;
    long writeRequestBodyTookTime;
    long writeRequestHeaderStartTimestamp;
    long writeRequestHeaderTookTime;

    public static HttpTaskMetrics createMetricsWithHost(String str) {
        HttpTaskMetrics httpTaskMetrics = new HttpTaskMetrics();
        httpTaskMetrics.domainName = str;
        return httpTaskMetrics;
    }

    private double toSeconds(long j) {
        return j / 1.0E9d;
    }

    public double calculateMD5STookTime() {
        return toSeconds(this.calculateMD5STookTime);
    }

    public double connectTookTime() {
        return toSeconds(this.connectTookTime);
    }

    public double dnsLookupTookTime() {
        return toSeconds(this.dnsLookupTookTime);
    }

    public double fullTaskTookTime() {
        return toSeconds(this.fullTaskTookTime);
    }

    @Nullable
    public InetAddress getConnectAddress() {
        return this.connectAddress;
    }

    @Nullable
    public String getDomainName() {
        return this.domainName;
    }

    @Nullable
    public List<InetAddress> getRemoteAddress() {
        return this.remoteAddress;
    }

    public int getRetryCount() {
        return this.retryCount;
    }

    public double httpTaskFullTime() {
        return toSeconds(this.httpTaskTookTime);
    }

    public boolean isClockSkewedRetry() {
        return this.isClockSkewedRetry;
    }

    public synchronized HttpTaskMetrics merge(HttpTaskMetrics httpTaskMetrics) {
        String str;
        if (!TextUtils.isEmpty(this.domainName) && !TextUtils.isEmpty(httpTaskMetrics.domainName) && !this.domainName.equals(httpTaskMetrics.domainName)) {
            return this;
        }
        if (TextUtils.isEmpty(this.domainName) && (str = httpTaskMetrics.domainName) != null) {
            this.domainName = str;
        }
        this.dnsLookupTookTime = Math.max(httpTaskMetrics.dnsLookupTookTime, this.dnsLookupTookTime);
        this.connectTookTime = Math.max(httpTaskMetrics.connectTookTime, this.connectTookTime);
        this.secureConnectTookTime = Math.max(httpTaskMetrics.secureConnectTookTime, this.secureConnectTookTime);
        this.writeRequestHeaderTookTime += httpTaskMetrics.writeRequestHeaderTookTime;
        this.writeRequestBodyTookTime += httpTaskMetrics.writeRequestBodyTookTime;
        this.readResponseHeaderTookTime += httpTaskMetrics.readResponseHeaderTookTime;
        this.readResponseBodyTookTime += httpTaskMetrics.readResponseBodyTookTime;
        this.requestBodyByteCount += httpTaskMetrics.requestBodyByteCount;
        this.responseBodyByteCount += httpTaskMetrics.responseBodyByteCount;
        this.fullTaskTookTime += httpTaskMetrics.fullTaskTookTime;
        this.httpTaskTookTime += httpTaskMetrics.httpTaskTookTime;
        this.calculateMD5STookTime += httpTaskMetrics.calculateMD5STookTime;
        this.signRequestTookTime += httpTaskMetrics.signRequestTookTime;
        if (httpTaskMetrics.getRemoteAddress() != null) {
            this.remoteAddress = httpTaskMetrics.getRemoteAddress();
        }
        if (httpTaskMetrics.connectAddress != null) {
            this.connectAddress = httpTaskMetrics.getConnectAddress();
        }
        this.retryCount += httpTaskMetrics.retryCount;
        if (!this.isClockSkewedRetry) {
            this.isClockSkewedRetry = httpTaskMetrics.isClockSkewedRetry;
        }
        return this;
    }

    public void onCalculateMD5End() {
        this.calculateMD5STookTime += System.nanoTime() - this.calculateMD5StartTime;
    }

    public void onCalculateMD5Start() {
        this.calculateMD5StartTime = System.nanoTime();
    }

    public void onDataReady() {
    }

    public void onHttpTaskEnd() {
        this.httpTaskTookTime = System.nanoTime() - this.httpTaskStartTime;
    }

    public void onHttpTaskStart() {
        this.httpTaskStartTime = System.nanoTime();
    }

    public void onSignRequestEnd() {
        this.signRequestTookTime += System.nanoTime() - this.signRequestStartTime;
    }

    public void onSignRequestStart() {
        this.signRequestStartTime = System.nanoTime();
    }

    public void onTaskEnd() {
        this.fullTaskTookTime = System.nanoTime() - this.fullTaskStartTime;
        onDataReady();
    }

    public void onTaskStart() {
        this.fullTaskStartTime = System.nanoTime();
    }

    public double readResponseBodyTookTime() {
        return toSeconds(this.readResponseBodyTookTime);
    }

    public double readResponseHeaderTookTime() {
        return toSeconds(this.readResponseHeaderTookTime);
    }

    public void recordConnectAddress(InetAddress inetAddress) {
        if (inetAddress != null) {
            this.domainName = inetAddress.getHostName();
            this.connectAddress = inetAddress;
        }
    }

    public long requestBodyByteCount() {
        return this.requestBodyByteCount;
    }

    public long responseBodyByteCount() {
        return this.responseBodyByteCount;
    }

    public double secureConnectTookTime() {
        return toSeconds(this.secureConnectTookTime);
    }

    public void setClockSkewedRetry(boolean z) {
        this.isClockSkewedRetry = z;
    }

    public void setDomainName(@Nullable String str) {
        this.domainName = str;
    }

    public void setRetryCount(int i) {
        this.retryCount = i;
    }

    public double signRequestTookTime() {
        return toSeconds(this.signRequestTookTime);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Http Metrics: \n");
        sb.append("domain : ");
        sb.append(this.domainName);
        sb.append("\n");
        sb.append("connectAddress : ");
        InetAddress inetAddress = this.connectAddress;
        sb.append(inetAddress != null ? inetAddress.getHostAddress() : "null");
        sb.append("\n");
        sb.append("retryCount : ");
        sb.append(this.retryCount);
        sb.append("\n");
        sb.append("isClockSkewedRetry : ");
        sb.append(this.isClockSkewedRetry);
        sb.append("\n");
        sb.append("dns : ");
        List<InetAddress> list = this.remoteAddress;
        sb.append(list != null ? list : "null");
        sb.append("\n");
        sb.append("fullTaskTookTime : ");
        sb.append(fullTaskTookTime());
        sb.append("\n");
        sb.append("httpTaskTookTime : ");
        sb.append(httpTaskFullTime());
        sb.append("\n");
        sb.append("calculateMD5STookTime : ");
        sb.append(calculateMD5STookTime());
        sb.append("\n");
        sb.append("signRequestTookTime : ");
        sb.append(signRequestTookTime());
        sb.append("\n");
        sb.append("dnsStartTimestamp : ");
        sb.append(this.dnsStartTimestamp);
        sb.append("\n");
        sb.append("dnsLookupTookTime : ");
        sb.append(dnsLookupTookTime());
        sb.append("\n");
        sb.append("connectStartTimestamp : ");
        sb.append(this.connectStartTimestamp);
        sb.append("\n");
        sb.append("connectTookTime : ");
        sb.append(connectTookTime());
        sb.append("\n");
        sb.append("secureConnectStartTimestamp : ");
        sb.append(this.secureConnectStartTimestamp);
        sb.append("\n");
        sb.append("secureConnectTookTime : ");
        sb.append(secureConnectTookTime());
        sb.append("\n");
        sb.append("writeRequestHeaderStartTimestamp : ");
        sb.append(this.writeRequestHeaderStartTimestamp);
        sb.append("\n");
        sb.append("writeRequestHeaderTookTime : ");
        sb.append(writeRequestHeaderTookTime());
        sb.append("\n");
        sb.append("writeRequestBodyStartTimestamp : ");
        sb.append(this.writeRequestBodyStartTimestamp);
        sb.append("\n");
        sb.append("writeRequestBodyTookTime : ");
        sb.append(writeRequestBodyTookTime());
        sb.append("\n");
        sb.append("readResponseHeaderStartTimestamp : ");
        sb.append(this.readResponseHeaderStartTimestamp);
        sb.append("\n");
        sb.append("readResponseHeaderTookTime : ");
        sb.append(readResponseHeaderTookTime());
        sb.append("\n");
        sb.append("readResponseBodyStartTimestamp : ");
        sb.append(this.readResponseBodyStartTimestamp);
        sb.append("readResponseBodyTookTime : ");
        sb.append(readResponseBodyTookTime());
        return sb.toString();
    }

    public double writeRequestBodyTookTime() {
        return toSeconds(this.writeRequestBodyTookTime);
    }

    public double writeRequestHeaderTookTime() {
        return toSeconds(this.writeRequestHeaderTookTime);
    }
}
