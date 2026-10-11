package com.alibaba.sdk.android.oss.model;

import java.util.Date;

/* loaded from: classes3.dex */
public class PartSummary {

    /* renamed from: a */
    public int f13274a;

    /* renamed from: b */
    public Date f13275b;

    /* renamed from: c */
    public String f13276c;

    /* renamed from: d */
    public long f13277d;

    public String getETag() {
        return this.f13276c;
    }

    public Date getLastModified() {
        return this.f13275b;
    }

    public int getPartNumber() {
        return this.f13274a;
    }

    public long getSize() {
        return this.f13277d;
    }

    public void setETag(String str) {
        this.f13276c = str;
    }

    public void setLastModified(Date date) {
        this.f13275b = date;
    }

    public void setPartNumber(int i) {
        this.f13274a = i;
    }

    public void setSize(long j) {
        this.f13277d = j;
    }
}
