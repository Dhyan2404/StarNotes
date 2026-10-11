package org.apache.commons.lang3.concurrent;

import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes12.dex */
public class ThresholdCircuitBreaker extends AbstractCircuitBreaker<Long> {

    /* renamed from: d */
    public static final long f107526d = 0;

    /* renamed from: b */
    public final long f107527b;

    /* renamed from: c */
    public final AtomicLong f107528c = new AtomicLong(0);

    public ThresholdCircuitBreaker(long j) {
        this.f107527b = j;
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractCircuitBreaker, org.apache.commons.lang3.concurrent.CircuitBreaker
    public boolean checkState() throws CircuitBreakingException {
        return isOpen();
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractCircuitBreaker, org.apache.commons.lang3.concurrent.CircuitBreaker
    public void close() {
        super.close();
        this.f107528c.set(0L);
    }

    public long getThreshold() {
        return this.f107527b;
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractCircuitBreaker, org.apache.commons.lang3.concurrent.CircuitBreaker
    public boolean incrementAndCheckState(Long l) throws CircuitBreakingException {
        if (this.f107527b == 0) {
            open();
        }
        if (this.f107528c.addAndGet(l.longValue()) > this.f107527b) {
            open();
        }
        return checkState();
    }
}
