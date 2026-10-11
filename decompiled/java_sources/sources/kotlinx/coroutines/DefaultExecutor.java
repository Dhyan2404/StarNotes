package kotlinx.coroutines;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.EventLoopImplBase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0018\bÀ\u0002\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003B\t\b\u0002¢\u0006\u0004\bA\u0010\u0015J\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u0018\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014J\b\u0010\f\u001a\u00020\u0005H\u0016J$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u00072\n\u0010\u000e\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0013\u001a\u00020\u0005H\u0016J\u000f\u0010\u0016\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0007J\b\u0010\u0019\u001a\u00020\u0005H\u0002J\b\u0010\u001b\u001a\u00020\u001aH\u0002J\b\u0010\u001d\u001a\u00020\u001cH\u0002J\b\u0010\u001e\u001a\u00020\u0005H\u0002R\u0014\u0010 \u001a\u00020\u001f8\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010$\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010&\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010#R\u001e\u0010'\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b'\u0010(\u0012\u0004\b)\u0010\u0015R\u0014\u0010-\u001a\u00020*8\u0002X\u0082T¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u0010/\u001a\u00020*8\u0002X\u0082T¢\u0006\u0006\n\u0004\b.\u0010,R\u0014\u00101\u001a\u00020*8\u0002X\u0082T¢\u0006\u0006\n\u0004\b0\u0010,R\u0014\u00103\u001a\u00020*8\u0002X\u0082T¢\u0006\u0006\n\u0004\b2\u0010,R\u0014\u00105\u001a\u00020*8\u0002X\u0082T¢\u0006\u0006\n\u0004\b4\u0010,R\u0016\u00106\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u0010,R\u0014\u00109\u001a\u00020\u001a8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b7\u00108R\u0014\u0010<\u001a\u00020\u001c8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b:\u0010;R\u0014\u0010>\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b=\u0010;R\u0014\u0010@\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b?\u0010;¨\u0006B"}, m61528d2 = {"Lkotlinx/coroutines/DefaultExecutor;", "Lkotlinx/coroutines/EventLoopImplBase;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "task", "", "enqueue", "", "now", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "delayedTask", "reschedule", "shutdown", "timeMillis", BreakpointSQLiteHelper.f39283i, "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnTimeout", "run", "ensureStarted$kotlinx_coroutines_core", "()V", "ensureStarted", "timeout", "shutdownForTests", "p0", "Ljava/lang/Thread;", "k0", "", "o0", "j0", "", "THREAD_NAME", Constants.STRING_SIG, C4921e.f26537n, "J", "DEFAULT_KEEP_ALIVE_MS", "l", "KEEP_ALIVE_NANOS", "_thread", "Ljava/lang/Thread;", "get_thread$annotations", "", "m", "I", "FRESH", GoogleApiAvailabilityLight.f29016b, "ACTIVE", C4921e.f26528e, "SHUTDOWN_REQ", "p", "SHUTDOWN_ACK", "q", "SHUTDOWN", "debugStatus", "getThread", "()Ljava/lang/Thread;", "thread", "isThreadPresent$kotlinx_coroutines_core", Constants.BOOLEAN_VALUE_SIG, "isThreadPresent", "m0", "isShutDown", "n0", "isShutdownRequested", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nDefaultExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultExecutor.kt\nkotlinx/coroutines/DefaultExecutor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n1#2:188\n*E\n"})
/* loaded from: classes11.dex */
public final class DefaultExecutor extends EventLoopImplBase implements Runnable {

    @NotNull
    public static final DefaultExecutor INSTANCE;

    @NotNull
    public static final String THREAD_NAME = "kotlinx.coroutines.DefaultExecutor";

    @Nullable
    private static volatile Thread _thread = null;
    private static volatile int debugStatus = 0;

    /* renamed from: k, reason: from kotlin metadata */
    public static final long DEFAULT_KEEP_ALIVE_MS = 1000;

    /* renamed from: l, reason: from kotlin metadata */
    public static final long KEEP_ALIVE_NANOS;

    /* renamed from: m, reason: from kotlin metadata */
    public static final int FRESH = 0;

    /* renamed from: n, reason: from kotlin metadata */
    public static final int ACTIVE = 1;

    /* renamed from: o, reason: from kotlin metadata */
    public static final int SHUTDOWN_REQ = 2;

    /* renamed from: p, reason: from kotlin metadata */
    public static final int SHUTDOWN_ACK = 3;

    /* renamed from: q, reason: from kotlin metadata */
    public static final int SHUTDOWN = 4;

    static {
        Long l;
        DefaultExecutor defaultExecutor = new DefaultExecutor();
        INSTANCE = defaultExecutor;
        EventLoop.incrementUseCount$default(defaultExecutor, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l = 1000L;
        }
        KEEP_ALIVE_NANOS = timeUnit.toNanos(l.longValue());
    }

    /* renamed from: l0 */
    public static /* synthetic */ void m61605l0() {
    }

    @Override // kotlinx.coroutines.EventLoopImplBase
    public void enqueue(@NotNull Runnable task) {
        if (m61608m0()) {
            m61611p0();
        }
        super.enqueue(task);
    }

