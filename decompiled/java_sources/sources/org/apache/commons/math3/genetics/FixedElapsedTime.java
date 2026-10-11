package org.apache.commons.math3.genetics;

import java.util.concurrent.TimeUnit;
import org.apache.commons.math3.exception.NumberIsTooSmallException;

/* loaded from: classes12.dex */
public class FixedElapsedTime implements StoppingCondition {

    /* renamed from: a */
    public final long f108204a;

    /* renamed from: b */
    public long f108205b;

    public FixedElapsedTime(long j) throws NumberIsTooSmallException {
        this(j, TimeUnit.SECONDS);
    }

    @Override // org.apache.commons.math3.genetics.StoppingCondition
    public boolean isSatisfied(Population population) {
        if (this.f108205b < 0) {
            this.f108205b = System.nanoTime() + this.f108204a;
        }
        return System.nanoTime() >= this.f108205b;
    }

    public FixedElapsedTime(long j, TimeUnit timeUnit) throws NumberIsTooSmallException {
        this.f108205b = -1L;
        if (j >= 0) {
            this.f108204a = timeUnit.toNanos(j);
            return;
        }
        throw new NumberIsTooSmallException(Long.valueOf(j), 0, true);
    }
}
