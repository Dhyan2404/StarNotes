package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class HeadObjectResult extends OSSResult {

    /* renamed from: f */
    public ObjectMetadata f13178f = new ObjectMetadata();

    public ObjectMetadata getMetadata() {
        return this.f13178f;
    }

    public void setMetadata(ObjectMetadata objectMetadata) {
        this.f13178f = objectMetadata;
    }

    @Override // com.alibaba.sdk.android.oss.model.OSSResult
    public String toString() {
        return String.format("HeadObjectResult<%s>:\n metadata:%s", super.toString(), this.f13178f.toString());
    }
}
