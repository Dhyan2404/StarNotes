package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class CompleteMultipartUploadResult extends OSSResult {

    /* renamed from: f */
    public String f13106f;

    /* renamed from: g */
    public String f13107g;

    /* renamed from: h */
    public String f13108h;

    /* renamed from: i */
    public String f13109i;

    /* renamed from: j */
    public String f13110j;

    public String getBucketName() {
        return this.f13106f;
    }

    public String getETag() {
        return this.f13109i;
    }

    public String getLocation() {
        return this.f13108h;
    }

    public String getObjectKey() {
        return this.f13107g;
    }

    public String getServerCallbackReturnBody() {
        return this.f13110j;
    }

    public void setBucketName(String str) {
        this.f13106f = str;
    }

    public void setETag(String str) {
        this.f13109i = str;
    }

    public void setLocation(String str) {
        this.f13108h = str;
    }

    public void setObjectKey(String str) {
        this.f13107g = str;
    }

    public void setServerCallbackReturnBody(String str) {
        this.f13110j = str;
    }
}
