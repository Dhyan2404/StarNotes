package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class PutBucketLoggingRequest extends OSSRequest {

    /* renamed from: c */
    public String f13280c;

    /* renamed from: d */
    public String f13281d;

    /* renamed from: e */
    public String f13282e;

    public String getBucketName() {
        return this.f13280c;
    }

    public String getTargetBucketName() {
        return this.f13281d;
    }

    public String getTargetPrefix() {
        return this.f13282e;
    }

    public void setBucketName(String str) {
        this.f13280c = str;
    }

    public void setTargetBucketName(String str) {
        this.f13281d = str;
    }

    public void setTargetPrefix(String str) {
        this.f13282e = str;
    }
}
