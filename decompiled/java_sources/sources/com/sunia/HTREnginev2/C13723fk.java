package com.sunia.HTREnginev2;

import io.opencensus.common.ServerStats;

/* renamed from: com.sunia.HTREnginev2.fk */
/* loaded from: classes10.dex */
public final class C13723fk extends ServerStats {

    /* renamed from: a */
    public final long f70075a;

    /* renamed from: b */
    public final long f70076b;

    /* renamed from: c */
    public final byte f70077c;

    public C13723fk(long j, long j2, byte b) {
        this.f70075a = j;
        this.f70076b = j2;
        this.f70077c = b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ServerStats)) {
            return false;
        }
        ServerStats serverStats = (ServerStats) obj;
        return this.f70075a == serverStats.getLbLatencyNs() && this.f70076b == serverStats.getServiceLatencyNs() && this.f70077c == serverStats.getTraceOption();
    }

    @Override // io.opencensus.common.ServerStats
    public long getLbLatencyNs() {
        return this.f70075a;
    }

    @Override // io.opencensus.common.ServerStats
    public long getServiceLatencyNs() {
        return this.f70076b;
    }

    @Override // io.opencensus.common.ServerStats
    public byte getTraceOption() {
        return this.f70077c;
    }

    public int hashCode() {
        long j = this.f70075a;
        long j2 = ((int) (1000003 ^ (j ^ (j >>> 32)))) * 1000003;
        long j3 = this.f70076b;
        return this.f70077c ^ (((int) (j2 ^ (j3 ^ (j3 >>> 32)))) * 1000003);
    }

    public String toString() {
        return "ServerStats{lbLatencyNs=" + this.f70075a + ", serviceLatencyNs=" + this.f70076b + ", traceOption=" + ((int) this.f70077c) + "}";
    }
}
