package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import androidx.annotation.RequiresApi;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C4637b;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.auto.value.AutoValue;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@AutoValue
/* loaded from: classes4.dex */
public abstract class SchedulerConfig {

    /* renamed from: a */
    public static final long f22076a = 86400000;

    /* renamed from: b */
    public static final long f22077b = 30000;

    /* renamed from: c */
    public static final long f22078c = 1000;

    /* renamed from: d */
    public static final long f22079d = 10000;

    /* loaded from: classes4.dex */
    public static class Builder {

        /* renamed from: a */
        public Clock f22080a;

        /* renamed from: b */
        public Map<Priority, ConfigValue> f22081b = new HashMap();

        public Builder addConfig(Priority priority, ConfigValue configValue) {
            this.f22081b.put(priority, configValue);
            return this;
        }

        public SchedulerConfig build() {
            if (this.f22080a == null) {
                throw new NullPointerException("missing required property: clock");
            }
            if (this.f22081b.keySet().size() < Priority.values().length) {
                throw new IllegalStateException("Not all priorities have been configured");
            }
            Map<Priority, ConfigValue> map = this.f22081b;
            this.f22081b = new HashMap();
            return SchedulerConfig.m17472b(this.f22080a, map);
        }

        public Builder setClock(Clock clock) {
            this.f22080a = clock;
            return this;
        }
    }

    @AutoValue
    /* loaded from: classes4.dex */
    public static abstract class ConfigValue {

        @AutoValue.Builder
        /* loaded from: classes4.dex */
        public static abstract class Builder {
            public abstract ConfigValue build();

            public abstract Builder setDelta(long j);

            public abstract Builder setFlags(Set<Flag> set);

            public abstract Builder setMaxAllowedDelay(long j);
        }

        public static Builder builder() {
            return new C4637b.b().setFlags(Collections.emptySet());
        }

        /* renamed from: a */
        public abstract long mo17478a();

        /* renamed from: b */
        public abstract Set<Flag> mo17479b();

        /* renamed from: c */
        public abstract long mo17480c();
    }

    /* loaded from: classes4.dex */
    public enum Flag {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* renamed from: b */
    public static SchedulerConfig m17472b(Clock clock, Map<Priority, ConfigValue> map) {
        return new C4636a(clock, map);
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: e */
    public static <T> Set<T> m17473e(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    public static SchedulerConfig getDefault(Clock clock) {
        return builder().addConfig(Priority.DEFAULT, ConfigValue.builder().setDelta(30000L).setMaxAllowedDelay(86400000L).build()).addConfig(Priority.HIGHEST, ConfigValue.builder().setDelta(1000L).setMaxAllowedDelay(86400000L).build()).addConfig(Priority.VERY_LOW, ConfigValue.builder().setDelta(86400000L).setMaxAllowedDelay(86400000L).setFlags(m17473e(Flag.DEVICE_IDLE)).build()).setClock(clock).build();
    }

    /* renamed from: a */
    public final long m17474a(int i, long j) {
        return (long) (Math.pow(3.0d, i - 1) * j * Math.max(1.0d, Math.log(10000.0d) / Math.log((j > 1 ? j : 2L) * r7)));
    }

    /* renamed from: c */
    public abstract Clock mo17475c();

    @RequiresApi(api = 21)
    public JobInfo.Builder configureJob(JobInfo.Builder builder, Priority priority, long j, int i) {
        builder.setMinimumLatency(getScheduleDelay(priority, j, i));
        m17477f(builder, mo17476d().get(priority).mo17479b());
        return builder;
    }

    /* renamed from: d */
    public abstract Map<Priority, ConfigValue> mo17476d();

    @RequiresApi(api = 21)
    /* renamed from: f */
    public final void m17477f(JobInfo.Builder builder, Set<Flag> set) {
        if (set.contains(Flag.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(Flag.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(Flag.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    public Set<Flag> getFlags(Priority priority) {
        return mo17476d().get(priority).mo17479b();
    }

    public long getScheduleDelay(Priority priority, long j, int i) {
        long time = j - mo17475c().getTime();
        ConfigValue configValue = mo17476d().get(priority);
        return Math.min(Math.max(m17474a(i, configValue.mo17478a()), time), configValue.mo17480c());
    }
}
