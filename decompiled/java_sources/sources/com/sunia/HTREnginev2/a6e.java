package com.sunia.HTREnginev2;

import java.util.concurrent.CancellationException;
import java.util.concurrent.CompletableFuture;
import java.util.function.BiFunction;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class a6e<T> extends AbstractCoroutine<T> implements BiFunction<T, Throwable, Unit> {

    /* renamed from: h */
    @NotNull
    public final CompletableFuture<T> f64373h;

    public a6e(@NotNull CoroutineContext coroutineContext, @NotNull CompletableFuture<T> completableFuture) {
        super(coroutineContext, true, true);
        this.f64373h = completableFuture;
    }

    /* renamed from: K */
    public void m52974K(@Nullable T t, @Nullable Throwable th) {
        Job.DefaultImpls.cancel$default((Job) this, (CancellationException) null, 1, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.function.BiFunction
    public /* bridge */ /* synthetic */ Unit apply(Object obj, Throwable th) {
        m52974K(obj, th);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public void onCancelled(@NotNull Throwable th, boolean z) {
        this.f64373h.completeExceptionally(th);
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public void onCompleted(T t) {
        this.f64373h.complete(t);
    }
}
