package com.alibaba.sdk.android.oss.model;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public class GetBucketLifecycleResult extends OSSResult {

    /* renamed from: f */
    public ArrayList<BucketLifecycleRule> f13152f;

    public void addLifecycleRule(BucketLifecycleRule bucketLifecycleRule) {
        if (this.f13152f == null) {
            this.f13152f = new ArrayList<>();
        }
        this.f13152f.add(bucketLifecycleRule);
    }

    public ArrayList<BucketLifecycleRule> getlifecycleRules() {
        return this.f13152f;
    }

    public void setLifecycleRules(ArrayList<BucketLifecycleRule> arrayList) {
        this.f13152f = arrayList;
    }
}
