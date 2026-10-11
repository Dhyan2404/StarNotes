package com.sunia.HTREnginev2;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;

/* loaded from: classes5.dex */
public final class iqp {

    /* renamed from: a */
    public final Clock f73505a;

    /* renamed from: b */
    public long f73506b;

    public iqp(Clock clock) {
        Preconditions.checkNotNull(clock);
        this.f73505a = clock;
    }

    /* renamed from: a */
    public final void m54768a() {
        this.f73506b = 0L;
    }

    /* renamed from: b */
    public final boolean m54769b(long j) {
        return this.f73506b == 0 || this.f73505a.elapsedRealtime() - this.f73506b >= 3600000;
    }

    /* renamed from: c */
    public final void m54770c() {
        this.f73506b = this.f73505a.elapsedRealtime();
    }
}
