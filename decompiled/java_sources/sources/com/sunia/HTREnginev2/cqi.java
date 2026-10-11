package com.sunia.HTREnginev2;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class cqi extends JobNode {

    /* renamed from: h */
    @NotNull
    public final Function1<Throwable, Unit> f67083h;

    /* JADX WARN: Multi-variable type inference failed */
    public cqi(@NotNull Function1<? super Throwable, Unit> function1) {
        this.f67083h = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2(@Nullable Throwable th) {
        this.f67083h.invoke(th);
    }
}
