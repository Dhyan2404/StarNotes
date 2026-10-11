package com.alibaba.sdk.android.oss.model;

import java.util.List;

/* loaded from: classes3.dex */
public class DeleteMultipleObjectRequest extends OSSRequest {

    /* renamed from: c */
    public String f13130c;

    /* renamed from: d */
    public List<String> f13131d;

    /* renamed from: e */
    public boolean f13132e;

    public DeleteMultipleObjectRequest(String str, List<String> list, Boolean bool) {
        setBucketName(str);
        setObjectKeys(list);
        setQuiet(bool);
    }

    public String getBucketName() {
        return this.f13130c;
    }

    public List<String> getObjectKeys() {
        return this.f13131d;
    }

    public Boolean getQuiet() {
        return Boolean.valueOf(this.f13132e);
    }

    public void setBucketName(String str) {
        this.f13130c = str;
    }

    public void setObjectKeys(List<String> list) {
        this.f13131d = list;
    }

    public void setQuiet(Boolean bool) {
        this.f13132e = bool.booleanValue();
    }
}
