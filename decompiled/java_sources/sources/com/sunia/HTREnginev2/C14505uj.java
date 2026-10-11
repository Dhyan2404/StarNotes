package com.sunia.HTREnginev2;

import com.google.firebase.heartbeatinfo.HeartBeatResult;
import java.util.List;

/* renamed from: com.sunia.HTREnginev2.uj */
/* loaded from: classes6.dex */
public final class C14505uj extends HeartBeatResult {

    /* renamed from: a */
    public final String f86530a;

    /* renamed from: b */
    public final List<String> f86531b;

    public C14505uj(String str, List<String> list) {
        if (str == null) {
            throw new NullPointerException("Null userAgent");
        }
        this.f86530a = str;
        if (list == null) {
            throw new NullPointerException("Null usedDates");
        }
        this.f86531b = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HeartBeatResult)) {
            return false;
        }
        HeartBeatResult heartBeatResult = (HeartBeatResult) obj;
        return this.f86530a.equals(heartBeatResult.getUserAgent()) && this.f86531b.equals(heartBeatResult.getUsedDates());
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatResult
    public List<String> getUsedDates() {
        return this.f86531b;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatResult
    public String getUserAgent() {
        return this.f86530a;
    }

    public int hashCode() {
        return this.f86531b.hashCode() ^ ((this.f86530a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "HeartBeatResult{userAgent=" + this.f86530a + ", usedDates=" + this.f86531b + "}";
    }
}
