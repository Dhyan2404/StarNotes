package com.sunia.HTREnginev2;

import com.google.firebase.heartbeatinfo.SdkHeartBeatResult;

/* renamed from: com.sunia.HTREnginev2.ek */
/* loaded from: classes6.dex */
public final class C13675ek extends SdkHeartBeatResult {

    /* renamed from: e */
    public final String f69013e;

    /* renamed from: f */
    public final long f69014f;

    public C13675ek(String str, long j) {
        if (str == null) {
            throw new NullPointerException("Null sdkName");
        }
        this.f69013e = str;
        this.f69014f = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SdkHeartBeatResult)) {
            return false;
        }
        SdkHeartBeatResult sdkHeartBeatResult = (SdkHeartBeatResult) obj;
        return this.f69013e.equals(sdkHeartBeatResult.getSdkName()) && this.f69014f == sdkHeartBeatResult.getMillis();
    }

    @Override // com.google.firebase.heartbeatinfo.SdkHeartBeatResult
    public long getMillis() {
        return this.f69014f;
    }

    @Override // com.google.firebase.heartbeatinfo.SdkHeartBeatResult
    public String getSdkName() {
        return this.f69013e;
    }

    public int hashCode() {
        int hashCode = (this.f69013e.hashCode() ^ 1000003) * 1000003;
        long j = this.f69014f;
        return ((int) (j ^ (j >>> 32))) ^ hashCode;
    }

    public String toString() {
        return "SdkHeartBeatResult{sdkName=" + this.f69013e + ", millis=" + this.f69014f + "}";
    }
}
