package io.opencensus.common;

import com.sunia.HTREnginev2.C13723fk;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class ServerStats {
    public static ServerStats create(long j, long j2, byte b) {
        if (j < 0) {
            throw new IllegalArgumentException("'getLbLatencyNs' is less than zero: " + j);
        }
        if (j2 >= 0) {
            return new C13723fk(j, j2, b);
        }
        throw new IllegalArgumentException("'getServiceLatencyNs' is less than zero: " + j2);
    }

    public abstract long getLbLatencyNs();

    public abstract long getServiceLatencyNs();

    public abstract byte getTraceOption();
}
