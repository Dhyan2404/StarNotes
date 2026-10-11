package io.opencensus.metrics.export;

import com.sunia.HTREnginev2.C13528bk;
import io.opencensus.common.Timestamp;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class Point {
    public static Point create(Value value, Timestamp timestamp) {
        return new C13528bk(value, timestamp);
    }

    public abstract Timestamp getTimestamp();

    public abstract Value getValue();
}
