package kotlinx.coroutines.scheduling;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.AbstractTimeSource;
import kotlinx.coroutines.AbstractTimeSourceKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.ResizableAtomicArray;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 P2\u00020\u00012\u00020\u0002:\u0003PQRB+\u0012\u0006\u00105\u001a\u00020\n\u0012\u0006\u00107\u001a\u00020\n\u0012\b\b\u0002\u00108\u001a\u00020\f\u0012\b\b\u0002\u0010:\u001a\u000202¢\u0006\u0004\bN\u0010OJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u000e\u0010\b\u001a\b\u0018\u00010\u0007R\u00020\u0000H\u0002J\u0014\u0010\u000b\u001a\u00020\n2\n\u0010\t\u001a\u00060\u0007R\u00020\u0000H\u0002J\u0011\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0082\bJ\u0011\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0082\bJ\t\u0010\u0010\u001a\u00020\nH\u0082\bJ\t\u0010\u0011\u001a\u00020\nH\u0082\bJ\t\u0010\u0012\u001a\u00020\fH\u0082\bJ\t\u0010\u0014\u001a\u00020\u0013H\u0082\bJ\t\u0010\u0015\u001a\u00020\u0005H\u0082\bJ\t\u0010\u0016\u001a\u00020\fH\u0082\bJ\u0018\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\u0012\u0010\u001a\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u001b\u001a\u00020\u0005H\u0002J\b\u0010\u001c\u001a\u00020\nH\u0002J$\u0010\u001e\u001a\u0004\u0018\u00010\u0003*\b\u0018\u00010\u0007R\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0005H\u0002J\u000e\u0010\u001f\u001a\b\u0018\u00010\u0007R\u00020\u0000H\u0002J\"\u0010\"\u001a\u00020\u00132\n\u0010\t\u001a\u00060\u0007R\u00020\u00002\u0006\u0010 \u001a\u00020\n2\u0006\u0010!\u001a\u00020\nJ\u0012\u0010#\u001a\u00020\u00052\n\u0010\t\u001a\u00060\u0007R\u00020\u0000J\u0011\u0010$\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0086\bJ\u0014\u0010(\u001a\u00020\u00132\n\u0010'\u001a\u00060%j\u0002`&H\u0016J\b\u0010)\u001a\u00020\u0013H\u0016J\u000e\u0010+\u001a\u00020\u00132\u0006\u0010*\u001a\u00020\fJ&\u0010/\u001a\u00020\u00132\n\u0010,\u001a\u00060%j\u0002`&2\b\b\u0002\u0010.\u001a\u00020-2\b\b\u0002\u0010\u001d\u001a\u00020\u0005J\u001a\u00100\u001a\u00020\u00032\n\u0010,\u001a\u00060%j\u0002`&2\u0006\u0010.\u001a\u00020-J\u0006\u00101\u001a\u00020\u0013J\b\u00103\u001a\u000202H\u0016J\u000e\u00104\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0003R\u0014\u00105\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u00107\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b7\u00106R\u0014\u00108\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010:\u001a\u0002028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0014\u0010=\u001a\u00020<8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0014\u0010?\u001a\u00020<8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b?\u0010>R\u001e\u0010A\u001a\f\u0012\b\u0012\u00060\u0007R\u00020\u00000@8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u0015\u0010E\u001a\u00020\n8Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bC\u0010DR\u0015\u0010$\u001a\u00020\n8Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bF\u0010DR\u0011\u0010G\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\bG\u0010HR\u000b\u0010J\u001a\u00020I8\u0002X\u0082\u0004R\u000b\u0010L\u001a\u00020K8\u0002X\u0082\u0004R\u000b\u0010M\u001a\u00020K8\u0002X\u0082\u0004¨\u0006S"}, m61528d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "Ljava/util/concurrent/Executor;", "Ljava/io/Closeable;", "Lkotlinx/coroutines/scheduling/Task;", "task", "", C6997f.f39671c, "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "n0", "worker", "", "m0", "", "state", "M", "w", "k0", "g0", "j0", "", "f0", "r0", "o0", "stateSnapshot", "skipUnpark", "p0", "s0", "u0", "H", "tailDispatch", "q0", "e0", "oldIndex", "newIndex", "parkedWorkersStackTopUpdate", "parkedWorkersStackPush", "availableCpuPermits", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "command", "execute", "close", "timeout", "shutdown", BreakpointSQLiteHelper.f39283i, "Lkotlinx/coroutines/scheduling/TaskContext;", "taskContext", "dispatch", "createTask", "signalCpuWork", "", "toString", "runSafely", "corePoolSize", "I", "maxPoolSize", "idleWorkerKeepAliveNs", "J", "schedulerName", Constants.STRING_SIG, "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalCpuQueue", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalBlockingQueue", "Lkotlinx/coroutines/internal/ResizableAtomicArray;", "workers", "Lkotlinx/coroutines/internal/ResizableAtomicArray;", "i0", "()I", "createdWorkers", "h0", "isTerminated", Constants.BOOLEAN_VALUE_SIG, "Lkotlinx/atomicfu/AtomicBoolean;", "_isTerminated", "Lkotlinx/atomicfu/AtomicLong;", "controlState", "parkedWorkersStack", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(IIJLjava/lang/String;)V", "Companion", "Worker", "WorkerState", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 6 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 7 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n1#1,1033:1\n285#1:1036\n283#1:1037\n283#1:1038\n285#1:1039\n280#1:1045\n281#1,5:1046\n291#1:1052\n283#1:1053\n284#1:1054\n283#1:1060\n284#1:1061\n280#1:1062\n288#1:1063\n283#1:1064\n283#1:1067\n284#1:1068\n285#1:1069\n93#2:1034\n93#2:1051\n1#3:1035\n28#4,4:1040\n28#4,4:1055\n20#5:1044\n20#5:1059\n90#6:1065\n610#7:1066\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n*L\n281#1:1036\n288#1:1037\n289#1:1038\n298#1:1039\n347#1:1045\n375#1:1046,5\n398#1:1052\n445#1:1053\n446#1:1054\n482#1:1060\n483#1:1061\n489#1:1062\n498#1:1063\n498#1:1064\n576#1:1067\n577#1:1068\n578#1:1069\n119#1:1034\n395#1:1051\n347#1:1040,4\n478#1:1055,4\n347#1:1044\n478#1:1059\n515#1:1065\n522#1:1066\n*E\n"})
/* loaded from: classes11.dex */
public final class CoroutineScheduler implements Executor, Closeable {
    public static final int MAX_SUPPORTED_POOL_SIZE = 2097150;
    public static final int MIN_SUPPORTED_POOL_SIZE = 1;

