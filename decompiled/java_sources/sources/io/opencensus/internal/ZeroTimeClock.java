package io.opencensus.internal;

import io.opencensus.common.Clock;
import io.opencensus.common.Timestamp;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public final class ZeroTimeClock extends Clock {

    /* renamed from: a */
    public static final ZeroTimeClock f94694a = new ZeroTimeClock();

    /* renamed from: b */
    public static final Timestamp f94695b = Timestamp.create(0, 0);

    public static ZeroTimeClock getInstance() {
        return f94694a;
    }

    @Override // io.opencensus.common.Clock
    public Timestamp now() {
        return f94695b;
    }

    @Override // io.opencensus.common.Clock
    public long nowNanos() {
        return 0L;
    }
}
