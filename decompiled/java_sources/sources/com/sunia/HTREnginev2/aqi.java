package com.sunia.HTREnginev2;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.DebugStringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class aqi extends CancelHandler {

    /* renamed from: e */
    @NotNull
    public final Function1<Throwable, Unit> f64992e;

    /* JADX WARN: Multi-variable type inference failed */
    public aqi(@NotNull Function1<? super Throwable, Unit> function1) {
        this.f64992e = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    @NotNull
    public String toString() {
        return "InvokeOnCancel[" + DebugStringsKt.getClassSimpleName(this.f64992e) + '@' + DebugStringsKt.getHexAddress(this) + ']';
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2(@Nullable Throwable th) {
        this.f64992e.invoke(th);
    }
}
