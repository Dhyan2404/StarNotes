package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.Set;

/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.b */
/* loaded from: classes4.dex */
public final class C4637b extends SchedulerConfig.ConfigValue {

    /* renamed from: a */
    public final long f22112a;

    /* renamed from: b */
    public final long f22113b;

    /* renamed from: c */
    public final Set<SchedulerConfig.Flag> f22114c;

    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.b$b */
    /* loaded from: classes4.dex */
    public static final class b extends SchedulerConfig.ConfigValue.Builder {

        /* renamed from: a */
        public Long f22115a;

        /* renamed from: b */
        public Long f22116b;

        /* renamed from: c */
        public Set<SchedulerConfig.Flag> f22117c;

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue.Builder
        public SchedulerConfig.ConfigValue build() {
            String str = "";
            if (this.f22115a == null) {
                str = " delta";
            }
            if (this.f22116b == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.f22117c == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new C4637b(this.f22115a.longValue(), this.f22116b.longValue(), this.f22117c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue.Builder
        public SchedulerConfig.ConfigValue.Builder setDelta(long j) {
            this.f22115a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue.Builder
        public SchedulerConfig.ConfigValue.Builder setFlags(Set<SchedulerConfig.Flag> set) {
            if (set == null) {
                throw new NullPointerException("Null flags");
            }
            this.f22117c = set;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue.Builder
        public SchedulerConfig.ConfigValue.Builder setMaxAllowedDelay(long j) {
            this.f22116b = Long.valueOf(j);
            return this;
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    /* renamed from: a */
    public long mo17478a() {
        return this.f22112a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    /* renamed from: b */
    public Set<SchedulerConfig.Flag> mo17479b() {
        return this.f22114c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.ConfigValue
    /* renamed from: c */
    public long mo17480c() {
        return this.f22113b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig.ConfigValue)) {
            return false;
        }
        SchedulerConfig.ConfigValue configValue = (SchedulerConfig.ConfigValue) obj;
        return this.f22112a == configValue.mo17478a() && this.f22113b == configValue.mo17480c() && this.f22114c.equals(configValue.mo17479b());
    }

    public int hashCode() {
        long j = this.f22112a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        long j2 = this.f22113b;
        return this.f22114c.hashCode() ^ ((i ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f22112a + ", maxAllowedDelay=" + this.f22113b + ", flags=" + this.f22114c + "}";
    }

    public C4637b(long j, long j2, Set<SchedulerConfig.Flag> set) {
        this.f22112a = j;
        this.f22113b = j2;
        this.f22114c = set;
    }
}
