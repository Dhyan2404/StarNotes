package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class PutSymlinkRequest extends OSSRequest {

    /* renamed from: c */
    public String f13298c;

    /* renamed from: d */
    public String f13299d;

    /* renamed from: e */
    public String f13300e;

    /* renamed from: f */
    public ObjectMetadata f13301f;

    public String getBucketName() {
        return this.f13298c;
    }

    public ObjectMetadata getMetadata() {
        return this.f13301f;
    }

    public String getObjectKey() {
        return this.f13299d;
    }

    public String getTargetObjectName() {
        return this.f13300e;
    }

    public void setBucketName(String str) {
        this.f13298c = str;
    }

    public void setMetadata(ObjectMetadata objectMetadata) {
        this.f13301f = objectMetadata;
    }

    public void setObjectKey(String str) {
        this.f13299d = str;
    }

    public void setTargetObjectName(String str) {
        this.f13300e = str;
    }
}
