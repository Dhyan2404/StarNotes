package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.dagger.Module;
import com.google.android.datatransport.runtime.dagger.Provides;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.time.WallTime;

@Module
/* loaded from: classes4.dex */
public abstract class SchedulingConfigModule {
    @Provides
    /* renamed from: a */
    public static SchedulerConfig m17462a(@WallTime Clock clock) {
        return SchedulerConfig.getDefault(clock);
    }
}
