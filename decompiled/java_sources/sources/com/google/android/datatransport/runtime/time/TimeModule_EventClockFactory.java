package com.google.android.datatransport.runtime.time;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.dagger.internal.Preconditions;

/* loaded from: classes4.dex */
public final class TimeModule_EventClockFactory implements Factory<Clock> {

    /* renamed from: com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory$a */
    /* loaded from: classes4.dex */
    public static final class C4645a {

        /* renamed from: a */
        public static final TimeModule_EventClockFactory f22167a = new TimeModule_EventClockFactory();
    }

    public static TimeModule_EventClockFactory create() {
        return C4645a.f22167a;
    }

    public static Clock eventClock() {
        return (Clock) Preconditions.checkNotNull(TimeModule.m17601a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // javax.inject.Provider
    public Clock get() {
        return eventClock();
    }
}
