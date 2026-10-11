package com.sunia.HTREnginev2;

import io.opencensus.common.Duration;

/* renamed from: com.sunia.HTREnginev2.qj */
/* loaded from: classes10.dex */
public final class C14306qj extends Duration {

    /* renamed from: e */
    public final long f82096e;

    /* renamed from: f */
    public final int f82097f;

    public C14306qj(long j, int i) {
        this.f82096e = j;
        this.f82097f = i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Duration)) {
            return false;
        }
        Duration duration = (Duration) obj;
        return this.f82096e == duration.getSeconds() && this.f82097f == duration.getNanos();
    }

    @Override // io.opencensus.common.Duration
    public int getNanos() {
        return this.f82097f;
    }

    @Override // io.opencensus.common.Duration
    public long getSeconds() {
        return this.f82096e;
    }

    public int hashCode() {
        long j = this.f82096e;
        return this.f82097f ^ (((int) (1000003 ^ (j ^ (j >>> 32)))) * 1000003);
    }

    public String toString() {
        return "Duration{seconds=" + this.f82096e + ", nanos=" + this.f82097f + "}";
    }
}
