package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class ListObjectsRequest extends OSSRequest {

    /* renamed from: i */
    public static final int f13215i = 1000;

    /* renamed from: c */
    public String f13216c;

    /* renamed from: d */
    public String f13217d;

    /* renamed from: e */
    public String f13218e;

    /* renamed from: f */
    public Integer f13219f;

    /* renamed from: g */
    public String f13220g;

    /* renamed from: h */
    public String f13221h;

    public ListObjectsRequest() {
        this(null);
    }

    public String getBucketName() {
        return this.f13216c;
    }

    public String getDelimiter() {
        return this.f13220g;
    }

    public String getEncodingType() {
        return this.f13221h;
    }

    public String getMarker() {
        return this.f13218e;
    }

    public Integer getMaxKeys() {
        return this.f13219f;
    }

    public String getPrefix() {
        return this.f13217d;
    }

    public void setBucketName(String str) {
        this.f13216c = str;
    }

    public void setDelimiter(String str) {
        this.f13220g = str;
    }

    public void setEncodingType(String str) {
        this.f13221h = str;
    }

    public void setMarker(String str) {
        this.f13218e = str;
    }

    public void setMaxKeys(Integer num) {
        if (num.intValue() < 0 || num.intValue() > 1000) {
            throw new IllegalArgumentException("Maxkeys should less can not exceed 1000.");
        }
        this.f13219f = num;
    }

    public void setPrefix(String str) {
        this.f13217d = str;
    }

    public ListObjectsRequest(String str) {
        this(str, null, null, null, null);
    }

    public ListObjectsRequest(String str, String str2, String str3, String str4, Integer num) {
        setBucketName(str);
        setPrefix(str2);
        setMarker(str3);
        setDelimiter(str4);
        if (num != null) {
            setMaxKeys(num);
        }
    }
}