    public final synchronized void ensureStarted$kotlinx_coroutines_core() {
        debugStatus = 0;
        m61607k0();
        while (debugStatus == 0) {
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            wait();
        }
    }

    @Override // kotlinx.coroutines.EventLoopImplPlatform
    @NotNull
    public Thread getThread() {
        Thread thread = _thread;
        return thread == null ? m61607k0() : thread;
    }

    @Override // kotlinx.coroutines.EventLoopImplBase, kotlinx.coroutines.Delay
    @NotNull
    public DisposableHandle invokeOnTimeout(long timeMillis, @NotNull Runnable block, @NotNull CoroutineContext context) {
        return scheduleInvokeOnTimeout(timeMillis, block);
    }

    public final boolean isThreadPresent$kotlinx_coroutines_core() {
        return _thread != null;
    }

    /* renamed from: j0 */
    public final synchronized void m61606j0() {
        if (m61609n0()) {
            debugStatus = 3;
            resetAll();
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    /* renamed from: k0 */
    public final synchronized Thread m61607k0() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, THREAD_NAME);
            _thread = thread;
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    /* renamed from: m0 */
    public final boolean m61608m0() {
        return debugStatus == 4;
    }

    /* renamed from: n0 */
    public final boolean m61609n0() {
        int i = debugStatus;
        return i == 2 || i == 3;
    }

    /* renamed from: o0 */
    public final synchronized boolean m61610o0() {
        if (m61609n0()) {
            return false;
        }
        debugStatus = 1;
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
        return true;
    }

    /* renamed from: p0 */
    public final void m61611p0() {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // kotlinx.coroutines.EventLoopImplPlatform
    public void reschedule(long now, @NotNull EventLoopImplBase.DelayedTask delayedTask) {
        m61611p0();
    }

    @Override // java.lang.Runnable
    public void run() {
        Unit unit;
        boolean isEmpty;
        ThreadLocalEventLoop.INSTANCE.setEventLoop$kotlinx_coroutines_core(this);
        AbstractTimeSource timeSource = AbstractTimeSourceKt.getTimeSource();
        if (timeSource != null) {
            timeSource.registerTimeLoopThread();
        }
        try {
            if (!m61610o0()) {
                if (isEmpty) {
                    return;
                } else {
                    return;
                }
            }
            long j = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long processNextEvent = processNextEvent();
                if (processNextEvent == Long.MAX_VALUE) {
                    AbstractTimeSource timeSource2 = AbstractTimeSourceKt.getTimeSource();
                    long nanoTime = timeSource2 != null ? timeSource2.nanoTime() : System.nanoTime();
                    if (j == Long.MAX_VALUE) {
                        j = KEEP_ALIVE_NANOS + nanoTime;
                    }
                    long j2 = j - nanoTime;
                    if (j2 <= 0) {
                        _thread = null;
                        m61606j0();
                        AbstractTimeSource timeSource3 = AbstractTimeSourceKt.getTimeSource();
                        if (timeSource3 != null) {
                            timeSource3.unregisterTimeLoopThread();
                        }
                        if (isEmpty()) {
                            return;
                        }
                        getThread();
                        return;
                    }
                    processNextEvent = RangesKt___RangesKt.coerceAtMost(processNextEvent, j2);
                } else {
                    j = Long.MAX_VALUE;
                }
                if (processNextEvent > 0) {
                    if (m61609n0()) {
                        _thread = null;
                        m61606j0();
                        AbstractTimeSource timeSource4 = AbstractTimeSourceKt.getTimeSource();
                        if (timeSource4 != null) {
                            timeSource4.unregisterTimeLoopThread();
                        }
                        if (isEmpty()) {
                            return;
                        }
                        getThread();
                        return;
                    }
                    AbstractTimeSource timeSource5 = AbstractTimeSourceKt.getTimeSource();
                    if (timeSource5 != null) {
                        timeSource5.parkNanos(this, processNextEvent);
                        unit = Unit.INSTANCE;
                    } else {
                        unit = null;
                    }
                    if (unit == null) {
                        LockSupport.parkNanos(this, processNextEvent);
                    }
                }
            }
        } finally {
            _thread = null;
            m61606j0();
            AbstractTimeSource timeSource6 = AbstractTimeSourceKt.getTimeSource();
            if (timeSource6 != null) {
                timeSource6.unregisterTimeLoopThread();
            }
            if (!isEmpty()) {
                getThread();
            }
        }
    }

    @Override // kotlinx.coroutines.EventLoopImplBase, kotlinx.coroutines.EventLoop
    public void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    public final synchronized void shutdownForTests(long timeout) {
        Unit unit;
        long currentTimeMillis = System.currentTimeMillis() + timeout;
        if (!m61609n0()) {
            debugStatus = 2;
        }
        while (debugStatus != 3 && _thread != null) {
            Thread thread = _thread;
            if (thread != null) {
                AbstractTimeSource timeSource = AbstractTimeSourceKt.getTimeSource();
                if (timeSource != null) {
                    timeSource.unpark(thread);
                    unit = Unit.INSTANCE;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    LockSupport.unpark(thread);
                }
            }
            if (currentTimeMillis - System.currentTimeMillis() <= 0) {
                break;
            }
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            wait(timeout);
        }
        debugStatus = 0;
    }
}
