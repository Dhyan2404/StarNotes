package com.google.firebase.heartbeatinfo;

import com.google.auto.value.AutoValue;
import com.sunia.HTREnginev2.C13675ek;

@AutoValue
/* loaded from: classes6.dex */
public abstract class SdkHeartBeatResult implements Comparable<SdkHeartBeatResult> {
    public static SdkHeartBeatResult create(String str, long j) {
        return new C13675ek(str, j);
    }

    public abstract long getMillis();

    public abstract String getSdkName();

    @Override // java.lang.Comparable
    public int compareTo(SdkHeartBeatResult sdkHeartBeatResult) {
        return getMillis() < sdkHeartBeatResult.getMillis() ? -1 : 1;
    }
}
