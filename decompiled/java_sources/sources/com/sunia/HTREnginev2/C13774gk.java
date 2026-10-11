package com.sunia.HTREnginev2;

import com.google.firebase.StartupTime;

/* renamed from: com.sunia.HTREnginev2.gk */
/* loaded from: classes6.dex */
public final class C13774gk extends StartupTime {

    /* renamed from: a */
    public final long f71099a;

    /* renamed from: b */
    public final long f71100b;

    /* renamed from: c */
    public final long f71101c;

    public C13774gk(long j, long j2, long j3) {
        this.f71099a = j;
        this.f71100b = j2;
        this.f71101c = j3;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StartupTime)) {
            return false;
        }
        StartupTime startupTime = (StartupTime) obj;
        return this.f71099a == startupTime.getEpochMillis() && this.f71100b == startupTime.getElapsedRealtime() && this.f71101c == startupTime.getUptimeMillis();
    }

    @Override // com.google.firebase.StartupTime
    public long getElapsedRealtime() {
        return this.f71100b;
    }

    @Override // com.google.firebase.StartupTime
    public long getEpochMillis() {
        return this.f71099a;
    }

    @Override // com.google.firebase.StartupTime
    public long getUptimeMillis() {
        return this.f71101c;
    }

    public int hashCode() {
        long j = this.f71099a;
        long j2 = this.f71100b;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.f71101c;
        return ((int) ((j3 >>> 32) ^ j3)) ^ i;
    }

    public String toString() {
        return "StartupTime{epochMillis=" + this.f71099a + ", elapsedRealtime=" + this.f71100b + ", uptimeMillis=" + this.f71101c + "}";
    }
}
