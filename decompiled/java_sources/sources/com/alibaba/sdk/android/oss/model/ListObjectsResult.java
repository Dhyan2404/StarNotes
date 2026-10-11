package com.alibaba.sdk.android.oss.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class ListObjectsResult extends OSSResult {

    /* renamed from: f */
    public List<OSSObjectSummary> f13222f = new ArrayList();

    /* renamed from: g */
    public List<String> f13223g = new ArrayList();

    /* renamed from: h */
    public String f13224h;

    /* renamed from: i */
    public String f13225i;

    /* renamed from: j */
    public boolean f13226j;

    /* renamed from: k */
    public String f13227k;

    /* renamed from: l */
    public String f13228l;

    /* renamed from: m */
    public int f13229m;

    /* renamed from: n */
    public String f13230n;

    /* renamed from: o */
    public String f13231o;

    public void addCommonPrefix(String str) {
        this.f13223g.add(str);
    }

    public void addObjectSummary(OSSObjectSummary oSSObjectSummary) {
        this.f13222f.add(oSSObjectSummary);
    }

    public void clearCommonPrefixes() {
        this.f13223g.clear();
    }

    public void clearObjectSummaries() {
        this.f13222f.clear();
    }

    public String getBucketName() {
        return this.f13224h;
    }

    public List<String> getCommonPrefixes() {
        return this.f13223g;
    }

    public String getDelimiter() {
        return this.f13230n;
    }

    public String getEncodingType() {
        return this.f13231o;
    }

    public String getMarker() {
        return this.f13228l;
    }

    public int getMaxKeys() {
        return this.f13229m;
    }

    public String getNextMarker() {
        return this.f13225i;
    }

    public List<OSSObjectSummary> getObjectSummaries() {
        return this.f13222f;
    }

    public String getPrefix() {
        return this.f13227k;
    }

    public boolean isTruncated() {
        return this.f13226j;
    }

    public void setBucketName(String str) {
        this.f13224h = str;
    }

    public void setDelimiter(String str) {
        this.f13230n = str;
    }

    public void setEncodingType(String str) {
        this.f13231o = str;
    }

    public void setMarker(String str) {
        this.f13228l = str;
    }

    public void setMaxKeys(int i) {
        this.f13229m = i;
    }

    public void setNextMarker(String str) {
        this.f13225i = str;
    }

    public void setPrefix(String str) {
        this.f13227k = str;
    }

    public void setTruncated(boolean z) {
        this.f13226j = z;
    }
}
