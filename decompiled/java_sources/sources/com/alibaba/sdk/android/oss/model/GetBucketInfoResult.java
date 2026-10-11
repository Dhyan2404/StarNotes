package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class GetBucketInfoResult extends OSSResult {

    /* renamed from: f */
    public OSSBucketSummary f13150f;

    public OSSBucketSummary getBucket() {
        return this.f13150f;
    }

    public void setBucket(OSSBucketSummary oSSBucketSummary) {
        this.f13150f = oSSBucketSummary;
    }

    @Override // com.alibaba.sdk.android.oss.model.OSSResult
    public String toString() {
        return String.format("GetBucketInfoResult<%s>:\n bucket:%s", super.toString(), this.f13150f.toString());
    }
}
