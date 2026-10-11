package com.alibaba.sdk.android.oss.model;

import com.alibaba.sdk.android.oss.common.HttpMethod;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class GeneratePresignedUrlRequest {

    /* renamed from: a */
    public HttpMethod f13138a;

    /* renamed from: b */
    public String f13139b;

    /* renamed from: c */
    public String f13140c;

    /* renamed from: d */
    public String f13141d;

    /* renamed from: e */
    public long f13142e;

    /* renamed from: f */
    public String f13143f;

    /* renamed from: g */
    public String f13144g;

    /* renamed from: h */
    public Map<String, String> f13145h;

    public GeneratePresignedUrlRequest(String str, String str2) {
        this(str, str2, 3600L);
    }

    public void addQueryParameter(String str, String str2) {
        this.f13145h.put(str, str2);
    }

    public String getBucketName() {
        return this.f13139b;
    }

    public String getContentMD5() {
        return this.f13144g;
    }

    public String getContentType() {
        return this.f13143f;
    }

    public long getExpiration() {
        return this.f13142e;
    }

    public String getKey() {
        return this.f13140c;
    }

    public HttpMethod getMethod() {
        return this.f13138a;
    }

    public String getProcess() {
        return this.f13141d;
    }

    public Map<String, String> getQueryParameter() {
        return this.f13145h;
    }

    public void setBucketName(String str) {
        this.f13139b = str;
    }

    public void setContentMD5(String str) {
        this.f13144g = str;
    }

    public void setContentType(String str) {
        this.f13143f = str;
    }

    public void setExpiration(long j) {
        this.f13142e = j;
    }

    public void setKey(String str) {
        this.f13140c = str;
    }

    public void setMethod(HttpMethod httpMethod) {
        if (httpMethod != HttpMethod.GET && httpMethod != HttpMethod.PUT) {
            throw new IllegalArgumentException("Only GET or PUT is supported!");
        }
        this.f13138a = httpMethod;
    }

    public void setProcess(String str) {
        this.f13141d = str;
    }

    public void setQueryParameter(Map<String, String> map) {
        if (map == null) {
            throw new NullPointerException("The argument 'queryParameter' is null.");
        }
        Map<String, String> map2 = this.f13145h;
        if (map2 != null && map2.size() > 0) {
            this.f13145h.clear();
        }
        this.f13145h.putAll(map);
    }

    public GeneratePresignedUrlRequest(String str, String str2, long j) {
        this(str, str2, 3600L, HttpMethod.GET);
    }

    public GeneratePresignedUrlRequest(String str, String str2, long j, HttpMethod httpMethod) {
        this.f13145h = new HashMap();
        this.f13139b = str;
        this.f13140c = str2;
        this.f13142e = j;
        this.f13138a = httpMethod;
    }
}
