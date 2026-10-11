package com.sunia.HTREnginev2;

import java.util.concurrent.Future;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final /* synthetic */ class ori {
    /* renamed from: a */
    public static final void m56147a(@NotNull CancellableContinuation<?> cancellableContinuation, @NotNull Future<?> future) {
        cancellableContinuation.invokeOnCancellation(new cnd(future));
    }

    @InternalCoroutinesApi
    @NotNull
    /* renamed from: b */
    public static final DisposableHandle m56148b(@NotNull Job job, @NotNull Future<?> future) {
        return job.invokeOnCompletion(new dnd(future));
    }
}
