package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.time.Clock;
import java.util.Map;

/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.a */
/* loaded from: classes4.dex */
public final class C4636a extends SchedulerConfig {

    /* renamed from: e */
    public final Clock f22110e;

    /* renamed from: f */
    public final Map<Priority, SchedulerConfig.ConfigValue> f22111f;

    public C4636a(Clock clock, Map<Priority, SchedulerConfig.ConfigValue> map) {
        if (clock == null) {
            throw new NullPointerException("Null clock");
        }
        this.f22110e = clock;
        if (map == null) {
            throw new NullPointerException("Null values");
        }
        this.f22111f = map;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    /* renamed from: c */
    public Clock mo17475c() {
        return this.f22110e;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    /* renamed from: d */
    public Map<Priority, SchedulerConfig.ConfigValue> mo17476d() {
        return this.f22111f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig)) {
            return false;
        }
        SchedulerConfig schedulerConfig = (SchedulerConfig) obj;
        return this.f22110e.equals(schedulerConfig.mo17475c()) && this.f22111f.equals(schedulerConfig.mo17476d());
    }

    public int hashCode() {
        return this.f22111f.hashCode() ^ ((this.f22110e.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f22110e + ", values=" + this.f22111f + "}";
    }
}