    /* renamed from: h */
    public static final int f98632h = -1;

    /* renamed from: i */
    public static final int f98633i = 0;

    /* renamed from: j */
    public static final int f98634j = 1;

    /* renamed from: k */
    public static final int f98635k = 21;

    /* renamed from: l */
    public static final long f98636l = 2097151;

    /* renamed from: m */
    public static final long f98637m = 4398044413952L;

    /* renamed from: n */
    public static final int f98638n = 42;

    /* renamed from: o */
    public static final long f98639o = 9223367638808264704L;

    /* renamed from: p */
    public static final long f98640p = 2097151;

    /* renamed from: q */
    public static final long f98641q = -2097152;

    /* renamed from: r */
    public static final long f98642r = 2097152;

    @Volatile
    private volatile int _isTerminated;

    @Volatile
    private volatile long controlState;

    @JvmField
    public final int corePoolSize;

    @JvmField
    @NotNull
    public final GlobalQueue globalBlockingQueue;

    @JvmField
    @NotNull
    public final GlobalQueue globalCpuQueue;

    @JvmField
    public final long idleWorkerKeepAliveNs;

    @JvmField
    public final int maxPoolSize;

    @Volatile
    private volatile long parkedWorkersStack;

    @JvmField
    @NotNull
    public final String schedulerName;

    @JvmField
    @NotNull
    public final ResizableAtomicArray<Worker> workers;

    /* renamed from: e */
    @NotNull
    public static final AtomicLongFieldUpdater f98629e = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack");

    /* renamed from: f */
    @NotNull
    public static final AtomicLongFieldUpdater f98630f = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState");

    /* renamed from: g */
    @NotNull
    public static final AtomicIntegerFieldUpdater f98631g = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated");

    @JvmField
    @NotNull
    public static final Symbol NOT_IN_STACK = new Symbol("NOT_IN_STACK");

