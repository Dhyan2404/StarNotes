package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class InitiateMultipartUploadResult extends OSSResult {

    /* renamed from: f */
    public String f13182f;

    /* renamed from: g */
    public String f13183g;

    /* renamed from: h */
    public String f13184h;

    public String getBucketName() {
        return this.f13182f;
    }

    public String getObjectKey() {
        return this.f13183g;
    }

    public String getUploadId() {
        return this.f13184h;
    }

    public void setBucketName(String str) {
        this.f13182f = str;
    }

    public void setObjectKey(String str) {
        this.f13183g = str;
    }

    public void setUploadId(String str) {
        this.f13184h = str;
    }
}
