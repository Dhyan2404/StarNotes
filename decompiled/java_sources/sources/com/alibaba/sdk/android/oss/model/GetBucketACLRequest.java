package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class GetBucketACLRequest extends OSSRequest {

    /* renamed from: c */
    public String f13146c;

    public GetBucketACLRequest(String str) {
        setBucketName(str);
    }

    public String getBucketName() {
        return this.f13146c;
    }

    public void setBucketName(String str) {
        this.f13146c = str;
    }
}