    @Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes11.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WorkerState.values().length];
            try {
                iArr[WorkerState.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkerState.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkerState.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkerState.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "(Ljava/lang/String;I)V", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes11.dex */
    public enum WorkerState {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    public CoroutineScheduler(int i, int i2, long j, @NotNull String str) {
        this.corePoolSize = i;
        this.maxPoolSize = i2;
        this.idleWorkerKeepAliveNs = j;
        this.schedulerName = str;
        if (!(i >= 1)) {
            throw new IllegalArgumentException(("Core pool size " + i + " should be at least 1").toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(("Max pool size " + i2 + " should be greater than or equals to core pool size " + i).toString());
        }
        if (!(i2 <= 2097150)) {
            throw new IllegalArgumentException(("Max pool size " + i2 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j > 0) {
            this.globalCpuQueue = new GlobalQueue();
            this.globalBlockingQueue = new GlobalQueue();
            this.workers = new ResizableAtomicArray<>((i + 1) * 2);
            this.controlState = i << 42;
            this._isTerminated = 0;
            return;
        }
        throw new IllegalArgumentException(("Idle worker keep alive time " + j + " must be positive").toString());
    }

    public static /* synthetic */ void dispatch$default(CoroutineScheduler coroutineScheduler, Runnable runnable, TaskContext taskContext, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            taskContext = TasksKt.NonBlockingContext;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        coroutineScheduler.dispatch(runnable, taskContext, z);
    }

    /* renamed from: t0 */
    public static /* synthetic */ boolean m62252t0(CoroutineScheduler coroutineScheduler, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = f98630f.get(coroutineScheduler);
        }
        return coroutineScheduler.m62270s0(j);
    }

    /* renamed from: H */
    public final int m62253H() {
        int coerceAtLeast;
        synchronized (this.workers) {
            if (isTerminated()) {
                return -1;
            }
            AtomicLongFieldUpdater atomicLongFieldUpdater = f98630f;
            long j = atomicLongFieldUpdater.get(this);
            int i = (int) (j & 2097151);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i - ((int) ((j & f98637m) >> 21)), 0);
            if (coerceAtLeast >= this.corePoolSize) {
                return 0;
            }
            if (i >= this.maxPoolSize) {
                return 0;
            }
            int i2 = ((int) (f98630f.get(this) & 2097151)) + 1;
            if (!(i2 > 0 && this.workers.get(i2) == null)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            Worker worker = new Worker(this, i2);
            this.workers.setSynchronized(i2, worker);
            if (!(i2 == ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this))))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            int i3 = coerceAtLeast + 1;
            worker.start();
            return i3;
        }
    }

    /* renamed from: M */
    public final int m62254M(long state) {
        return (int) (state & 2097151);
    }

    public final int availableCpuPermits(long state) {
        return (int) ((state & f98639o) >> 42);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        shutdown(10000L);
    }

    @NotNull
    public final Task createTask(@NotNull Runnable block, @NotNull TaskContext taskContext) {
        long nanoTime = TasksKt.schedulerTimeSource.nanoTime();
        if (!(block instanceof Task)) {
            return new TaskImpl(block, nanoTime, taskContext);
        }
        Task task = (Task) block;
        task.submissionTime = nanoTime;
        task.taskContext = taskContext;
        return task;
    }

    public final void dispatch(@NotNull Runnable block, @NotNull TaskContext taskContext, boolean tailDispatch) {
        AbstractTimeSource timeSource = AbstractTimeSourceKt.getTimeSource();
        if (timeSource != null) {
            timeSource.trackTask();
        }
        Task createTask = createTask(block, taskContext);
        boolean z = false;
        boolean z2 = createTask.taskContext.getTaskMode() == 1;
        long addAndGet = z2 ? f98630f.addAndGet(this, 2097152L) : 0L;
        Worker m62255e0 = m62255e0();
        Task m62268q0 = m62268q0(m62255e0, createTask, tailDispatch);
        if (m62268q0 != null && !m62256f(m62268q0)) {
            throw new RejectedExecutionException(this.schedulerName + " was terminated");
        }
        if (tailDispatch && m62255e0 != null) {
            z = true;
        }
        if (z2) {
            m62267p0(addAndGet, z);
        } else {
            if (z) {
                return;
            }
            signalCpuWork();
        }
    }

    /* renamed from: e0 */
    public final Worker m62255e0() {
        Thread currentThread = Thread.currentThread();
        Worker worker = currentThread instanceof Worker ? (Worker) currentThread : null;
        if (worker == null || !Intrinsics.areEqual(CoroutineScheduler.this, this)) {
            return null;
        }
        return worker;
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable command) {
        dispatch$default(this, command, null, false, 6, null);
    }

    /* renamed from: f */
    public final boolean m62256f(Task task) {
        return task.taskContext.getTaskMode() == 1 ? this.globalBlockingQueue.addLast(task) : this.globalCpuQueue.addLast(task);
    }

    /* renamed from: f0 */
    public final void m62257f0() {
        f98630f.addAndGet(this, f98641q);
    }

    /* renamed from: g0 */
    public final int m62258g0() {
        return (int) (f98630f.getAndDecrement(this) & 2097151);
    }

    /* renamed from: h0 */
    public final int m62259h0() {
        return (int) ((f98630f.get(this) & f98639o) >> 42);
    }

    /* renamed from: i0 */
    public final int m62260i0() {
        return (int) (f98630f.get(this) & 2097151);
    }

    public final boolean isTerminated() {
        return f98631g.get(this) != 0;
    }

    /* renamed from: j0 */
    public final long m62261j0() {
        return f98630f.addAndGet(this, 2097152L);
    }

    /* renamed from: k0 */
    public final int m62262k0() {
        return (int) (f98630f.incrementAndGet(this) & 2097151);
    }

    /* renamed from: l0 */
    public final void m62263l0(AtomicLongFieldUpdater atomicLongFieldUpdater, Function1<? super Long, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(Long.valueOf(atomicLongFieldUpdater.get(obj)));
        }
    }

    /* renamed from: m0 */
    public final int m62264m0(Worker worker) {
        Object nextParkedWorker = worker.getNextParkedWorker();
        while (nextParkedWorker != NOT_IN_STACK) {
            if (nextParkedWorker == null) {
                return 0;
            }
            Worker worker2 = (Worker) nextParkedWorker;
            int indexInArray = worker2.getIndexInArray();
            if (indexInArray != 0) {
                return indexInArray;
            }
            nextParkedWorker = worker2.getNextParkedWorker();
        }
        return -1;
    }

    /* renamed from: n0 */
    public final Worker m62265n0() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f98629e;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            Worker worker = this.workers.get((int) (2097151 & j));
            if (worker == null) {
                return null;
            }
            long j2 = (2097152 + j) & f98641q;
            int m62264m0 = m62264m0(worker);
            if (m62264m0 >= 0 && f98629e.compareAndSet(this, j, m62264m0 | j2)) {
                worker.setNextParkedWorker(NOT_IN_STACK);
                return worker;
            }
        }
    }

    /* renamed from: o0 */
    public final long m62266o0() {
        return f98630f.addAndGet(this, 4398046511104L);
    }

    /* renamed from: p0 */
    public final void m62267p0(long stateSnapshot, boolean skipUnpark) {
        if (skipUnpark || m62271u0() || m62270s0(stateSnapshot)) {
            return;
        }
        m62271u0();
    }

    public final boolean parkedWorkersStackPush(@NotNull Worker worker) {
        long j;
        long j2;
        int indexInArray;
        if (worker.getNextParkedWorker() != NOT_IN_STACK) {
            return false;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f98629e;
        do {
            j = atomicLongFieldUpdater.get(this);
            j2 = (2097152 + j) & f98641q;
            indexInArray = worker.getIndexInArray();
            worker.setNextParkedWorker(this.workers.get((int) (2097151 & j)));
        } while (!f98629e.compareAndSet(this, j, j2 | indexInArray));
        return true;
    }

    public final void parkedWorkersStackTopUpdate(@NotNull Worker worker, int oldIndex, int newIndex) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f98629e;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            int i = (int) (2097151 & j);
            long j2 = (2097152 + j) & f98641q;
            if (i == oldIndex) {
                i = newIndex == 0 ? m62264m0(worker) : newIndex;
            }
            if (i >= 0 && f98629e.compareAndSet(this, j, j2 | i)) {
                return;
            }
        }
    }

    /* renamed from: q0 */
    public final Task m62268q0(Worker worker, Task task, boolean z) {
        if (worker == null || worker.state == WorkerState.TERMINATED) {
            return task;
        }
        if (task.taskContext.getTaskMode() == 0 && worker.state == WorkerState.BLOCKING) {
            return task;
        }
        worker.mayHaveLocalTasks = true;
        return worker.localQueue.add(task, z);
    }

    /* renamed from: r0 */
    public final boolean m62269r0() {
        long j;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f98630f;
        do {
            j = atomicLongFieldUpdater.get(this);
            if (((int) ((f98639o & j) >> 42)) == 0) {
                return false;
            }
        } while (!f98630f.compareAndSet(this, j, j - 4398046511104L));
        return true;
    }

    public final void runSafely(@NotNull Task task) {
        try {
            task.run();
        } catch (Throwable th) {
            try {
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
                AbstractTimeSource timeSource = AbstractTimeSourceKt.getTimeSource();
                if (timeSource == null) {
                }
            } finally {
                AbstractTimeSource timeSource2 = AbstractTimeSourceKt.getTimeSource();
                if (timeSource2 != null) {
                    timeSource2.unTrackTask();
                }
            }
        }
    }

    /* renamed from: s0 */
    public final boolean m62270s0(long state) {
        int coerceAtLeast;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(((int) (2097151 & state)) - ((int) ((state & f98637m) >> 21)), 0);
        if (coerceAtLeast < this.corePoolSize) {
            int m62253H = m62253H();
            if (m62253H == 1 && this.corePoolSize > 1) {
                m62253H();
            }
            if (m62253H > 0) {
                return true;
            }
        }
        return false;
    }

    public final void shutdown(long timeout) {
        int i;
        Task removeFirstOrNull;
        if (f98631g.compareAndSet(this, 0, 1)) {
            Worker m62255e0 = m62255e0();
            synchronized (this.workers) {
                i = (int) (f98630f.get(this) & 2097151);
            }
            if (1 <= i) {
                int i2 = 1;
                while (true) {
                    Worker worker = this.workers.get(i2);
                    Intrinsics.checkNotNull(worker);
                    Worker worker2 = worker;
                    if (worker2 != m62255e0) {
                        while (worker2.isAlive()) {
                            LockSupport.unpark(worker2);
                            worker2.join(timeout);
                        }
                        worker2.localQueue.offloadAllWorkTo(this.globalBlockingQueue);
                    }
                    if (i2 == i) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            this.globalBlockingQueue.close();
            this.globalCpuQueue.close();
            while (true) {
                if (m62255e0 != null) {
                    removeFirstOrNull = m62255e0.findTask(true);
                    if (removeFirstOrNull != null) {
                        continue;
                        runSafely(removeFirstOrNull);
                    }
                }
                removeFirstOrNull = this.globalCpuQueue.removeFirstOrNull();
                if (removeFirstOrNull == null && (removeFirstOrNull = this.globalBlockingQueue.removeFirstOrNull()) == null) {
                    break;
                }
                runSafely(removeFirstOrNull);
            }
            if (m62255e0 != null) {
                m62255e0.tryReleaseCpu(WorkerState.TERMINATED);
            }
            f98629e.set(this, 0L);
            f98630f.set(this, 0L);
        }
    }

    public final void signalCpuWork() {
        if (m62271u0() || m62252t0(this, 0L, 1, null)) {
            return;
        }
        m62271u0();
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList();
        int currentLength = this.workers.currentLength();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < currentLength; i6++) {
            Worker worker = this.workers.get(i6);
            if (worker != null) {
                int size$kotlinx_coroutines_core = worker.localQueue.getSize$kotlinx_coroutines_core();
                int i7 = WhenMappings.$EnumSwitchMapping$0[worker.state.ordinal()];
                if (i7 == 1) {
                    i3++;
                } else if (i7 == 2) {
                    i2++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(size$kotlinx_coroutines_core);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i7 == 3) {
                    i++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(size$kotlinx_coroutines_core);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i7 == 4) {
                    i4++;
                    if (size$kotlinx_coroutines_core > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(size$kotlinx_coroutines_core);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (i7 == 5) {
                    i5++;
                }
            }
        }
        long j = f98630f.get(this);
        return this.schedulerName + '@' + DebugStringsKt.getHexAddress(this) + "[Pool Size {core = " + this.corePoolSize + ", max = " + this.maxPoolSize + "}, Worker States {CPU = " + i + ", blocking = " + i2 + ", parked = " + i3 + ", dormant = " + i4 + ", terminated = " + i5 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.globalCpuQueue.getSize() + ", global blocking queue size = " + this.globalBlockingQueue.getSize() + ", Control State {created workers= " + ((int) (2097151 & j)) + ", blocking tasks = " + ((int) ((f98637m & j) >> 21)) + ", CPUs acquired = " + (this.corePoolSize - ((int) ((f98639o & j) >> 42))) + "}]";
    }

    /* renamed from: u0 */
    public final boolean m62271u0() {
        Worker m62265n0;
        do {
            m62265n0 = m62265n0();
            if (m62265n0 == null) {
                return false;
            }
        } while (!Worker.f98643j.compareAndSet(m62265n0, -1, 0));
        LockSupport.unpark(m62265n0);
        return true;
    }

    /* renamed from: w */
    public final int m62272w(long state) {
        return (int) ((state & f98637m) >> 21);
    }

    @Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\u0004\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bG\u0010HB\u0011\b\u0016\u0012\u0006\u0010&\u001a\u00020\u000b¢\u0006\u0004\bG\u0010IJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u000bH\u0002J\n\u0010\u0013\u001a\u0004\u0018\u00010\bH\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\bH\u0002J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J\n\u0010\u0017\u001a\u0004\u0018\u00010\bH\u0002J\u0016\u0010\u001a\u001a\u0004\u0018\u00010\b2\n\u0010\u0019\u001a\u00060\u000bj\u0002`\u0018H\u0002J\u000e\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bJ\b\u0010\u001e\u001a\u00020\u0004H\u0016J\u0006\u0010 \u001a\u00020\u001fJ\u0006\u0010!\u001a\u00020\u0002J\u000e\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u000bJ\u0010\u0010%\u001a\u0004\u0018\u00010\b2\u0006\u0010$\u001a\u00020\u0002R*\u0010'\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\u000b8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u0014\u0010.\u001a\u00020-8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u001c\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u00101R\u0016\u00103\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00106\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u00105R$\u00108\u001a\u0004\u0018\u0001078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u0016\u0010>\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u00105R\u0016\u0010?\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010(R\u0016\u0010$\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b$\u0010@R\u0012\u0010D\u001a\u00020A8Æ\u0002¢\u0006\u0006\u001a\u0004\bB\u0010CR\b\u0010F\u001a\u00020E8\u0006¨\u0006J"}, m61528d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "Ljava/lang/Thread;", "", "l", "", C4921e.f26537n, "m", C6999h.f39688c, "Lkotlinx/coroutines/scheduling/Task;", "task", "c", "", "taskMode", "b", "a", "i", C4921e.f26528e, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE, C6998g.f39679a, "e", C6997f.f39671c, "scanLocalQueue", "d", "j", "Lkotlinx/coroutines/scheduling/StealingMode;", "stealingMode", GoogleApiAvailabilityLight.f29016b, "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "newState", "tryReleaseCpu", "run", "", "runSingleTask", "isIo", "upperBound", "nextInt", "mayHaveLocalTasks", "findTask", FirebaseAnalytics.Param.INDEX, "indexInArray", "I", "getIndexInArray", "()I", "setIndexInArray", "(I)V", "Lkotlinx/coroutines/scheduling/WorkQueue;", "localQueue", "Lkotlinx/coroutines/scheduling/WorkQueue;", "Lkotlin/jvm/internal/Ref$ObjectRef;", "Lkotlin/jvm/internal/Ref$ObjectRef;", "stolenTask", "state", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "J", "terminationDeadline", "", "nextParkedWorker", Constants.OBJECT_SIG, "getNextParkedWorker", "()Ljava/lang/Object;", "setNextParkedWorker", "(Ljava/lang/Object;)V", "minDelayUntilStealableTaskNs", "rngState", Constants.HASIDCALL_INDEX_SIG, "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "getScheduler", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "scheduler", "Lkotlinx/atomicfu/AtomicInt;", "workerCtl", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
    @SourceDebugExtension({"SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n+ 2 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 5 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 6 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,1033:1\n298#2:1034\n285#2:1035\n299#2,4:1036\n304#2:1040\n294#2,2:1041\n294#2,2:1045\n280#2:1052\n289#2:1053\n283#2:1054\n280#2:1055\n1#3:1043\n90#4:1044\n28#5,4:1047\n20#6:1051\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n665#1:1034\n665#1:1035\n665#1:1036,4\n679#1:1040\n753#1:1041,2\n807#1:1045,2\n855#1:1052\n881#1:1053\n881#1:1054\n963#1:1055\n790#1:1044\n851#1:1047,4\n851#1:1051\n*E\n"})
    /* loaded from: classes11.dex */
    public final class Worker extends Thread {

        /* renamed from: j */
        @NotNull
        public static final AtomicIntegerFieldUpdater f98643j = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl");

        /* renamed from: e, reason: from kotlin metadata */
        @NotNull
        public final Ref.ObjectRef<Task> stolenTask;

        /* renamed from: f, reason: from kotlin metadata */
        public long terminationDeadline;

        /* renamed from: g, reason: from kotlin metadata */
        public long minDelayUntilStealableTaskNs;

        /* renamed from: h, reason: from kotlin metadata */
        public int rngState;
        private volatile int indexInArray;

        @JvmField
        @NotNull
        public final WorkQueue localQueue;

        @JvmField
        public boolean mayHaveLocalTasks;

        @Nullable
        private volatile Object nextParkedWorker;

        @JvmField
        @NotNull
        public WorkerState state;

        @Volatile
        private volatile int workerCtl;

        public Worker() {
            setDaemon(true);
            this.localQueue = new WorkQueue();
            this.stolenTask = new Ref.ObjectRef<>();
            this.state = WorkerState.DORMANT;
            this.nextParkedWorker = CoroutineScheduler.NOT_IN_STACK;
            this.rngState = Random.INSTANCE.nextInt();
        }

        /* renamed from: a */
        public final void m62273a(int taskMode) {
            if (taskMode == 0) {
                return;
            }
            CoroutineScheduler.f98630f.addAndGet(CoroutineScheduler.this, CoroutineScheduler.f98641q);
            if (this.state != WorkerState.TERMINATED) {
                this.state = WorkerState.DORMANT;
            }
        }

        /* renamed from: b */
        public final void m62274b(int taskMode) {
            if (taskMode != 0 && tryReleaseCpu(WorkerState.BLOCKING)) {
                CoroutineScheduler.this.signalCpuWork();
            }
        }

        /* renamed from: c */
        public final void m62275c(Task task) {
            int taskMode = task.taskContext.getTaskMode();
            m62279g(taskMode);
            m62274b(taskMode);
            CoroutineScheduler.this.runSafely(task);
            m62273a(taskMode);
        }

        /* renamed from: d */
        public final Task m62276d(boolean scanLocalQueue) {
            Task m62282j;
            Task m62282j2;
            if (scanLocalQueue) {
                boolean z = nextInt(CoroutineScheduler.this.corePoolSize * 2) == 0;
                if (z && (m62282j2 = m62282j()) != null) {
                    return m62282j2;
                }
                Task poll = this.localQueue.poll();
                if (poll != null) {
                    return poll;
                }
                if (!z && (m62282j = m62282j()) != null) {
                    return m62282j;
                }
            } else {
                Task m62282j3 = m62282j();
                if (m62282j3 != null) {
                    return m62282j3;
                }
            }
            return m62286n(3);
        }

        /* renamed from: e */
        public final Task m62277e() {
            Task pollBlocking = this.localQueue.pollBlocking();
            if (pollBlocking != null) {
                return pollBlocking;
            }
            Task removeFirstOrNull = CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            return removeFirstOrNull == null ? m62286n(1) : removeFirstOrNull;
        }

        /* renamed from: f */
        public final Task m62278f() {
            Task pollCpu = this.localQueue.pollCpu();
            if (pollCpu != null) {
                return pollCpu;
            }
            Task removeFirstOrNull = CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            return removeFirstOrNull == null ? m62286n(2) : removeFirstOrNull;
        }

        @Nullable
        public final Task findTask(boolean mayHaveLocalTasks) {
            return m62284l() ? m62276d(mayHaveLocalTasks) : m62277e();
        }

        /* renamed from: g */
        public final void m62279g(int mode) {
            this.terminationDeadline = 0L;
            if (this.state == WorkerState.PARKING) {
                this.state = WorkerState.BLOCKING;
            }
        }

        public final int getIndexInArray() {
            return this.indexInArray;
        }

        @Nullable
        public final Object getNextParkedWorker() {
            return this.nextParkedWorker;
        }

        @NotNull
        public final CoroutineScheduler getScheduler() {
            return CoroutineScheduler.this;
        }

        public final int getWorkerCtl() {
            return this.workerCtl;
        }

        /* renamed from: h */
        public final boolean m62280h() {
            return this.nextParkedWorker != CoroutineScheduler.NOT_IN_STACK;
        }

        /* renamed from: i */
        public final void m62281i() {
            if (this.terminationDeadline == 0) {
                this.terminationDeadline = System.nanoTime() + CoroutineScheduler.this.idleWorkerKeepAliveNs;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.idleWorkerKeepAliveNs);
            if (System.nanoTime() - this.terminationDeadline >= 0) {
                this.terminationDeadline = 0L;
                m62287o();
            }
        }

        public final boolean isIo() {
            return this.state == WorkerState.BLOCKING;
        }

        /* renamed from: j */
        public final Task m62282j() {
            if (nextInt(2) == 0) {
                Task removeFirstOrNull = CoroutineScheduler.this.globalCpuQueue.removeFirstOrNull();
                return removeFirstOrNull != null ? removeFirstOrNull : CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            }
            Task removeFirstOrNull2 = CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            return removeFirstOrNull2 != null ? removeFirstOrNull2 : CoroutineScheduler.this.globalCpuQueue.removeFirstOrNull();
        }

        /* renamed from: k */
        public final void m62283k() {
            loop0: while (true) {
                boolean z = false;
                while (!CoroutineScheduler.this.isTerminated() && this.state != WorkerState.TERMINATED) {
                    Task findTask = findTask(this.mayHaveLocalTasks);
                    if (findTask != null) {
                        this.minDelayUntilStealableTaskNs = 0L;
                        m62275c(findTask);
                    } else {
                        this.mayHaveLocalTasks = false;
                        if (this.minDelayUntilStealableTaskNs == 0) {
                            m62285m();
                        } else if (z) {
                            tryReleaseCpu(WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.minDelayUntilStealableTaskNs);
                            this.minDelayUntilStealableTaskNs = 0L;
                        } else {
                            z = true;
                        }
                    }
                }
            }
            tryReleaseCpu(WorkerState.TERMINATED);
        }

        /* renamed from: l */
        public final boolean m62284l() {
            boolean z;
            if (this.state == WorkerState.CPU_ACQUIRED) {
                return true;
            }
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            AtomicLongFieldUpdater atomicLongFieldUpdater = CoroutineScheduler.f98630f;
            while (true) {
                long j = atomicLongFieldUpdater.get(coroutineScheduler);
                if (((int) ((CoroutineScheduler.f98639o & j) >> 42)) == 0) {
                    z = false;
                    break;
                }
                if (CoroutineScheduler.f98630f.compareAndSet(coroutineScheduler, j, j - 4398046511104L)) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                return false;
            }
            this.state = WorkerState.CPU_ACQUIRED;
            return true;
        }

        /* renamed from: m */
        public final void m62285m() {
            if (!m62280h()) {
                CoroutineScheduler.this.parkedWorkersStackPush(this);
                return;
            }
            f98643j.set(this, -1);
            while (m62280h() && f98643j.get(this) == -1 && !CoroutineScheduler.this.isTerminated() && this.state != WorkerState.TERMINATED) {
                tryReleaseCpu(WorkerState.PARKING);
                Thread.interrupted();
                m62281i();
            }
        }

        /* renamed from: n */
        public final Task m62286n(int stealingMode) {
            int i = (int) (CoroutineScheduler.f98630f.get(CoroutineScheduler.this) & 2097151);
            if (i < 2) {
                return null;
            }
            int nextInt = nextInt(i);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            long j = Long.MAX_VALUE;
            for (int i2 = 0; i2 < i; i2++) {
                nextInt++;
                if (nextInt > i) {
                    nextInt = 1;
                }
                Worker worker = coroutineScheduler.workers.get(nextInt);
                if (worker != null && worker != this) {
                    long trySteal = worker.localQueue.trySteal(stealingMode, this.stolenTask);
                    if (trySteal == -1) {
                        Ref.ObjectRef<Task> objectRef = this.stolenTask;
                        Task task = objectRef.element;
                        objectRef.element = null;
                        return task;
                    }
                    if (trySteal > 0) {
                        j = Math.min(j, trySteal);
                    }
                }
            }
            if (j == Long.MAX_VALUE) {
                j = 0;
            }
            this.minDelayUntilStealableTaskNs = j;
            return null;
        }

        public final int nextInt(int upperBound) {
            int i = this.rngState;
            int i2 = i ^ (i << 13);
            int i3 = i2 ^ (i2 >> 17);
            int i4 = i3 ^ (i3 << 5);
            this.rngState = i4;
            int i5 = upperBound - 1;
            return (i5 & upperBound) == 0 ? i5 & i4 : (Integer.MAX_VALUE & i4) % upperBound;
        }

        /* renamed from: o */
        public final void m62287o() {
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            synchronized (coroutineScheduler.workers) {
                if (coroutineScheduler.isTerminated()) {
                    return;
                }
                if (((int) (CoroutineScheduler.f98630f.get(coroutineScheduler) & 2097151)) <= coroutineScheduler.corePoolSize) {
                    return;
                }
                if (f98643j.compareAndSet(this, -1, 1)) {
                    int i = this.indexInArray;
                    setIndexInArray(0);
                    coroutineScheduler.parkedWorkersStackTopUpdate(this, i, 0);
                    int andDecrement = (int) (CoroutineScheduler.f98630f.getAndDecrement(coroutineScheduler) & 2097151);
                    if (andDecrement != i) {
                        Worker worker = coroutineScheduler.workers.get(andDecrement);
                        Intrinsics.checkNotNull(worker);
                        Worker worker2 = worker;
                        coroutineScheduler.workers.setSynchronized(i, worker2);
                        worker2.setIndexInArray(i);
                        coroutineScheduler.parkedWorkersStackTopUpdate(worker2, andDecrement, i);
                    }
                    coroutineScheduler.workers.setSynchronized(andDecrement, null);
                    Unit unit = Unit.INSTANCE;
                    this.state = WorkerState.TERMINATED;
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            m62283k();
        }

        public final long runSingleTask() {
            boolean z = this.state == WorkerState.CPU_ACQUIRED;
            Task m62278f = z ? m62278f() : m62277e();
            if (m62278f == null) {
                long j = this.minDelayUntilStealableTaskNs;
                if (j == 0) {
                    return -1L;
                }
                return j;
            }
            CoroutineScheduler.this.runSafely(m62278f);
            if (!z) {
                CoroutineScheduler.f98630f.addAndGet(CoroutineScheduler.this, CoroutineScheduler.f98641q);
            }
            return 0L;
        }

        public final void setIndexInArray(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.schedulerName);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        public final void setNextParkedWorker(@Nullable Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean tryReleaseCpu(@NotNull WorkerState newState) {
            WorkerState workerState = this.state;
            boolean z = workerState == WorkerState.CPU_ACQUIRED;
            if (z) {
                CoroutineScheduler.f98630f.addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState != newState) {
                this.state = newState;
            }
            return z;
        }

        public Worker(CoroutineScheduler coroutineScheduler, int i) {
            this();
            setIndexInArray(i);
        }
    }

    public /* synthetic */ CoroutineScheduler(int i, int i2, long j, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, (i3 & 4) != 0 ? TasksKt.IDLE_WORKER_KEEP_ALIVE_NS : j, (i3 & 8) != 0 ? TasksKt.DEFAULT_SCHEDULER_NAME : str);
    }
}
