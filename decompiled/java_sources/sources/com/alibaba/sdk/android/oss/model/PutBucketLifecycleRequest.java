package com.alibaba.sdk.android.oss.model;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public class PutBucketLifecycleRequest extends OSSRequest {

    /* renamed from: c */
    public String f13278c;

    /* renamed from: d */
    public ArrayList<BucketLifecycleRule> f13279d;

    public String getBucketName() {
        return this.f13278c;
    }

    public ArrayList<BucketLifecycleRule> getLifecycleRules() {
        return this.f13279d;
    }

    public void setBucketName(String str) {
        this.f13278c = str;
    }

    public void setLifecycleRules(ArrayList<BucketLifecycleRule> arrayList) {
        this.f13279d = arrayList;
    }
}
