package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class InitiateMultipartUploadRequest extends OSSRequest {

    /* renamed from: c */
    public String f13179c;

    /* renamed from: d */
    public String f13180d;

    /* renamed from: e */
    public ObjectMetadata f13181e;
    public boolean isSequential;

    public InitiateMultipartUploadRequest(String str, String str2) {
        this(str, str2, null);
    }

    public String getBucketName() {
        return this.f13179c;
    }

    public ObjectMetadata getMetadata() {
        return this.f13181e;
    }

    public String getObjectKey() {
        return this.f13180d;
    }

    public void setBucketName(String str) {
        this.f13179c = str;
    }

    public void setMetadata(ObjectMetadata objectMetadata) {
        this.f13181e = objectMetadata;
    }

    public void setObjectKey(String str) {
        this.f13180d = str;
    }

    public InitiateMultipartUploadRequest(String str, String str2, ObjectMetadata objectMetadata) {
        setBucketName(str);
        setObjectKey(str2);
        setMetadata(objectMetadata);
    }
}
