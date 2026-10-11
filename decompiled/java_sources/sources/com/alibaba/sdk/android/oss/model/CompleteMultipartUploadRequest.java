package com.alibaba.sdk.android.oss.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class CompleteMultipartUploadRequest extends OSSRequest {

    /* renamed from: c */
    public String f13099c;

    /* renamed from: d */
    public String f13100d;

    /* renamed from: e */
    public String f13101e;

    /* renamed from: f */
    public List<PartETag> f13102f = new ArrayList();

    /* renamed from: g */
    public Map<String, String> f13103g;

    /* renamed from: h */
    public Map<String, String> f13104h;

    /* renamed from: i */
    public ObjectMetadata f13105i;

    public CompleteMultipartUploadRequest(String str, String str2, String str3, List<PartETag> list) {
        setBucketName(str);
        setObjectKey(str2);
        setUploadId(str3);
        setPartETags(list);
    }

    public String getBucketName() {
        return this.f13099c;
    }

    public Map<String, String> getCallbackParam() {
        return this.f13103g;
    }

    public Map<String, String> getCallbackVars() {
        return this.f13104h;
    }

    public ObjectMetadata getMetadata() {
        return this.f13105i;
    }

    public String getObjectKey() {
        return this.f13100d;
    }

    public List<PartETag> getPartETags() {
        return this.f13102f;
    }

    public String getUploadId() {
        return this.f13101e;
    }

    public void setBucketName(String str) {
        this.f13099c = str;
    }

    public void setCallbackParam(Map<String, String> map) {
        this.f13103g = map;
    }

    public void setCallbackVars(Map<String, String> map) {
        this.f13104h = map;
    }

    public void setMetadata(ObjectMetadata objectMetadata) {
        this.f13105i = objectMetadata;
    }

    public void setObjectKey(String str) {
        this.f13100d = str;
    }

    public void setPartETags(List<PartETag> list) {
        this.f13102f = list;
    }

    public void setUploadId(String str) {
        this.f13101e = str;
    }
}
