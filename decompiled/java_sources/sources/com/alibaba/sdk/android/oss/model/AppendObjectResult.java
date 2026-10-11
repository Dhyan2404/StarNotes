package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class AppendObjectResult extends OSSResult {

    /* renamed from: f */
    public long f13086f;

    /* renamed from: g */
    public String f13087g;

    public long getNextPosition() {
        return this.f13086f;
    }

    public String getObjectCRC64() {
        return this.f13087g;
    }

    public void setNextPosition(Long l) {
        this.f13086f = l.longValue();
    }

    public void setObjectCRC64(String str) {
        this.f13087g = str;
    }
}
