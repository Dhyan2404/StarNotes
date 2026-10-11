package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class DeleteObjectRequest extends OSSRequest {

    /* renamed from: c */
    public String f13136c;

    /* renamed from: d */
    public String f13137d;

    public DeleteObjectRequest(String str, String str2) {
        setBucketName(str);
        setObjectKey(str2);
    }

    public String getBucketName() {
        return this.f13136c;
    }

    public String getObjectKey() {
        return this.f13137d;
    }

    public void setBucketName(String str) {
        this.f13136c = str;
    }

    public void setObjectKey(String str) {
        this.f13137d = str;
    }
}
