package com.alibaba.sdk.android.oss.model;

import java.util.Date;

/* loaded from: classes3.dex */
public class OSSObjectSummary {

    /* renamed from: a */
    public String f13251a;

    /* renamed from: b */
    public String f13252b;

    /* renamed from: c */
    public String f13253c;

    /* renamed from: d */
    public String f13254d;

    /* renamed from: e */
    public long f13255e;

    /* renamed from: f */
    public Date f13256f;

    /* renamed from: g */
    public String f13257g;

    /* renamed from: h */
    public Owner f13258h;

    public String getBucketName() {
        return this.f13251a;
    }

    public String getETag() {
        return this.f13254d;
    }

    public String getKey() {
        return this.f13252b;
    }

    public Date getLastModified() {
        return this.f13256f;
    }

    public Owner getOwner() {
        return this.f13258h;
    }

    public long getSize() {
        return this.f13255e;
    }

    public String getStorageClass() {
        return this.f13257g;
    }

    public String getType() {
        return this.f13253c;
    }

    public void setBucketName(String str) {
        this.f13251a = str;
    }

    public void setETag(String str) {
        this.f13254d = str;
    }

    public void setKey(String str) {
        this.f13252b = str;
    }

    public void setLastModified(Date date) {
        this.f13256f = date;
    }

    public void setOwner(Owner owner) {
        this.f13258h = owner;
    }

    public void setSize(long j) {
        this.f13255e = j;
    }

    public void setStorageClass(String str) {
        this.f13257g = str;
    }

    public void setType(String str) {
        this.f13253c = str;
    }
}
