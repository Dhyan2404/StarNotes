package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class GetObjectACLRequest extends OSSRequest {

    /* renamed from: c */
    public String f13160c;

    /* renamed from: d */
    public String f13161d;

    public GetObjectACLRequest(String str, String str2) {
        setBucketName(str);
        setObjectKey(str2);
    }

    public String getBucketName() {
        return this.f13160c;
    }

    public String getObjectKey() {
        return this.f13161d;
    }

    public void setBucketName(String str) {
        this.f13160c = str;
    }

    public void setObjectKey(String str) {
        this.f13161d = str;
    }
}
