package com.sunia.HTREnginev2;

import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.internal.ScopeCoroutine;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final class pin<U, T extends U> extends ScopeCoroutine<T> implements Runnable {

    /* renamed from: h */
    @JvmField
    public final long f80836h;

    public pin(long j, @NotNull Continuation<? super U> continuation) {
        super(continuation.get$context(), continuation);
        this.f80836h = j;
    }

    @Override // kotlinx.coroutines.AbstractCoroutine, kotlinx.coroutines.JobSupport
    @NotNull
    public String nameString$kotlinx_coroutines_core() {
        return super.nameString$kotlinx_coroutines_core() + "(timeMillis=" + this.f80836h + ')';
    }

    @Override // java.lang.Runnable
    public void run() {
        cancelCoroutine(TimeoutKt.TimeoutCancellationException(this.f80836h, DelayKt.getDelay(get$context()), this));
    }
}
