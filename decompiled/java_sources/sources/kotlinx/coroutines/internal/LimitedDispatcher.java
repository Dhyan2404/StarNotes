package kotlinx.coroutines.internal;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.DefaultExecutorKt;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u00010B\u0017\u0012\u0006\u0010!\u001a\u00020\u0001\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b.\u0010/J\u001b\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0097Aø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J%\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\u00032\n\u0010\u000b\u001a\u00060\tj\u0002`\n2\u0006\u0010\r\u001a\u00020\fH\u0096\u0001J\u001f\u0010\u0012\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00032\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\u0010H\u0096\u0001J\u0010\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0013H\u0017J\u001c\u0010\u0016\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\n\u0010\u000b\u001a\u00060\tj\u0002`\nH\u0016J\u001c\u0010\u0017\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\n\u0010\u000b\u001a\u00060\tj\u0002`\nH\u0017J-\u0010\u001b\u001a\u00020\u00052\n\u0010\u000b\u001a\u00060\tj\u0002`\n2\u0016\u0010\u001a\u001a\u0012\u0012\b\u0012\u00060\u0019R\u00020\u0000\u0012\u0004\u0012\u00020\u00050\u0018H\u0082\bJ\b\u0010\u001d\u001a\u00020\u001cH\u0002J\u0010\u0010\u001e\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\nH\u0002R\u0014\u0010!\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010\u0014\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\"R\u001e\u0010&\u001a\f\u0012\b\u0012\u00060\tj\u0002`\n0#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010+\u001a\u00060'j\u0002`(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u000b\u0010-\u001a\u00020,8\u0002X\u0082\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u00061"}, m61528d2 = {"Lkotlinx/coroutines/internal/LimitedDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlinx/coroutines/Delay;", "", "time", "", "delay", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "timeMillis", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", BreakpointSQLiteHelper.f39283i, "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnTimeout", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", "scheduleResumeAfterDelay", "", "parallelism", "limitedParallelism", "dispatch", "dispatchYield", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/LimitedDispatcher$a;", "startWorker", C6997f.f39671c, "", "H", "w", "e", "Lkotlinx/coroutines/CoroutineDispatcher;", "dispatcher", "I", "Lkotlinx/coroutines/internal/LockFreeTaskQueue;", C6999h.f39688c, "Lkotlinx/coroutines/internal/LockFreeTaskQueue;", "queue", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "i", Constants.OBJECT_SIG, "workerAllocationLock", "Lkotlinx/atomicfu/AtomicInt;", "runningWorkers", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lkotlinx/coroutines/CoroutineDispatcher;I)V", "a", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,134:1\n66#1,8:135\n66#1,8:143\n28#2,4:151\n28#2,4:156\n20#3:155\n20#3:160\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n48#1:135,8\n55#1:143,8\n79#1:151,4\n92#1:156,4\n79#1:155\n92#1:160\n*E\n"})
/* loaded from: classes11.dex */
public final class LimitedDispatcher extends CoroutineDispatcher implements Delay {

    /* renamed from: j */
    @NotNull
    public static final AtomicIntegerFieldUpdater f98584j = AtomicIntegerFieldUpdater.newUpdater(LimitedDispatcher.class, "runningWorkers");

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CoroutineDispatcher dispatcher;

    /* renamed from: f, reason: from kotlin metadata */
    public final int parallelism;

    /* renamed from: g */
    public final /* synthetic */ Delay f98587g;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final LockFreeTaskQueue<Runnable> queue;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Object workerAllocationLock;

    @Volatile
    private volatile int runningWorkers;

    /* renamed from: kotlinx.coroutines.internal.LimitedDispatcher$a */
    /* loaded from: classes11.dex */
    public final class RunnableC18248a implements Runnable {

        /* renamed from: e */
        @NotNull
        public Runnable f98590e;

        public RunnableC18248a(@NotNull Runnable runnable) {
            this.f98590e = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = 0;
            while (true) {
                try {
                    this.f98590e.run();
                } catch (Throwable th) {
                    CoroutineExceptionHandlerKt.handleCoroutineException(EmptyCoroutineContext.INSTANCE, th);
                }
                Runnable m62208w = LimitedDispatcher.this.m62208w();
                if (m62208w == null) {
                    return;
                }
                this.f98590e = m62208w;
                i++;
                if (i >= 16 && LimitedDispatcher.this.dispatcher.isDispatchNeeded(LimitedDispatcher.this)) {
                    LimitedDispatcher.this.dispatcher.dispatch(LimitedDispatcher.this, this);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LimitedDispatcher(@NotNull CoroutineDispatcher coroutineDispatcher, int i) {
        this.dispatcher = coroutineDispatcher;
        this.parallelism = i;
        Delay delay = coroutineDispatcher instanceof Delay ? (Delay) coroutineDispatcher : null;
        this.f98587g = delay == null ? DefaultExecutorKt.getDefaultDelay() : delay;
        this.queue = new LockFreeTaskQueue<>(false);
        this.workerAllocationLock = new Object();
    }

    /* renamed from: H */
    public final boolean m62206H() {
        synchronized (this.workerAllocationLock) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f98584j;
            if (atomicIntegerFieldUpdater.get(this) >= this.parallelism) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }

    @Override // kotlinx.coroutines.Delay
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    public Object delay(long j, @NotNull Continuation<? super Unit> continuation) {
        return this.f98587g.delay(j, continuation);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext context, @NotNull Runnable block) {
        Runnable m62208w;
        this.queue.addLast(block);
        if (f98584j.get(this) >= this.parallelism || !m62206H() || (m62208w = m62208w()) == null) {
            return;
        }
        this.dispatcher.dispatch(this, new RunnableC18248a(m62208w));
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @InternalCoroutinesApi
    public void dispatchYield(@NotNull CoroutineContext context, @NotNull Runnable block) {
        Runnable m62208w;
        this.queue.addLast(block);
        if (f98584j.get(this) >= this.parallelism || !m62206H() || (m62208w = m62208w()) == null) {
            return;
        }
        this.dispatcher.dispatchYield(this, new RunnableC18248a(m62208w));
    }

    /* renamed from: f */
    public final void m62207f(Runnable block, Function1<? super RunnableC18248a, Unit> startWorker) {
        Runnable m62208w;
        this.queue.addLast(block);
        if (f98584j.get(this) < this.parallelism && m62206H() && (m62208w = m62208w()) != null) {
            startWorker.invoke(new RunnableC18248a(m62208w));
        }
    }

    @Override // kotlinx.coroutines.Delay
    @NotNull
    public DisposableHandle invokeOnTimeout(long timeMillis, @NotNull Runnable block, @NotNull CoroutineContext context) {
        return this.f98587g.invokeOnTimeout(timeMillis, block, context);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @ExperimentalCoroutinesApi
    @NotNull
    public CoroutineDispatcher limitedParallelism(int parallelism) {
        LimitedDispatcherKt.checkParallelism(parallelism);
        return parallelism >= this.parallelism ? this : super.limitedParallelism(parallelism);
    }

    @Override // kotlinx.coroutines.Delay
    public void scheduleResumeAfterDelay(long timeMillis, @NotNull CancellableContinuation<? super Unit> continuation) {
        this.f98587g.scheduleResumeAfterDelay(timeMillis, continuation);
    }

    /* renamed from: w */
    public final Runnable m62208w() {
        while (true) {
            Runnable removeFirstOrNull = this.queue.removeFirstOrNull();
            if (removeFirstOrNull != null) {
                return removeFirstOrNull;
            }
            synchronized (this.workerAllocationLock) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f98584j;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.queue.getSize() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }
}
