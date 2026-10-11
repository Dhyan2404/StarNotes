package org.apache.logging.log4j.util;

import java.io.Serializable;
import java.text.DecimalFormat;

/* loaded from: classes12.dex */
public class Timer implements Serializable, StringBuilderFormattable {
    private static long NANO_PER_HOUR = 0;
    private static long NANO_PER_MINUTE = 0;
    private static long NANO_PER_SECOND = 1000000000;
    private static final long serialVersionUID = 9175191792439630013L;
    private long elapsedTime;
    private final int iterations;
    private final String name;
    private ThreadLocal<Long> startTime;
    private Status status;

    /* loaded from: classes12.dex */
    public enum Status {
        Started,
        Stopped,
        Paused
    }

    /* renamed from: org.apache.logging.log4j.util.Timer$a */
    /* loaded from: classes12.dex */
    public class C19409a extends ThreadLocal<Long> {
        public C19409a() {
        }

        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long initialValue() {
            return 0L;
        }
    }

    /* renamed from: org.apache.logging.log4j.util.Timer$b */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19410b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f111301a;

        static {
            int[] iArr = new int[Status.values().length];
            f111301a = iArr;
            try {
                iArr[Status.Started.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111301a[Status.Paused.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111301a[Status.Stopped.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        long j = 1000000000 * 60;
        NANO_PER_MINUTE = j;
        NANO_PER_HOUR = j * 60;
    }

    public Timer(final String name) {
        this(name, 0);
    }

    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof Timer)) {
            return false;
        }
        Timer timer = (Timer) o;
        if (this.elapsedTime != timer.elapsedTime || this.startTime != timer.startTime) {
            return false;
        }
        String str = this.name;
        if (str == null ? timer.name != null : !str.equals(timer.name)) {
            return false;
        }
        Status status = this.status;
        return status == null ? timer.status == null : status.equals(timer.status);
    }

    @Override // org.apache.logging.log4j.util.StringBuilderFormattable
    public void formatTo(final StringBuilder buffer) {
        String str;
        long j;
        buffer.append("Timer ");
        buffer.append(this.name);
        int i = C19410b.f111301a[this.status.ordinal()];
        if (i == 1) {
            buffer.append(" started");
            return;
        }
        if (i == 2) {
            buffer.append(" paused");
            return;
        }
        if (i != 3) {
            buffer.append(' ');
            buffer.append(this.status);
            return;
        }
        long j2 = this.elapsedTime;
        long j3 = NANO_PER_HOUR;
        long j4 = j2 / j3;
        long j5 = j2 % j3;
        long j6 = NANO_PER_MINUTE;
        long j7 = j5 / j6;
        long j8 = j5 % j6;
        long j9 = NANO_PER_SECOND;
        long j10 = j8 / j9;
        long j11 = j8 % j9;
        String str2 = "";
        if (j4 > 0) {
            str = "" + j4 + " hours ";
        } else {
            str = "";
        }
        if (j7 > 0 || j4 > 0) {
            str = str + j7 + " minutes ";
        }
        String str3 = (str + new DecimalFormat("#0").format(j10) + '.') + new DecimalFormat("000000000").format(j11) + " seconds";
        buffer.append(" stopped. Elapsed time: ");
        buffer.append(str3);
        int i2 = this.iterations;
        if (i2 > 0) {
            long j12 = this.elapsedTime / i2;
            long j13 = NANO_PER_HOUR;
            long j14 = j12 / j13;
            long j15 = j12 % j13;
            long j16 = NANO_PER_MINUTE;
            long j17 = j15 / j16;
            long j18 = j15 % j16;
            long j19 = NANO_PER_SECOND;
            long j20 = j18 / j19;
            long j21 = j18 % j19;
            if (j14 > 0) {
                str2 = "" + j14 + " hours ";
                j = 0;
            } else {
                j = 0;
            }
            if (j17 > j || j14 > 0) {
                str2 = str2 + j17 + " minutes ";
            }
            String str4 = (str2 + new DecimalFormat("#0").format(j20) + '.') + new DecimalFormat("000000000").format(j21) + " seconds";
            buffer.append(" Average per iteration: ");
            buffer.append(str4);
        }
    }

    public long getElapsedNanoTime() {
        return this.elapsedTime;
    }

    public long getElapsedTime() {
        return this.elapsedTime / 1000000;
    }

    public String getName() {
        return this.name;
    }

    public Status getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.name;
        int hashCode = (str != null ? str.hashCode() : 0) * 29;
        Status status = this.status;
        int hashCode2 = hashCode + (status != null ? status.hashCode() : 0);
        long longValue = this.startTime.get().longValue();
        int i = ((hashCode2 * 29) + ((int) (longValue ^ (longValue >>> 32)))) * 29;
        long j = this.elapsedTime;
        return i + ((int) (j ^ (j >>> 32)));
    }

    public synchronized void pause() {
        this.elapsedTime += System.nanoTime() - this.startTime.get().longValue();
        this.startTime.set(0L);
        this.status = Status.Paused;
    }

    public synchronized void resume() {
        this.startTime.set(Long.valueOf(System.nanoTime()));
        this.status = Status.Started;
    }

    public synchronized void start() {
        this.startTime.set(Long.valueOf(System.nanoTime()));
        this.elapsedTime = 0L;
        this.status = Status.Started;
    }

    public synchronized void startOrResume() {
        if (this.status == Status.Stopped) {
            start();
        } else {
            resume();
        }
    }

    public synchronized String stop() {
        this.elapsedTime += System.nanoTime() - this.startTime.get().longValue();
        this.startTime.set(0L);
        this.status = Status.Stopped;
        return toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        formatTo(sb);
        return sb.toString();
    }

    public Timer(final String name, final int iterations) {
        this.startTime = new C19409a();
        this.name = name;
        this.status = Status.Stopped;
        this.iterations = iterations <= 0 ? 0 : iterations;
    }
}
