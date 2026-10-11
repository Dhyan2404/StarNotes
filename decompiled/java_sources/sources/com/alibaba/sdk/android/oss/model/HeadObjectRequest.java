package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class HeadObjectRequest extends OSSRequest {

    /* renamed from: c */
    public String f13176c;

    /* renamed from: d */
    public String f13177d;

    public HeadObjectRequest(String str, String str2) {
        setBucketName(str);
        setObjectKey(str2);
    }

    public String getBucketName() {
        return this.f13176c;
    }

    public String getObjectKey() {
        return this.f13177d;
    }

    public void setBucketName(String str) {
        this.f13176c = str;
    }

    public void setObjectKey(String str) {
        this.f13177d = str;
    }
}
