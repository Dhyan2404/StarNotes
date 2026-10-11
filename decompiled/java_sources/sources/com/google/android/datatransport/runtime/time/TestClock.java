package com.google.android.datatransport.runtime.time;

import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes4.dex */
public class TestClock implements Clock {

    /* renamed from: a */
    public final AtomicLong f22166a;

    public TestClock(long j) {
        this.f22166a = new AtomicLong(j);
    }

    public void advance(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("cannot advance time backwards.");
        }
        this.f22166a.addAndGet(j);
    }

    @Override // com.google.android.datatransport.runtime.time.Clock
    public long getTime() {
        return this.f22166a.get();
    }

    public void tick() {
        advance(1L);
    }
}
