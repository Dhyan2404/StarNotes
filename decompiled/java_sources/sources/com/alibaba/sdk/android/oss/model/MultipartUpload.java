package com.alibaba.sdk.android.oss.model;

import java.util.Date;

/* loaded from: classes3.dex */
public class MultipartUpload {

    /* renamed from: a */
    public String f13246a;

    /* renamed from: b */
    public String f13247b;

    /* renamed from: c */
    public String f13248c;

    /* renamed from: d */
    public Date f13249d;

    public Date getInitiated() {
        return this.f13249d;
    }

    public String getKey() {
        return this.f13246a;
    }

    public String getStorageClass() {
        return this.f13248c;
    }

    public String getUploadId() {
        return this.f13247b;
    }

    public void setInitiated(Date date) {
        this.f13249d = date;
    }

    public void setKey(String str) {
        this.f13246a = str;
    }

    public void setStorageClass(String str) {
        this.f13248c = str;
    }

    public void setUploadId(String str) {
        this.f13247b = str;
    }
}
