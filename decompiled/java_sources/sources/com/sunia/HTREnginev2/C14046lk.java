package com.sunia.HTREnginev2;

import io.opencensus.common.Timestamp;

/* renamed from: com.sunia.HTREnginev2.lk */
/* loaded from: classes10.dex */
public final class C14046lk extends Timestamp {

    /* renamed from: e */
    public final long f76540e;

    /* renamed from: f */
    public final int f76541f;

    public C14046lk(long j, int i) {
        this.f76540e = j;
        this.f76541f = i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Timestamp)) {
            return false;
        }
        Timestamp timestamp = (Timestamp) obj;
        return this.f76540e == timestamp.getSeconds() && this.f76541f == timestamp.getNanos();
    }

    @Override // io.opencensus.common.Timestamp
    public int getNanos() {
        return this.f76541f;
    }

    @Override // io.opencensus.common.Timestamp
    public long getSeconds() {
        return this.f76540e;
    }

    public int hashCode() {
        long j = this.f76540e;
        return this.f76541f ^ (((int) (1000003 ^ (j ^ (j >>> 32)))) * 1000003);
    }

    public String toString() {
        return "Timestamp{seconds=" + this.f76540e + ", nanos=" + this.f76541f + "}";
    }
}
