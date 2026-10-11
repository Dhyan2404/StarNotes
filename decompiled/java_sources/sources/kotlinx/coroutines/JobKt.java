package kotlinx.coroutines;

import com.sunia.HTREnginev2.ori;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/ori", "kotlinx/coroutines/a"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 8, 0})
/* loaded from: classes11.dex */
public final class JobKt {
    @NotNull
    public static final CompletableJob Job(@Nullable Job job) {
        return C18159a.m61682a(job);
    }

    public static /* synthetic */ CompletableJob Job$default(Job job, int i, Object obj) {
        return C18159a.m61684c(job, i, obj);
    }

    @Nullable
    public static final Object cancelAndJoin(@NotNull Job job, @NotNull Continuation<? super Unit> continuation) {
        return C18159a.m61693l(job, continuation);
    }

    public static final void cancelFutureOnCancellation(@NotNull CancellableContinuation<?> cancellableContinuation, @NotNull Future<?> future) {
        ori.m56147a(cancellableContinuation, future);
    }

    @InternalCoroutinesApi
    @NotNull
    public static final DisposableHandle cancelFutureOnCompletion(@NotNull Job job, @NotNull Future<?> future) {
        return ori.m56148b(job, future);
    }

    @NotNull
    public static final DisposableHandle disposeOnCompletion(@NotNull Job job, @NotNull DisposableHandle disposableHandle) {
        return C18159a.m61704w(job, disposableHandle);
    }

    public static final void ensureActive(@NotNull CoroutineContext coroutineContext) {
        C18159a.m61705x(coroutineContext);
    }

    @NotNull
    public static final Job getJob(@NotNull CoroutineContext coroutineContext) {
        return C18159a.m61707z(coroutineContext);
    }

    public static final boolean isActive(@NotNull CoroutineContext coroutineContext) {
        return C18159a.m61680A(coroutineContext);
    }

    public static final void cancel(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        C18159a.m61687f(coroutineContext, cancellationException);
    }

    public static final void ensureActive(@NotNull Job job) {
        C18159a.m61706y(job);
    }

    public static final void cancel(@NotNull Job job, @NotNull String str, @Nullable Throwable th) {
        C18159a.m61688g(job, str, th);
    }

    public static final void cancelChildren(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        C18159a.m61696o(coroutineContext, cancellationException);
    }

    public static final void cancelChildren(@NotNull Job job, @Nullable CancellationException cancellationException) {
        C18159a.m61699r(job, cancellationException);
    }
}
