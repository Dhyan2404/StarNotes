package kotlinx.coroutines.scheduling;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.C14434t4;
import com.sunia.HTREnginev2.r1n;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b.\u0010/J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0005J\"\u0010\u000e\u001a\u00020\r2\n\u0010\n\u001a\u00060\bj\u0002`\t2\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000bJ\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00022\n\u0010\n\u001a\u00060\bj\u0002`\tH\u0002J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0017\u001a\u00020\u0005H\u0002J\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0005H\u0002J$\u0010\u001b\u001a\u00020\r2\n\u0010\n\u001a\u00060\bj\u0002`\t2\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000bH\u0002J\u0010\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0011H\u0002J\n\u0010\u001e\u001a\u0004\u0018\u00010\u0002H\u0002J\u000e\u0010\u001f\u001a\u00020\u0013*\u0004\u0018\u00010\u0002H\u0002R\u001c\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010!R\u0014\u0010%\u001a\u00020\b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0014\u0010'\u001a\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b&\u0010$R\u000b\u0010)\u001a\u00020(8\u0002X\u0082\u0004R\u000b\u0010*\u001a\u00020(8\u0002X\u0082\u0004R\u0013\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020+8\u0002X\u0082\u0004R\u000b\u0010-\u001a\u00020(8\u0002X\u0082\u0004¨\u00060"}, m61528d2 = {"Lkotlinx/coroutines/scheduling/WorkQueue;", "", "Lkotlinx/coroutines/scheduling/Task;", "poll", "task", "", "fair", "add", "", "Lkotlinx/coroutines/scheduling/StealingMode;", "stealingMode", "Lkotlin/jvm/internal/Ref$ObjectRef;", "stolenTaskRef", "", "trySteal", "pollBlocking", "pollCpu", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalQueue", "", "offloadAllWorkTo", "a", C6998g.f39679a, "onlyBlocking", C6997f.f39671c, FirebaseAnalytics.Param.INDEX, C6999h.f39688c, "i", "queue", "e", "d", "b", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "buffer", "getSize$kotlinx_coroutines_core", "()I", "size", "c", "bufferSize", "Lkotlinx/atomicfu/AtomicInt;", "blockingTasksInBuffer", "consumerIndex", "Lkotlinx/atomicfu/AtomicRef;", "lastScheduledTask", "producerIndex", Constants.CONSTRUCTOR_NAME, "()V", "kotlinx-coroutines-core"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nWorkQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueueKt\n*L\n1#1,255:1\n93#2:256\n93#2:257\n93#2:258\n93#2:261\n93#2:262\n1#3:259\n25#4:260\n*S KotlinDebug\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n*L\n95#1:256\n162#1:257\n185#1:258\n205#1:261\n249#1:262\n205#1:260\n*E\n"})
/* loaded from: classes11.dex */
public final class WorkQueue {

    /* renamed from: b */
    @NotNull
    public static final AtomicReferenceFieldUpdater f98660b = AtomicReferenceFieldUpdater.newUpdater(WorkQueue.class, Object.class, "lastScheduledTask");

