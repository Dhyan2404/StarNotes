package com.sunia.HTREnginev2;

import java.util.concurrent.Future;
import kotlin.Unit;
import kotlinx.coroutines.CancelHandler;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class cnd extends CancelHandler {

    /* renamed from: e */
    @NotNull
    public final Future<?> f66998e;

    public cnd(@NotNull Future<?> future) {
        this.f66998e = future;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    @NotNull
    public String toString() {
        return "CancelFutureOnCancel[" + this.f66998e + ']';
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2(@Nullable Throwable th) {
        if (th != null) {
            this.f66998e.cancel(false);
        }
    }
}
