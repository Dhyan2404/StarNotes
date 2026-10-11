package com.alibaba.sdk.android.oss.model;

/* loaded from: classes3.dex */
public class OSSRequest {

    /* renamed from: a */
    public boolean f13259a = true;

    /* renamed from: b */
    public Enum f13260b = CRC64Config.NULL;

    /* loaded from: classes3.dex */
    public enum CRC64Config {
        NULL,
        YES,
        NO
    }

    public Enum getCRC64() {
        return this.f13260b;
    }

    public boolean isAuthorizationRequired() {
        return this.f13259a;
    }

    public void setCRC64(Enum r1) {
        this.f13260b = r1;
    }

    public void setIsAuthorizationRequired(boolean z) {
        this.f13259a = z;
    }
}
