package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotMock;
import com.sunia.HTREnginev2.ipi;
import com.sunia.HTREnginev2.pnf;
import java.time.Duration;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@DoNotMock("Create an AbstractIdleService")
@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public interface Service {

    /* loaded from: classes6.dex */
    public static abstract class Listener {
        public void failed(State state, Throwable th) {
        }

        public void running() {
        }

        public void starting() {
        }

        public void stopping(State state) {
        }

        public void terminated(State state) {
        }
    }

    /* loaded from: classes6.dex */
    public enum State {
        NEW,
        STARTING,
        RUNNING,
        STOPPING,
        TERMINATED,
        FAILED
    }

    void addListener(Listener listener, Executor executor);

    void awaitRunning();

    void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException;

    default void awaitRunning(Duration duration) throws TimeoutException {
        awaitRunning(ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    void awaitTerminated();

    void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException;

    default void awaitTerminated(Duration duration) throws TimeoutException {
        awaitTerminated(ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    Throwable failureCause();

    boolean isRunning();

    @CanIgnoreReturnValue
    Service startAsync();

    State state();

    @CanIgnoreReturnValue
    Service stopAsync();
}
