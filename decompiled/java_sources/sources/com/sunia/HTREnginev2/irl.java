package com.sunia.HTREnginev2;

import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineDispatcher;
import org.jetbrains.annotations.NotNull;

@SourceDebugExtension({"SMAP\nExecutors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Executors.kt\nkotlinx/coroutines/ResumeUndispatchedRunnable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n1#2:208\n*E\n"})
/* loaded from: classes11.dex */
public final class irl implements Runnable {

    /* renamed from: e */
    @NotNull
    public final CoroutineDispatcher f73525e;

    /* renamed from: f */
    @NotNull
    public final CancellableContinuation<Unit> f73526f;

    /* JADX WARN: Multi-variable type inference failed */
    public irl(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull CancellableContinuation<? super Unit> cancellableContinuation) {
        this.f73525e = coroutineDispatcher;
        this.f73526f = cancellableContinuation;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f73526f.resumeUndispatched(this.f73525e, Unit.INSTANCE);
    }
}
