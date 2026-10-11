package com.sunia.HTREnginev2;

import java.util.concurrent.Future;
import kotlin.Unit;
import kotlinx.coroutines.JobNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class dnd extends JobNode {

    /* renamed from: h */
    @NotNull
    public final Future<?> f68042h;

    public dnd(@NotNull Future<?> future) {
        this.f68042h = future;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2(@Nullable Throwable th) {
        if (th != null) {
            this.f68042h.cancel(false);
        }
    }
}