    /* renamed from: c */
    @NotNull
    public static final AtomicIntegerFieldUpdater f98661c = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "producerIndex");

    /* renamed from: d */
    @NotNull
    public static final AtomicIntegerFieldUpdater f98662d = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "consumerIndex");

    /* renamed from: e */
    @NotNull
    public static final AtomicIntegerFieldUpdater f98663e = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "blockingTasksInBuffer");

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AtomicReferenceArray<Task> buffer = new AtomicReferenceArray<>(128);

    @Volatile
    private volatile int blockingTasksInBuffer;

    @Volatile
    private volatile int consumerIndex;

    @Volatile
    @Nullable
    private volatile Object lastScheduledTask;

    @Volatile
    private volatile int producerIndex;

    public static /* synthetic */ Task add$default(WorkQueue workQueue, Task task, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return workQueue.add(task, z);
    }

    /* renamed from: a */
    public final Task m62290a(Task task) {
        if (m62292c() == 127) {
            return task;
        }
        if (task.taskContext.getTaskMode() == 1) {
            f98663e.incrementAndGet(this);
        }
        int i = f98661c.get(this) & 127;
        while (this.buffer.get(i) != null) {
            Thread.yield();
        }
        this.buffer.lazySet(i, task);
        f98661c.incrementAndGet(this);
        return null;
    }

    @Nullable
    public final Task add(@NotNull Task task, boolean fair) {
        if (fair) {
            return m62290a(task);
        }
        Task task2 = (Task) f98660b.getAndSet(this, task);
        if (task2 == null) {
            return null;
        }
        return m62290a(task2);
    }

    /* renamed from: b */
    public final void m62291b(Task task) {
        if (task != null) {
            if (task.taskContext.getTaskMode() == 1) {
                f98663e.decrementAndGet(this);
            }
        }
    }

    /* renamed from: c */
    public final int m62292c() {
        return f98661c.get(this) - f98662d.get(this);
    }

    /* renamed from: d */
    public final Task m62293d() {
        Task andSet;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f98662d;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i - f98661c.get(this) == 0) {
                return null;
            }
            int i2 = i & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i, i + 1) && (andSet = this.buffer.getAndSet(i2, null)) != null) {
                m62291b(andSet);
                return andSet;
            }
        }
    }

    /* renamed from: e */
    public final boolean m62294e(GlobalQueue queue) {
        Task m62293d = m62293d();
        if (m62293d == null) {
            return false;
        }
        queue.addLast(m62293d);
        return true;
    }

    /* renamed from: f */
    public final Task m62295f(boolean onlyBlocking) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Task task;
        do {
            atomicReferenceFieldUpdater = f98660b;
            task = (Task) atomicReferenceFieldUpdater.get(this);
            if (task != null) {
                if ((task.taskContext.getTaskMode() == 1) == onlyBlocking) {
                }
            }
            int i = f98662d.get(this);
            int i2 = f98661c.get(this);
            while (i != i2) {
                if (onlyBlocking && f98663e.get(this) == 0) {
                    return null;
                }
                i2--;
                Task m62297h = m62297h(i2, onlyBlocking);
                if (m62297h != null) {
                    return m62297h;
                }
            }
            return null;
        } while (!C14434t4.m57298a(atomicReferenceFieldUpdater, this, task, null));
        return task;
    }

    /* renamed from: g */
    public final Task m62296g(int stealingMode) {
        int i = f98662d.get(this);
        int i2 = f98661c.get(this);
        boolean z = stealingMode == 1;
        while (i != i2) {
            if (z && f98663e.get(this) == 0) {
                return null;
            }
            int i3 = i + 1;
            Task m62297h = m62297h(i, z);
            if (m62297h != null) {
                return m62297h;
            }
            i = i3;
        }
        return null;
    }

    public final int getSize$kotlinx_coroutines_core() {
        Object obj = f98660b.get(this);
        int m62292c = m62292c();
        return obj != null ? m62292c + 1 : m62292c;
    }

    /* renamed from: h */
    public final Task m62297h(int index, boolean onlyBlocking) {
        int i = index & 127;
        Task task = this.buffer.get(i);
        if (task != null) {
            if ((task.taskContext.getTaskMode() == 1) == onlyBlocking && r1n.m56886a(this.buffer, i, task, null)) {
                if (onlyBlocking) {
                    f98663e.decrementAndGet(this);
                }
                return task;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, kotlinx.coroutines.scheduling.Task, java.lang.Object] */
    /* renamed from: i */
    public final long m62298i(int stealingMode, Ref.ObjectRef<Task> stolenTaskRef) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        ?? r1;
        do {
            atomicReferenceFieldUpdater = f98660b;
            r1 = (Task) atomicReferenceFieldUpdater.get(this);
            if (r1 == 0) {
                return -2L;
            }
            if (((r1.taskContext.getTaskMode() == 1 ? 1 : 2) & stealingMode) == 0) {
                return -2L;
            }
            long nanoTime = TasksKt.schedulerTimeSource.nanoTime() - r1.submissionTime;
            long j = TasksKt.WORK_STEALING_TIME_RESOLUTION_NS;
            if (nanoTime < j) {
                return j - nanoTime;
            }
        } while (!C14434t4.m57298a(atomicReferenceFieldUpdater, this, r1, null));
        stolenTaskRef.element = r1;
        return -1L;
    }

    public final void offloadAllWorkTo(@NotNull GlobalQueue globalQueue) {
        Task task = (Task) f98660b.getAndSet(this, null);
        if (task != null) {
            globalQueue.addLast(task);
        }
        do {
        } while (m62294e(globalQueue));
    }

    @Nullable
    public final Task poll() {
        Task task = (Task) f98660b.getAndSet(this, null);
        return task == null ? m62293d() : task;
    }

    @Nullable
    public final Task pollBlocking() {
        return m62295f(true);
    }

    @Nullable
    public final Task pollCpu() {
        return m62295f(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long trySteal(int stealingMode, @NotNull Ref.ObjectRef<Task> stolenTaskRef) {
        T m62293d = stealingMode == 3 ? m62293d() : m62296g(stealingMode);
        if (m62293d == 0) {
            return m62298i(stealingMode, stolenTaskRef);
        }
        stolenTaskRef.element = m62293d;
        return -1L;
    }
}
