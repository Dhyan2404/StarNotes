package com.alibaba.sdk.android.oss.model;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public class PutBucketRefererRequest extends OSSRequest {

    /* renamed from: c */
    public String f13283c;

    /* renamed from: d */
    public boolean f13284d;

    /* renamed from: e */
    public ArrayList<String> f13285e;

    public String getBucketName() {
        return this.f13283c;
    }

    public ArrayList<String> getReferers() {
        return this.f13285e;
    }

    public boolean isAllowEmpty() {
        return this.f13284d;
    }

    public void setAllowEmpty(boolean z) {
        this.f13284d = z;
    }

    public void setBucketName(String str) {
        this.f13283c = str;
    }

    public void setReferers(ArrayList<String> arrayList) {
        this.f13285e = arrayList;
    }
}
