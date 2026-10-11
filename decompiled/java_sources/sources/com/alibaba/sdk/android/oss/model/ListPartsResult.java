package com.alibaba.sdk.android.oss.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class ListPartsResult extends OSSResult {

    /* renamed from: f */
    public String f13237f;

    /* renamed from: g */
    public String f13238g;

    /* renamed from: h */
    public String f13239h;

    /* renamed from: k */
    public String f13242k;

    /* renamed from: i */
    public int f13240i = 0;

    /* renamed from: j */
    public int f13241j = 0;

    /* renamed from: l */
    public boolean f13243l = false;

    /* renamed from: m */
    public int f13244m = 0;

    /* renamed from: n */
    public List<PartSummary> f13245n = new ArrayList();

    public String getBucketName() {
        return this.f13237f;
    }

    public String getKey() {
        return this.f13238g;
    }

    public int getMaxParts() {
        return this.f13240i;
    }

    public int getNextPartNumberMarker() {
        return this.f13244m;
    }

    public int getPartNumberMarker() {
        return this.f13241j;
    }

    public List<PartSummary> getParts() {
        return this.f13245n;
    }

    public String getStorageClass() {
        return this.f13242k;
    }

    public String getUploadId() {
        return this.f13239h;
    }

    public boolean isTruncated() {
        return this.f13243l;
    }

    public void setBucketName(String str) {
        this.f13237f = str;
    }

    public void setKey(String str) {
        this.f13238g = str;
    }

    public void setMaxParts(int i) {
        this.f13240i = i;
    }

    public void setNextPartNumberMarker(int i) {
        this.f13244m = i;
    }

    public void setPartNumberMarker(int i) {
        this.f13241j = i;
    }

    public void setParts(List<PartSummary> list) {
        this.f13245n.clear();
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f13245n.addAll(list);
    }

    public void setStorageClass(String str) {
        this.f13242k = str;
    }

    public void setTruncated(boolean z) {
        this.f13243l = z;
    }

    public void setUploadId(String str) {
        this.f13239h = str;
    }
}
