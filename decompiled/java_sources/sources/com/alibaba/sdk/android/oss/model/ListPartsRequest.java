package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class ListPartsRequest extends OSSRequest {

    /* renamed from: c */
    public String f13232c;

    /* renamed from: d */
    public String f13233d;

    /* renamed from: e */
    public String f13234e;

    /* renamed from: f */
    public Integer f13235f;

    /* renamed from: g */
    public Integer f13236g;

    public ListPartsRequest(String str, String str2, String str3) {
        setBucketName(str);
        setObjectKey(str2);
        setUploadId(str3);
    }

    public String getBucketName() {
        return this.f13232c;
    }

    public Integer getMaxParts() {
        return this.f13235f;
    }

    public String getObjectKey() {
        return this.f13233d;
    }

    public Integer getPartNumberMarker() {
        return this.f13236g;
    }

    public String getUploadId() {
        return this.f13234e;
    }

    public void setBucketName(String str) {
        this.f13232c = str;
    }

    public void setMaxParts(int i) {
        this.f13235f = Integer.valueOf(i);
    }

    public void setObjectKey(String str) {
        this.f13233d = str;
    }

    public void setPartNumberMarker(Integer num) {
        this.f13236g = num;
    }

    public void setUploadId(String str) {
        this.f13234e = str;
    }
}
