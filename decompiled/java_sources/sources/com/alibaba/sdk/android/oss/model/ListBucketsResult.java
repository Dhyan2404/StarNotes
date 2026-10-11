package com.alibaba.sdk.android.oss.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class ListBucketsResult extends OSSResult {

    /* renamed from: f */
    public String f13189f;

    /* renamed from: g */
    public String f13190g;

    /* renamed from: h */
    public int f13191h;

    /* renamed from: i */
    public boolean f13192i;

    /* renamed from: j */
    public String f13193j;

    /* renamed from: k */
    public String f13194k;

    /* renamed from: l */
    public String f13195l;

    /* renamed from: m */
    public List<OSSBucketSummary> f13196m = new ArrayList();

    public void addBucket(OSSBucketSummary oSSBucketSummary) {
        this.f13196m.add(oSSBucketSummary);
    }

    public void clearBucketList() {
        this.f13196m.clear();
    }

    public List<OSSBucketSummary> getBuckets() {
        return this.f13196m;
    }

    public String getMarker() {
        return this.f13190g;
    }

    public int getMaxKeys() {
        return this.f13191h;
    }

    public String getNextMarker() {
        return this.f13193j;
    }

    public String getOwnerDisplayName() {
        return this.f13195l;
    }

    public String getOwnerId() {
        return this.f13194k;
    }

    public String getPrefix() {
        return this.f13189f;
    }

    public boolean getTruncated() {
        return this.f13192i;
    }

    public void setBuckets(List<OSSBucketSummary> list) {
        this.f13196m = list;
    }

    public void setMarker(String str) {
        this.f13190g = str;
    }

    public void setMaxKeys(int i) {
        this.f13191h = i;
    }

    public void setNextMarker(String str) {
        this.f13193j = str;
    }

    public void setOwnerDisplayName(String str) {
        this.f13195l = str;
    }

    public void setOwnerId(String str) {
        this.f13194k = str;
    }

    public void setPrefix(String str) {
        this.f13189f = str;
    }

    public void setTruncated(boolean z) {
        this.f13192i = z;
    }
}
