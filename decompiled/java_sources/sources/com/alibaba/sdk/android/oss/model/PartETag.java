package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class PartETag {

    /* renamed from: a */
    public int f13270a;

    /* renamed from: b */
    public String f13271b;

    /* renamed from: c */
    public long f13272c;

    /* renamed from: d */
    public long f13273d;

    public PartETag(int i, String str) {
        setPartNumber(i);
        setETag(str);
    }

    public long getCRC64() {
        return this.f13273d;
    }

    public String getETag() {
        return this.f13271b;
    }

    public int getPartNumber() {
        return this.f13270a;
    }

    public long getPartSize() {
        return this.f13272c;
    }

    public void setCRC64(long j) {
        this.f13273d = j;
    }

    public void setETag(String str) {
        this.f13271b = str;
    }

    public void setPartNumber(int i) {
        this.f13270a = i;
    }

    public void setPartSize(long j) {
        this.f13272c = j;
    }
}
