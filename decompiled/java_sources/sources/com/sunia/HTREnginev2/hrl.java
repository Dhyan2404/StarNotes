package com.sunia.HTREnginev2;

import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class hrl extends JobNode {

    /* renamed from: h */
    @NotNull
    public final Continuation<Unit> f72500h;

    /* JADX WARN: Multi-variable type inference failed */
    public hrl(@NotNull Continuation<? super Unit> continuation) {
        this.f72500h = continuation;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2(@Nullable Throwable th) {
        Continuation<Unit> continuation = this.f72500h;
        Result.Companion companion = Result.INSTANCE;
        continuation.resumeWith(Result.m72621constructorimpl(Unit.INSTANCE));
    }
}
