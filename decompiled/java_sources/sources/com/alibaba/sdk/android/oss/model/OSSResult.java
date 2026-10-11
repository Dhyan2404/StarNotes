package com.alibaba.sdk.android.oss.model;

import java.util.Map;

/* loaded from: classes3.dex */
public class OSSResult {

    /* renamed from: a */
    public int f13262a;

    /* renamed from: b */
    public Map<String, String> f13263b;

    /* renamed from: c */
    public String f13264c;

    /* renamed from: d */
    public Long f13265d;

    /* renamed from: e */
    public Long f13266e;

    public Long getClientCRC() {
        return this.f13265d;
    }

    public String getRequestId() {
        return this.f13264c;
    }

    public Map<String, String> getResponseHeader() {
        return this.f13263b;
    }

    public Long getServerCRC() {
        return this.f13266e;
    }

    public int getStatusCode() {
        return this.f13262a;
    }

    public void setClientCRC(Long l) {
        if (l == null || l.longValue() == 0) {
            return;
        }
        this.f13265d = l;
    }

    public void setRequestId(String str) {
        this.f13264c = str;
    }

    public void setResponseHeader(Map<String, String> map) {
        this.f13263b = map;
    }

    public void setServerCRC(Long l) {
        if (l == null || l.longValue() == 0) {
            return;
        }
        this.f13266e = l;
    }

    public void setStatusCode(int i) {
        this.f13262a = i;
    }

    public String toString() {
        return String.format("OSSResult<%s>: \nstatusCode:%d,\nresponseHeader:%s,\nrequestId:%s", super.toString(), Integer.valueOf(this.f13262a), this.f13263b.toString(), this.f13264c);
    }
}
