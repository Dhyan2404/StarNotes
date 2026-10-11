package onyx.org.apache.commons.io;

import java.time.Duration;
import java.time.Instant;
import java.time.temporal.TemporalAmount;

/* loaded from: classes11.dex */
public final class ThreadUtils {
    @Deprecated
    public ThreadUtils() {
    }

    /* renamed from: a */
    public static int m65191a(Duration duration) {
        return duration.getNano() % 1000000;
    }

    public static void sleep(Duration duration) throws InterruptedException {
        Instant plus = Instant.now().plus((TemporalAmount) duration);
        do {
            Thread.sleep(duration.toMillis(), m65191a(duration));
            duration = Duration.between(Instant.now(), plus);
        } while (!duration.isNegative());
    }
}
