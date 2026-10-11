package com.google.android.datatransport.runtime.time;

import com.google.android.datatransport.runtime.dagger.Module;
import com.google.android.datatransport.runtime.dagger.Provides;

@Module
/* loaded from: classes4.dex */
public abstract class TimeModule {
    @Provides
    @WallTime
    /* renamed from: a */
    public static Clock m17601a() {
        return new WallTimeClock();
    }

    @Provides
    @Monotonic
    /* renamed from: b */
    public static Clock m17602b() {
        return new UptimeClock();
    }
}
