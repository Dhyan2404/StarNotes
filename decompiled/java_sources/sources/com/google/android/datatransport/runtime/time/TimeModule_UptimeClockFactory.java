package com.google.android.datatransport.runtime.time;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.dagger.internal.Preconditions;

/* loaded from: classes4.dex */
public final class TimeModule_UptimeClockFactory implements Factory<Clock> {

    /* renamed from: com.google.android.datatransport.runtime.time.TimeModule_UptimeClockFactory$a */
    /* loaded from: classes4.dex */
    public static final class C4646a {

        /* renamed from: a */
        public static final TimeModule_UptimeClockFactory f22168a = new TimeModule_UptimeClockFactory();
    }

    public static TimeModule_UptimeClockFactory create() {
        return C4646a.f22168a;
    }

    public static Clock uptimeClock() {
        return (Clock) Preconditions.checkNotNull(TimeModule.m17602b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // javax.inject.Provider
    public Clock get() {
        return uptimeClock();
    }
}
