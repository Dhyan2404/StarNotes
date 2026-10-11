package com.alibaba.sdk.android.oss.model;

import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;

/* loaded from: classes3.dex */
public class UploadPartRequest extends OSSRequest {

    /* renamed from: c */
    public String f13324c;

    /* renamed from: d */
    public String f13325d;

    /* renamed from: e */
    public String f13326e;

    /* renamed from: f */
    public int f13327f;

    /* renamed from: g */
    public byte[] f13328g;

    /* renamed from: h */
    public OSSProgressCallback<UploadPartRequest> f13329h;

    /* renamed from: i */
    public String f13330i;

    public UploadPartRequest() {
    }

    public String getBucketName() {
        return this.f13324c;
    }

    public String getMd5Digest() {
        return this.f13330i;
    }

    public String getObjectKey() {
        return this.f13325d;
    }

    public byte[] getPartContent() {
        return this.f13328g;
    }

    public int getPartNumber() {
        return this.f13327f;
    }

    public OSSProgressCallback<UploadPartRequest> getProgressCallback() {
        return this.f13329h;
    }

    public String getUploadId() {
        return this.f13326e;
    }

    public void setBucketName(String str) {
        this.f13324c = str;
    }

    public void setMd5Digest(String str) {
        this.f13330i = str;
    }

    public void setObjectKey(String str) {
        this.f13325d = str;
    }

    public void setPartContent(byte[] bArr) {
        this.f13328g = bArr;
    }

    public void setPartNumber(int i) {
        this.f13327f = i;
    }

    public void setProgressCallback(OSSProgressCallback<UploadPartRequest> oSSProgressCallback) {
        this.f13329h = oSSProgressCallback;
    }

    public void setUploadId(String str) {
        this.f13326e = str;
    }

    public UploadPartRequest(String str, String str2, String str3, int i) {
        this.f13324c = str;
        this.f13325d = str2;
        this.f13326e = str3;
        this.f13327f = i;
    }
}
