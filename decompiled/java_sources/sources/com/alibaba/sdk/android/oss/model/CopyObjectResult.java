package com.alibaba.sdk.android.oss.model;

import java.util.Date;

/* loaded from: classes3.dex */
public class CopyObjectResult extends OSSResult {

    /* renamed from: f */
    public String f13121f;

    /* renamed from: g */
    public Date f13122g;

    public String getETag() {
        return this.f13121f;
    }

    public Date getLastModified() {
        return this.f13122g;
    }

    public void setEtag(String str) {
        this.f13121f = str;
    }

    public void setLastModified(Date date) {
        this.f13122g = date;
    }
}
