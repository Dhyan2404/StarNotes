package com.sunia.HTREnginev2;

import kotlin.Unit;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.DisposableHandle;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class y5f extends CancelHandler {

    /* renamed from: e */
    @NotNull
    public final DisposableHandle f90412e;

    public y5f(@NotNull DisposableHandle disposableHandle) {
        this.f90412e = disposableHandle;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    @NotNull
    public String toString() {
        return "DisposeOnCancel[" + this.f90412e + ']';
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2(@Nullable Throwable th) {
        this.f90412e.dispose();
    }
}
