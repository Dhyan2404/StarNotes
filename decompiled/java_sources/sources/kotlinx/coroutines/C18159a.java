package kotlinx.coroutines;

import java.util.Iterator;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SourceDebugExtension({"SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n+ 2 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,685:1\n13#2:686\n1295#3,2:687\n1295#3,2:689\n1295#3,2:691\n1295#3,2:693\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n*L\n494#1:686\n521#1:687,2\n535#1:689,2\n629#1:691,2\n653#1:693,2\n*E\n"})
/* renamed from: kotlinx.coroutines.a */
/* loaded from: classes11.dex */
public final /* synthetic */ class C18159a {
    /* renamed from: A */
    public static final boolean m61680A(@NotNull CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job != null) {
            return job.isActive();
        }
        return true;
    }

    /* renamed from: B */
    public static final Throwable m61681B(Throwable th, Job job) {
        return th == null ? new JobCancellationException("Job was cancelled", null, job) : th;
    }

    @NotNull
    /* renamed from: a */
    public static final CompletableJob m61682a(@Nullable Job job) {
        return new JobImpl(job);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    @JvmName(name = "Job")
    /* renamed from: b */
    public static final /* synthetic */ Job m61683b(Job job) {
        return JobKt.Job(job);
    }

    /* renamed from: c */
    public static /* synthetic */ CompletableJob m61684c(Job job, int i, Object obj) {
        if ((i & 1) != 0) {
            job = null;
        }
        return JobKt.Job(job);
    }

    /* renamed from: d */
    public static /* synthetic */ Job m61685d(Job job, int i, Object obj) {
        Job m61683b;
        if ((i & 1) != 0) {
            job = null;
        }
        m61683b = m61683b(job);
        return m61683b;
    }

    /* renamed from: f */
    public static final void m61687f(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job != null) {
            job.cancel(cancellationException);
        }
    }

    /* renamed from: g */
    public static final void m61688g(@NotNull Job job, @NotNull String str, @Nullable Throwable th) {
        job.cancel(ExceptionsKt.CancellationException(str, th));
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* renamed from: h */
    public static final /* synthetic */ boolean m61689h(CoroutineContext coroutineContext, Throwable th) {
        CoroutineContext.Element element = coroutineContext.get(Job.INSTANCE);
        JobSupport jobSupport = element instanceof JobSupport ? (JobSupport) element : null;
        if (jobSupport == null) {
            return false;
        }
        jobSupport.cancelInternal(m61681B(th, jobSupport));
        return true;
    }

    /* renamed from: i */
    public static /* synthetic */ void m61690i(CoroutineContext coroutineContext, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        JobKt.cancel(coroutineContext, cancellationException);
    }

    /* renamed from: j */
    public static /* synthetic */ void m61691j(Job job, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        JobKt.cancel(job, str, th);
    }

    /* renamed from: k */
    public static /* synthetic */ boolean m61692k(CoroutineContext coroutineContext, Throwable th, int i, Object obj) {
        boolean m61689h;
        if ((i & 1) != 0) {
            th = null;
        }
        m61689h = m61689h(coroutineContext, th);
        return m61689h;
    }

    @Nullable
    /* renamed from: l */
    public static final Object m61693l(@NotNull Job job, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        Object join = job.join(continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return join == coroutine_suspended ? join : Unit.INSTANCE;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* renamed from: n */
    public static final /* synthetic */ void m61695n(CoroutineContext coroutineContext, Throwable th) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job == null) {
            return;
        }
        for (Job job2 : job.getChildren()) {
            JobSupport jobSupport = job2 instanceof JobSupport ? (JobSupport) job2 : null;
            if (jobSupport != null) {
                jobSupport.cancelInternal(m61681B(th, job));
            }
        }
    }

    /* renamed from: o */
    public static final void m61696o(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        Sequence<Job> children;
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job == null || (children = job.getChildren()) == null) {
            return;
        }
        Iterator<Job> it2 = children.iterator();
        while (it2.hasNext()) {
            it2.next().cancel(cancellationException);
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* renamed from: q */
    public static final /* synthetic */ void m61698q(Job job, Throwable th) {
        for (Job job2 : job.getChildren()) {
            JobSupport jobSupport = job2 instanceof JobSupport ? (JobSupport) job2 : null;
            if (jobSupport != null) {
                jobSupport.cancelInternal(m61681B(th, job));
            }
        }
    }

    /* renamed from: r */
    public static final void m61699r(@NotNull Job job, @Nullable CancellationException cancellationException) {
        Iterator<Job> it2 = job.getChildren().iterator();
        while (it2.hasNext()) {
            it2.next().cancel(cancellationException);
        }
    }

    /* renamed from: s */
    public static /* synthetic */ void m61700s(CoroutineContext coroutineContext, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        m61695n(coroutineContext, th);
    }

    /* renamed from: t */
    public static /* synthetic */ void m61701t(CoroutineContext coroutineContext, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        JobKt.cancelChildren(coroutineContext, cancellationException);
    }

    /* renamed from: u */
    public static /* synthetic */ void m61702u(Job job, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        m61698q(job, th);
    }

    /* renamed from: v */
    public static /* synthetic */ void m61703v(Job job, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        JobKt.cancelChildren(job, cancellationException);
    }

    @NotNull
    /* renamed from: w */
    public static final DisposableHandle m61704w(@NotNull Job job, @NotNull DisposableHandle disposableHandle) {
        return job.invokeOnCompletion(new DisposeOnCompletion(disposableHandle));
    }

    /* renamed from: x */
    public static final void m61705x(@NotNull CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job != null) {
            JobKt.ensureActive(job);
        }
    }

    /* renamed from: y */
    public static final void m61706y(@NotNull Job job) {
        if (!job.isActive()) {
            throw job.getCancellationException();
        }
    }

    @NotNull
    /* renamed from: z */
    public static final Job m61707z(@NotNull CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job != null) {
            return job;
        }
        throw new IllegalStateException(("Current context doesn't contain Job in it: " + coroutineContext).toString());
    }
}
