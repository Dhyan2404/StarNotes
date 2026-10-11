package io.opencensus.common;

import com.sunia.HTREnginev2.C14046lk;
import com.sunia.HTREnginev2.lin;
import java.math.BigDecimal;
import java.math.RoundingMode;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class Timestamp implements Comparable<Timestamp> {
    /* renamed from: a */
    public static long m60947a(long j, long j2) {
        return BigDecimal.valueOf(j).divide(BigDecimal.valueOf(j2), 0, RoundingMode.FLOOR).longValue();
    }

    /* renamed from: b */
    public static long m60948b(long j, long j2) {
        return j - (m60947a(j, j2) * j2);
    }

    /* renamed from: c */
    public static Timestamp m60949c(long j, long j2) {
        return create(lin.m55438a(j, m60947a(j2, 1000000000L)), (int) m60948b(j2, 1000000000L));
    }

    public static Timestamp create(long j, int i) {
        if (j < -315576000000L) {
            throw new IllegalArgumentException("'seconds' is less than minimum (-315576000000): " + j);
        }
        if (j > lin.f76507a) {
            throw new IllegalArgumentException("'seconds' is greater than maximum (315576000000): " + j);
        }
        if (i < 0) {
            throw new IllegalArgumentException("'nanos' is less than zero: " + i);
        }
        if (i <= 999999999) {
            return new C14046lk(j, i);
        }
        throw new IllegalArgumentException("'nanos' is greater than maximum (999999999): " + i);
    }

    public static Timestamp fromMillis(long j) {
        return create(m60947a(j, 1000L), (int) (((int) m60948b(j, 1000L)) * 1000000));
    }

    public Timestamp addDuration(Duration duration) {
        return m60950d(duration.getSeconds(), duration.getNanos());
    }

    public Timestamp addNanos(long j) {
        return m60950d(0L, j);
    }

    /* renamed from: d */
    public final Timestamp m60950d(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return m60949c(lin.m55438a(lin.m55438a(getSeconds(), j), j2 / 1000000000), getNanos() + (j2 % 1000000000));
    }

    public abstract int getNanos();

    public abstract long getSeconds();

    public Duration subtractTimestamp(Timestamp timestamp) {
        long j;
        long seconds = getSeconds() - timestamp.getSeconds();
        int nanos = getNanos() - timestamp.getNanos();
        if (seconds >= 0 || nanos <= 0) {
            if (seconds > 0 && nanos < 0) {
                seconds--;
                j = nanos + 1000000000;
            }
            return Duration.create(seconds, nanos);
        }
        seconds++;
        j = nanos - 1000000000;
        nanos = (int) j;
        return Duration.create(seconds, nanos);
    }

    @Override // java.lang.Comparable
    public int compareTo(Timestamp timestamp) {
        int m55439b = lin.m55439b(getSeconds(), timestamp.getSeconds());
        return m55439b != 0 ? m55439b : lin.m55439b(getNanos(), timestamp.getNanos());
    }
}
