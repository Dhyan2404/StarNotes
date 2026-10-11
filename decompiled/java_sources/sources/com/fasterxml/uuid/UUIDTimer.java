package com.fasterxml.uuid;

import com.fasterxml.uuid.impl.LoggerFacade;
import java.io.IOException;
import java.util.Random;

/* loaded from: classes4.dex */
public class UUIDTimer {

    /* renamed from: g */
    public static final long f21366g = 122192928000000000L;

    /* renamed from: h */
    public static final int f21367h = 10000;

    /* renamed from: i */
    public static final long f21368i = 10000;

    /* renamed from: j */
    public static final long f21369j = 100;

    /* renamed from: k */
    public static final int f21370k = 50;
    protected final UUIDClock _clock;
    protected final Random _random;
    protected final TimestampSynchronizer _syncer;

    /* renamed from: a */
    public final LoggerFacade f21371a;

    /* renamed from: b */
    public int f21372b;

    /* renamed from: c */
    public long f21373c;

    /* renamed from: d */
    public long f21374d;

    /* renamed from: e */
    public long f21375e;

    /* renamed from: f */
    public int f21376f;

    public UUIDTimer(Random random, TimestampSynchronizer timestampSynchronizer) throws IOException {
        this(random, timestampSynchronizer, new UUIDClock());
    }

    /* renamed from: a */
    public final void m17315a(Random random) {
        int nextInt = random.nextInt();
        this.f21372b = nextInt;
        this.f21376f = (nextInt >> 16) & 255;
    }

    public final void getAndSetTimestamp(byte[] bArr) {
        long timestamp = getTimestamp();
        int i = this.f21372b;
        bArr[8] = (byte) i;
        bArr[9] = (byte) (i >> 8);
        int i2 = (int) (timestamp >>> 32);
        int i3 = (int) timestamp;
        bArr[6] = (byte) (i2 >>> 24);
        bArr[7] = (byte) (i2 >>> 16);
        bArr[4] = (byte) (i2 >>> 8);
        bArr[5] = (byte) i2;
        bArr[0] = (byte) (i3 >>> 24);
        bArr[1] = (byte) (i3 >>> 16);
        bArr[2] = (byte) (i3 >>> 8);
        bArr[3] = (byte) i3;
    }

    public int getClockSequence() {
        return this.f21372b & 65535;
    }

    public synchronized long getTimestamp() {
        long j;
        long currentTimeMillis = this._clock.currentTimeMillis();
        if (currentTimeMillis < this.f21373c) {
            this.f21371a.warn("System time going backwards! (got value %d, last %d)", Long.valueOf(currentTimeMillis), Long.valueOf(this.f21373c));
            this.f21373c = currentTimeMillis;
        }
        long j2 = this.f21374d;
        if (currentTimeMillis <= j2) {
            if (this.f21376f >= 10000) {
                long j3 = j2 - currentTimeMillis;
                j2++;
                this.f21371a.warn("Timestamp over-run: need to reinitialize random sequence");
                m17315a(this._random);
                if (j3 >= 100) {
                    slowDown(currentTimeMillis, j3);
                }
            }
            currentTimeMillis = j2;
        } else {
            this.f21376f &= 255;
        }
        this.f21374d = currentTimeMillis;
        TimestampSynchronizer timestampSynchronizer = this._syncer;
        if (timestampSynchronizer != null && currentTimeMillis >= this.f21375e) {
            try {
                this.f21375e = timestampSynchronizer.update(currentTimeMillis);
            } catch (IOException e) {
                throw new RuntimeException("Failed to synchronize timestamp: " + e);
            }
        }
        long j4 = (currentTimeMillis * 10000) + f21366g;
        int i = this.f21376f;
        j = j4 + i;
        this.f21376f = i + 1;
        return j;
    }

    public void slowDown(long j, long j2) {
        long j3 = j2 / 100;
        long j4 = 2;
        if (j3 < 2) {
            j4 = 1;
        } else if (j3 >= 10) {
            j4 = j3 < 600 ? 3L : 5L;
        }
        this.f21371a.warn("Need to wait for %d milliseconds; virtual clock advanced too far in the future", Long.valueOf(j4));
        long j5 = j + j4;
        int i = 0;
        while (true) {
            try {
                Thread.sleep(j4);
            } catch (InterruptedException unused) {
            }
            i++;
            if (i > 50 || System.currentTimeMillis() >= j5) {
                return;
            } else {
                j4 = 1;
            }
        }
    }

    public UUIDTimer(Random random, TimestampSynchronizer timestampSynchronizer, UUIDClock uUIDClock) throws IOException {
        this.f21371a = LoggerFacade.getLogger(getClass());
        this.f21373c = 0L;
        this.f21374d = 0L;
        this.f21375e = Long.MAX_VALUE;
        this.f21376f = 0;
        this._random = random;
        this._syncer = timestampSynchronizer;
        this._clock = uUIDClock;
        m17315a(random);
        this.f21373c = 0L;
        this.f21374d = 0L;
        if (timestampSynchronizer != null) {
            long initialize = timestampSynchronizer.initialize();
            if (initialize > this.f21374d) {
                this.f21374d = initialize;
            }
        }
        this.f21375e = 0L;
    }
}
