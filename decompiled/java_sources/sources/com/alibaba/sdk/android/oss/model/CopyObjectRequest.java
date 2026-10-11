package com.alibaba.sdk.android.oss.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* loaded from: classes3.dex */
public class CopyObjectRequest extends OSSRequest {

    /* renamed from: c */
    public String f13111c;

    /* renamed from: d */
    public String f13112d;

    /* renamed from: e */
    public String f13113e;

    /* renamed from: f */
    public String f13114f;

    /* renamed from: g */
    public String f13115g;

    /* renamed from: h */
    public ObjectMetadata f13116h;

    /* renamed from: i */
    public List<String> f13117i = new ArrayList();

    /* renamed from: j */
    public List<String> f13118j = new ArrayList();

    /* renamed from: k */
    public Date f13119k;

    /* renamed from: l */
    public Date f13120l;

    public CopyObjectRequest(String str, String str2, String str3, String str4) {
        setSourceBucketName(str);
        setSourceKey(str2);
        setDestinationBucketName(str3);
        setDestinationKey(str4);
    }

    public void clearMatchingETagConstraints() {
        this.f13117i.clear();
    }

    public void clearNonmatchingETagConstraints() {
        this.f13118j.clear();
    }

    public String getDestinationBucketName() {
        return this.f13113e;
    }

    public String getDestinationKey() {
        return this.f13114f;
    }

    public List<String> getMatchingETagConstraints() {
        return this.f13117i;
    }

    public Date getModifiedSinceConstraint() {
        return this.f13120l;
    }

    public ObjectMetadata getNewObjectMetadata() {
        return this.f13116h;
    }

    public List<String> getNonmatchingEtagConstraints() {
        return this.f13118j;
    }

    public String getServerSideEncryption() {
        return this.f13115g;
    }

    public String getSourceBucketName() {
        return this.f13111c;
    }

    public String getSourceKey() {
        return this.f13112d;
    }

    public Date getUnmodifiedSinceConstraint() {
        return this.f13119k;
    }

    public void setDestinationBucketName(String str) {
        this.f13113e = str;
    }

    public void setDestinationKey(String str) {
        this.f13114f = str;
    }

    public void setMatchingETagConstraints(List<String> list) {
        this.f13117i.clear();
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f13117i.addAll(list);
    }

    public void setModifiedSinceConstraint(Date date) {
        this.f13120l = date;
    }

    public void setNewObjectMetadata(ObjectMetadata objectMetadata) {
        this.f13116h = objectMetadata;
    }

    public void setNonmatchingETagConstraints(List<String> list) {
        this.f13118j.clear();
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f13118j.addAll(list);
    }

    public void setServerSideEncryption(String str) {
        this.f13115g = str;
    }

    public void setSourceBucketName(String str) {
        this.f13111c = str;
    }

    public void setSourceKey(String str) {
        this.f13112d = str;
    }

    public void setUnmodifiedSinceConstraint(Date date) {
        this.f13119k = date;
    }
}
