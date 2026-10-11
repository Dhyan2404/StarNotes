package com.liulishuo.okdownload;

import android.os.SystemClock;
import com.liulishuo.okdownload.core.Util;

/* loaded from: classes4.dex */
public class SpeedCalculator {

    /* renamed from: a */
    public long f39243a;

    /* renamed from: b */
    public long f39244b;

    /* renamed from: c */
    public long f39245c;

    /* renamed from: d */
    public long f39246d;

    /* renamed from: e */
    public long f39247e;

    /* renamed from: f */
    public long f39248f;

    /* renamed from: a */
    public static String m30977a(long j, boolean z) {
        return Util.humanReadableBytes(j, z) + "/s";
    }

    public String averageSpeed() {
        return speedFromBegin();
    }

    /* renamed from: b */
    public long m30978b() {
        return SystemClock.uptimeMillis();
    }

    public synchronized void downloading(long j) {
        if (this.f39243a == 0) {
            long m30978b = m30978b();
            this.f39243a = m30978b;
            this.f39246d = m30978b;
        }
        this.f39244b += j;
        this.f39248f += j;
    }

    public synchronized void endTask() {
        this.f39247e = m30978b();
    }

    public synchronized void flush() {
        long m30978b = m30978b();
        long j = this.f39244b;
        long max = Math.max(1L, m30978b - this.f39243a);
        this.f39244b = 0L;
        this.f39243a = m30978b;
        this.f39245c = (((float) j) / ((float) max)) * 1000.0f;
    }

    public synchronized long getBytesPerSecondAndFlush() {
        long m30978b = m30978b() - this.f39243a;
        if (m30978b < 1000) {
            long j = this.f39245c;
            if (j != 0) {
                return j;
            }
        }
        if (this.f39245c == 0 && m30978b < 500) {
            return 0L;
        }
        return getInstantBytesPerSecondAndFlush();
    }

    public synchronized long getBytesPerSecondFromBegin() {
        long j;
        j = this.f39247e;
        if (j == 0) {
            j = m30978b();
        }
        return (((float) this.f39248f) / ((float) Math.max(1L, j - this.f39246d))) * 1000.0f;
    }

    public long getInstantBytesPerSecondAndFlush() {
        flush();
        return this.f39245c;
    }

    public synchronized long getInstantSpeedDurationMillis() {
        return m30978b() - this.f39243a;
    }

    public String getSpeedWithBinaryAndFlush() {
        return m30977a(getInstantBytesPerSecondAndFlush(), false);
    }

    public String getSpeedWithSIAndFlush() {
        return m30977a(getInstantBytesPerSecondAndFlush(), true);
    }

    public String instantSpeed() {
        return getSpeedWithSIAndFlush();
    }

    public String lastSpeed() {
        return m30977a(this.f39245c, true);
    }

    public synchronized void reset() {
        this.f39243a = 0L;
        this.f39244b = 0L;
        this.f39245c = 0L;
        this.f39246d = 0L;
        this.f39247e = 0L;
        this.f39248f = 0L;
    }

    public String speed() {
        return m30977a(getBytesPerSecondAndFlush(), true);
    }

    public String speedFromBegin() {
        return m30977a(getBytesPerSecondFromBegin(), true);
    }
}
