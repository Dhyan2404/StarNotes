package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class DeleteBucketRequest extends OSSRequest {

    /* renamed from: c */
    public String f13129c;

    public DeleteBucketRequest(String str) {
        setBucketName(str);
    }

    public String getBucketName() {
        return this.f13129c;
    }

    public void setBucketName(String str) {
        this.f13129c = str;
    }
}
