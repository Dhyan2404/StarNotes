package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class AbortMultipartUploadRequest extends OSSRequest {

    /* renamed from: c */
    public String f13074c;

    /* renamed from: d */
    public String f13075d;

    /* renamed from: e */
    public String f13076e;

    public AbortMultipartUploadRequest(String str, String str2, String str3) {
        setBucketName(str);
        setObjectKey(str2);
        setUploadId(str3);
    }

    public String getBucketName() {
        return this.f13074c;
    }

    public String getObjectKey() {
        return this.f13075d;
    }

    public String getUploadId() {
        return this.f13076e;
    }

    public void setBucketName(String str) {
        this.f13074c = str;
    }

    public void setObjectKey(String str) {
        this.f13075d = str;
    }

    public void setUploadId(String str) {
        this.f13076e = str;
    }
}
