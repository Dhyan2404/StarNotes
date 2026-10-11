package com.sunia.HTREnginev2;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class jxm<T> implements Continuation<T>, CoroutineStackFrame {

    /* renamed from: e */
    @NotNull
    public final Continuation<T> f74802e;

    /* renamed from: f */
    @NotNull
    public final CoroutineContext f74803f;

    /* JADX WARN: Multi-variable type inference failed */
    public jxm(@NotNull Continuation<? super T> continuation, @NotNull CoroutineContext coroutineContext) {
        this.f74802e = continuation;
        this.f74803f = coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.f74802e;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return this.f74803f;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        this.f74802e.resumeWith(obj);
    }
}
