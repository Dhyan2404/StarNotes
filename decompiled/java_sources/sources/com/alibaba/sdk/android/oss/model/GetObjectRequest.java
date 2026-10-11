package com.alibaba.sdk.android.oss.model;

import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import java.util.Map;

/* loaded from: classes3.dex */
public class GetObjectRequest extends OSSRequest {

    /* renamed from: c */
    public String f13164c;

    /* renamed from: d */
    public String f13165d;

    /* renamed from: e */
    public Range f13166e;

    /* renamed from: f */
    public String f13167f;

    /* renamed from: g */
    public OSSProgressCallback f13168g;

    /* renamed from: h */
    public Map<String, String> f13169h;

    public GetObjectRequest(String str, String str2) {
        setBucketName(str);
        setObjectKey(str2);
    }

    public String getBucketName() {
        return this.f13164c;
    }

    public String getObjectKey() {
        return this.f13165d;
    }

    public OSSProgressCallback getProgressListener() {
        return this.f13168g;
    }

    public Range getRange() {
        return this.f13166e;
    }

    public Map<String, String> getRequestHeaders() {
        return this.f13169h;
    }

    public String getxOssProcess() {
        return this.f13167f;
    }

    public void setBucketName(String str) {
        this.f13164c = str;
    }

    public void setObjectKey(String str) {
        this.f13165d = str;
    }

    public void setProgressListener(OSSProgressCallback<GetObjectRequest> oSSProgressCallback) {
        this.f13168g = oSSProgressCallback;
    }

    public void setRange(Range range) {
        this.f13166e = range;
    }

    public void setRequestHeaders(Map<String, String> map) {
        this.f13169h = map;
    }

    public void setxOssProcess(String str) {
        this.f13167f = str;
    }
}
