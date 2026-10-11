package com.alibaba.sdk.android.oss.model;

import java.util.Map;

/* loaded from: classes3.dex */
public class TriggerCallbackRequest extends OSSRequest {

    /* renamed from: c */
    public String f13319c;

    /* renamed from: d */
    public String f13320d;

    /* renamed from: e */
    public Map<String, String> f13321e;

    /* renamed from: f */
    public Map<String, String> f13322f;

    public TriggerCallbackRequest(String str, String str2, Map<String, String> map, Map<String, String> map2) {
        setBucketName(str);
        setObjectKey(str2);
        setCallbackParam(map);
        setCallbackVars(map2);
    }

    public String getBucketName() {
        return this.f13319c;
    }

    public Map<String, String> getCallbackParam() {
        return this.f13321e;
    }

    public Map<String, String> getCallbackVars() {
        return this.f13322f;
    }

    public String getObjectKey() {
        return this.f13320d;
    }

    public void setBucketName(String str) {
        this.f13319c = str;
    }

    public void setCallbackParam(Map<String, String> map) {
        this.f13321e = map;
    }

    public void setCallbackVars(Map<String, String> map) {
        this.f13322f = map;
    }

    public void setObjectKey(String str) {
        this.f13320d = str;
    }
}
