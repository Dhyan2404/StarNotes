package kotlinx.coroutines.tasks;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.sunia.HTREnginev2.f5f;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.ChildHandle;
import kotlinx.coroutines.ChildJob;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.selects.SelectClause0;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.tasks.TasksKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001\u001a\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002\u001a&\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007\u001a(\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002\u001a#\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a+\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0087@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\n\u001a-\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, m61528d2 = {"T", "Lkotlinx/coroutines/Deferred;", "Lcom/google/android/gms/tasks/Task;", "asTask", "asDeferred", "Lcom/google/android/gms/tasks/CancellationTokenSource;", "cancellationTokenSource", "b", "await", "(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "d", "kotlinx-coroutines-play-services"}, m61529k = 2, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nTasks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,167:1\n314#2,11:168\n*S KotlinDebug\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n*L\n139#1:168,11\n*E\n"})
/* loaded from: classes11.dex */
public final class TasksKt {

    /* renamed from: kotlinx.coroutines.tasks.TasksKt$a */
    /* loaded from: classes11.dex */
    public static final class C18252a<TResult> implements OnCompleteListener {

        /* renamed from: a */
        public final /* synthetic */ CancellableContinuation<T> f98735a;

        /* JADX WARN: Multi-variable type inference failed */
        public C18252a(CancellableContinuation<? super T> cancellableContinuation) {
            this.f98735a = cancellableContinuation;
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        public final void onComplete(@NotNull Task<T> task) {
            Exception exception = task.getException();
            if (exception != null) {
                Continuation continuation = this.f98735a;
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m72621constructorimpl(ResultKt.createFailure(exception)));
                return;
            }
            boolean isCanceled = task.isCanceled();
            CancellableContinuation<T> cancellableContinuation = this.f98735a;
            if (isCanceled) {
                CancellableContinuation.DefaultImpls.cancel$default(cancellableContinuation, null, 1, null);
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m72621constructorimpl(task.getResult()));
            }
        }
    }

    @NotNull
    public static final <T> Deferred<T> asDeferred(@NotNull Task<T> task) {
        return m62349b(task, null);
    }

    @NotNull
    public static final <T> Task<T> asTask(@NotNull final Deferred<? extends T> deferred) {
        final CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource(cancellationTokenSource.getToken());
        deferred.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.tasks.TasksKt$asTask$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                if (th instanceof CancellationException) {
                    CancellationTokenSource.this.cancel();
                    return;
                }
                Throwable completionExceptionOrNull = deferred.getCompletionExceptionOrNull();
                if (completionExceptionOrNull == null) {
                    taskCompletionSource.setResult(deferred.getCompleted());
                    return;
                }
                TaskCompletionSource<T> taskCompletionSource2 = taskCompletionSource;
                Exception exc = completionExceptionOrNull instanceof Exception ? (Exception) completionExceptionOrNull : null;
                if (exc == null) {
                    exc = new RuntimeExecutionException(completionExceptionOrNull);
                }
                taskCompletionSource2.setException(exc);
            }
        });
        return taskCompletionSource.getTask();
    }

    @Nullable
    public static final <T> Object await(@NotNull Task<T> task, @NotNull Continuation<? super T> continuation) {
        return m62351d(task, null, continuation);
    }

    /* renamed from: b */
    public static final <T> Deferred<T> m62349b(Task<T> task, final CancellationTokenSource cancellationTokenSource) {
        final CompletableDeferred CompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        if (task.isComplete()) {
            Exception exception = task.getException();
            if (exception != null) {
                CompletableDeferred$default.completeExceptionally(exception);
            } else if (task.isCanceled()) {
                Job.DefaultImpls.cancel$default((Job) CompletableDeferred$default, (CancellationException) null, 1, (Object) null);
            } else {
                CompletableDeferred$default.complete(task.getResult());
            }
        } else {
            task.addOnCompleteListener(f5f.f69672e, new OnCompleteListener() { // from class: com.sunia.HTREnginev2.v9n
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task2) {
                    TasksKt.m62350c(CompletableDeferred.this, task2);
                }
            });
        }
        if (cancellationTokenSource != null) {
            CompletableDeferred$default.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.tasks.TasksKt$asDeferredImpl$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Throwable th) {
                    CancellationTokenSource.this.cancel();
                }
            });
        }
        return new Deferred<T>() { // from class: kotlinx.coroutines.tasks.TasksKt$asDeferredImpl$3
            @Override // kotlinx.coroutines.Job
            @InternalCoroutinesApi
            @NotNull
            public ChildHandle attachChild(@NotNull ChildJob child) {
                return CompletableDeferred$default.attachChild(child);
            }

            @Override // kotlinx.coroutines.Deferred
            @Nullable
            public Object await(@NotNull Continuation<? super T> continuation) {
                return CompletableDeferred$default.await(continuation);
            }

            @Override // kotlinx.coroutines.Job
            @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
            public /* synthetic */ void cancel() {
                CompletableDeferred$default.cancel();
            }

            @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
            public <R> R fold(R initial, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
                return (R) CompletableDeferred$default.fold(initial, operation);
            }

            @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
            @Nullable
            public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
                return (E) CompletableDeferred$default.get(key);
            }

            @Override // kotlinx.coroutines.Job
            @InternalCoroutinesApi
            @NotNull
            public CancellationException getCancellationException() {
                return CompletableDeferred$default.getCancellationException();
            }

            @Override // kotlinx.coroutines.Job
            @NotNull
            public Sequence<Job> getChildren() {
                return CompletableDeferred$default.getChildren();
            }

            @Override // kotlinx.coroutines.Deferred
            @ExperimentalCoroutinesApi
            public T getCompleted() {
                return CompletableDeferred$default.getCompleted();
            }

            @Override // kotlinx.coroutines.Deferred
            @ExperimentalCoroutinesApi
            @Nullable
            public Throwable getCompletionExceptionOrNull() {
                return CompletableDeferred$default.getCompletionExceptionOrNull();
            }

            @Override // kotlin.coroutines.CoroutineContext.Element
            @NotNull
            public CoroutineContext.Key<?> getKey() {
                return CompletableDeferred$default.getKey();
            }

            @Override // kotlinx.coroutines.Deferred
            @NotNull
            public SelectClause1<T> getOnAwait() {
                return CompletableDeferred$default.getOnAwait();
            }

            @Override // kotlinx.coroutines.Job
            @NotNull
            public SelectClause0 getOnJoin() {
                return CompletableDeferred$default.getOnJoin();
            }

            @Override // kotlinx.coroutines.Job
            @Nullable
            public Job getParent() {
                return CompletableDeferred$default.getParent();
            }

            @Override // kotlinx.coroutines.Job
            @NotNull
            public DisposableHandle invokeOnCompletion(@NotNull Function1<? super Throwable, Unit> handler) {
                return CompletableDeferred$default.invokeOnCompletion(handler);
            }

            @Override // kotlinx.coroutines.Job
            public boolean isActive() {
                return CompletableDeferred$default.isActive();
            }

            @Override // kotlinx.coroutines.Job
            public boolean isCancelled() {
                return CompletableDeferred$default.isCancelled();
            }

            @Override // kotlinx.coroutines.Job
            public boolean isCompleted() {
                return CompletableDeferred$default.isCompleted();
            }

            @Override // kotlinx.coroutines.Job
            @Nullable
            public Object join(@NotNull Continuation<? super Unit> continuation) {
                return CompletableDeferred$default.join(continuation);
            }

            @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
            @NotNull
            public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
                return CompletableDeferred$default.minusKey(key);
            }

            @Override // kotlin.coroutines.CoroutineContext
            @NotNull
            public CoroutineContext plus(@NotNull CoroutineContext context) {
                return CompletableDeferred$default.plus(context);
            }

            @Override // kotlinx.coroutines.Job
            public boolean start() {
                return CompletableDeferred$default.start();
            }

            @Override // kotlinx.coroutines.Job
            public void cancel(@Nullable CancellationException cause) {
                CompletableDeferred$default.cancel(cause);
            }

            @Override // kotlinx.coroutines.Job
            @InternalCoroutinesApi
            @NotNull
            public DisposableHandle invokeOnCompletion(boolean onCancelling, boolean invokeImmediately, @NotNull Function1<? super Throwable, Unit> handler) {
                return CompletableDeferred$default.invokeOnCompletion(onCancelling, invokeImmediately, handler);
            }

            @Override // kotlinx.coroutines.Job
            @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
            @NotNull
            public Job plus(@NotNull Job other) {
                return CompletableDeferred$default.plus(other);
            }

            @Override // kotlinx.coroutines.Job
            @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
            public /* synthetic */ boolean cancel(Throwable cause) {
                return CompletableDeferred$default.cancel(cause);
            }
        };
    }

    /* renamed from: c */
    public static final void m62350c(CompletableDeferred completableDeferred, Task task) {
        Exception exception = task.getException();
        if (exception != null) {
            completableDeferred.completeExceptionally(exception);
        } else if (task.isCanceled()) {
            Job.DefaultImpls.cancel$default((Job) completableDeferred, (CancellationException) null, 1, (Object) null);
        } else {
            completableDeferred.complete(task.getResult());
        }
    }

    /* renamed from: d */
    public static final <T> Object m62351d(Task<T> task, final CancellationTokenSource cancellationTokenSource, Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        if (task.isComplete()) {
            Exception exception = task.getException();
            if (exception != null) {
                throw exception;
            }
            if (!task.isCanceled()) {
                return task.getResult();
            }
            throw new CancellationException("Task " + task + " was cancelled normally.");
        }
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        task.addOnCompleteListener(f5f.f69672e, new C18252a(cancellableContinuationImpl));
        if (cancellationTokenSource != null) {
            cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.tasks.TasksKt$awaitImpl$2$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Throwable th) {
                    CancellationTokenSource.this.cancel();
                }
            });
        }
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T> Deferred<T> asDeferred(@NotNull Task<T> task, @NotNull CancellationTokenSource cancellationTokenSource) {
        return m62349b(task, cancellationTokenSource);
    }

    @ExperimentalCoroutinesApi
    @Nullable
    public static final <T> Object await(@NotNull Task<T> task, @NotNull CancellationTokenSource cancellationTokenSource, @NotNull Continuation<? super T> continuation) {
        return m62351d(task, cancellationTokenSource, continuation);
    }
}
