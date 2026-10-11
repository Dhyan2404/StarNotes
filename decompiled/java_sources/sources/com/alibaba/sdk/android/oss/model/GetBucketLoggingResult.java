package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class GetBucketLoggingResult extends OSSResult {

    /* renamed from: f */
    public String f13154f;

    /* renamed from: g */
    public String f13155g;

    /* renamed from: h */
    public boolean f13156h = false;

    public String getTargetBucketName() {
        return this.f13154f;
    }

    public String getTargetPrefix() {
        return this.f13155g;
    }

    public boolean loggingEnabled() {
        return this.f13156h;
    }

    public void setLoggingEnabled(boolean z) {
        this.f13156h = z;
    }

    public void setTargetBucketName(String str) {
        this.f13154f = str;
    }

    public void setTargetPrefix(String str) {
        this.f13155g = str;
    }
}
