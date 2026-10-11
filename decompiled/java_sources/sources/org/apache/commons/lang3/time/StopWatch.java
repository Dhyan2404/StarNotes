package org.apache.commons.lang3.time;

import java.util.concurrent.TimeUnit;

/* loaded from: classes12.dex */
public class StopWatch {

    /* renamed from: f */
    public static final long f107687f = 1000000;

    /* renamed from: a */
    public State f107688a = State.UNSTARTED;

    /* renamed from: b */
    public SplitState f107689b = SplitState.UNSPLIT;

    /* renamed from: c */
    public long f107690c;

    /* renamed from: d */
    public long f107691d;

    /* renamed from: e */
    public long f107692e;

    /* loaded from: classes12.dex */
    public enum SplitState {
        SPLIT,
        UNSPLIT
    }

    /* loaded from: classes12.dex */
    public enum State {
        UNSTARTED { // from class: org.apache.commons.lang3.time.StopWatch.State.1
            @Override // org.apache.commons.lang3.time.StopWatch.State
            public boolean isStarted() {
                return false;
            }

            @Override // org.apache.commons.lang3.time.StopWatch.State
            public boolean isStopped() {
                return true;
            }

            @Override // org.apache.commons.lang3.time.StopWatch.State
            public boolean isSuspended() {
                return false;
            }
        },
        RUNNING { // from class: org.apache.commons.lang3.time.StopWatch.State.2
            @Override // org.apache.commons.lang3.time.StopWatch.State
            public boolean isStarted() {
                return true;
            }

            @Override // org.apache.commons.lang3.time.StopWatch.State
            public boolean isStopped() {
                return false;
            }

            @Override // org.apache.commons.lang3.time.StopWatch.State
            public boolean isSuspended() {
                return false;
            }
        },
        STOPPED { // from class: org.apache.commons.lang3.time.StopWatch.State.3
            @Override // org.apache.commons.lang3.time.StopWatch.State
            public boolean isStarted() {
                return false;
            }

            @Override // org.apache.commons.lang3.time.StopWatch.State
            public boolean isStopped() {
                return true;
            }

            @Override // org.apache.commons.lang3.time.StopWatch.State
            public boolean isSuspended() {
                return false;
            }
        },
        SUSPENDED { // from class: org.apache.commons.lang3.time.StopWatch.State.4
            @Override // org.apache.commons.lang3.time.StopWatch.State
            public boolean isStarted() {
                return true;
            }

            @Override // org.apache.commons.lang3.time.StopWatch.State
            public boolean isStopped() {
                return false;
            }

            @Override // org.apache.commons.lang3.time.StopWatch.State
            public boolean isSuspended() {
                return true;
            }
        };

        public abstract boolean isStarted();

        public abstract boolean isStopped();

        public abstract boolean isSuspended();
    }

    public static StopWatch createStarted() {
        StopWatch stopWatch = new StopWatch();
        stopWatch.start();
        return stopWatch;
    }

    public long getNanoTime() {
        long j;
        long j2;
        State state = this.f107688a;
        if (state == State.STOPPED || state == State.SUSPENDED) {
            j = this.f107692e;
            j2 = this.f107690c;
        } else {
            if (state == State.UNSTARTED) {
                return 0L;
            }
            if (state != State.RUNNING) {
                throw new RuntimeException("Illegal running state has occurred.");
            }
            j = System.nanoTime();
            j2 = this.f107690c;
        }
        return j - j2;
    }

    public long getSplitNanoTime() {
        if (this.f107689b == SplitState.SPLIT) {
            return this.f107692e - this.f107690c;
        }
        throw new IllegalStateException("Stopwatch must be split to get the split time. ");
    }

    public long getSplitTime() {
        return getSplitNanoTime() / 1000000;
    }

    public long getStartTime() {
        if (this.f107688a != State.UNSTARTED) {
            return this.f107691d;
        }
        throw new IllegalStateException("Stopwatch has not been started");
    }

    public long getTime() {
        return getNanoTime() / 1000000;
    }

    public boolean isStarted() {
        return this.f107688a.isStarted();
    }

    public boolean isStopped() {
        return this.f107688a.isStopped();
    }

    public boolean isSuspended() {
        return this.f107688a.isSuspended();
    }

    public void reset() {
        this.f107688a = State.UNSTARTED;
        this.f107689b = SplitState.UNSPLIT;
    }

    public void resume() {
        if (this.f107688a != State.SUSPENDED) {
            throw new IllegalStateException("Stopwatch must be suspended to resume. ");
        }
        this.f107690c += System.nanoTime() - this.f107692e;
        this.f107688a = State.RUNNING;
    }

    public void split() {
        if (this.f107688a != State.RUNNING) {
            throw new IllegalStateException("Stopwatch is not running. ");
        }
        this.f107692e = System.nanoTime();
        this.f107689b = SplitState.SPLIT;
    }

    public void start() {
        State state = this.f107688a;
        if (state == State.STOPPED) {
            throw new IllegalStateException("Stopwatch must be reset before being restarted. ");
        }
        if (state != State.UNSTARTED) {
            throw new IllegalStateException("Stopwatch already started. ");
        }
        this.f107690c = System.nanoTime();
        this.f107691d = System.currentTimeMillis();
        this.f107688a = State.RUNNING;
    }

    public void stop() {
        State state = this.f107688a;
        State state2 = State.RUNNING;
        if (state != state2 && state != State.SUSPENDED) {
            throw new IllegalStateException("Stopwatch is not running. ");
        }
        if (state == state2) {
            this.f107692e = System.nanoTime();
        }
        this.f107688a = State.STOPPED;
    }

    public void suspend() {
        if (this.f107688a != State.RUNNING) {
            throw new IllegalStateException("Stopwatch must be running to suspend. ");
        }
        this.f107692e = System.nanoTime();
        this.f107688a = State.SUSPENDED;
    }

    public String toSplitString() {
        return DurationFormatUtils.formatDurationHMS(getSplitTime());
    }

    public String toString() {
        return DurationFormatUtils.formatDurationHMS(getTime());
    }

    public void unsplit() {
        if (this.f107689b != SplitState.SPLIT) {
            throw new IllegalStateException("Stopwatch has not been split. ");
        }
        this.f107689b = SplitState.UNSPLIT;
    }

    public long getTime(TimeUnit timeUnit) {
        return timeUnit.convert(getNanoTime(), TimeUnit.NANOSECONDS);
    }
}
