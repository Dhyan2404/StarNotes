package com.sunia.HTREnginev2;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final class cuj implements Continuation<Object> {

    /* renamed from: e */
    @NotNull
    public static final cuj f67199e = new cuj();

    /* renamed from: f */
    @NotNull
    public static final CoroutineContext f67200f = EmptyCoroutineContext.INSTANCE;

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return f67200f;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
    }
}
