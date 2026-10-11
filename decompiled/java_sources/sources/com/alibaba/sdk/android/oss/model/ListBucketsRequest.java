package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class ListBucketsRequest extends OSSRequest {

    /* renamed from: f */
    public static final int f13185f = 1000;

    /* renamed from: c */
    public String f13186c;

    /* renamed from: d */
    public String f13187d;

    /* renamed from: e */
    public Integer f13188e;

    public ListBucketsRequest() {
    }

    public String getMarker() {
        return this.f13187d;
    }

    public Integer getMaxKeys() {
        return this.f13188e;
    }

    public String getPrefix() {
        return this.f13186c;
    }

    public void setMarker(String str) {
        this.f13187d = str;
    }

    public void setMaxKeys(Integer num) {
        this.f13188e = num;
    }

    public void setPrefix(String str) {
        this.f13186c = str;
    }

    public ListBucketsRequest(String str) {
        this(str, null);
    }

    public ListBucketsRequest(String str, String str2) {
        this(str, str2, 100);
    }

    public ListBucketsRequest(String str, String str2, Integer num) {
        this.f13186c = str;
        this.f13187d = str2;
        this.f13188e = num;
    }
}
