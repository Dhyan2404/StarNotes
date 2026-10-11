package com.sunia.HTREnginev2;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobCancellingNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class bqi extends JobCancellingNode {

    /* renamed from: i */
    @NotNull
    public static final AtomicIntegerFieldUpdater f66036i = AtomicIntegerFieldUpdater.newUpdater(bqi.class, "_invoked");

    @Volatile
    private volatile int _invoked;

    /* renamed from: h */
    @NotNull
    public final Function1<Throwable, Unit> f66037h;

    /* JADX WARN: Multi-variable type inference failed */
    public bqi(@NotNull Function1<? super Throwable, Unit> function1) {
        this.f66037h = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public void invoke2(@Nullable Throwable th) {
        if (f66036i.compareAndSet(this, 0, 1)) {
            this.f66037h.invoke(th);
        }
    }
}
