package com.sunia.HTREnginev2;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ThreadContextElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class ehn {

    /* renamed from: a */
    @JvmField
    @NotNull
    public final CoroutineContext f68950a;

    /* renamed from: b */
    @NotNull
    public final Object[] f68951b;

    /* renamed from: c */
    @NotNull
    public final ThreadContextElement<Object>[] f68952c;

    /* renamed from: d */
    public int f68953d;

    public ehn(@NotNull CoroutineContext coroutineContext, int i) {
        this.f68950a = coroutineContext;
        this.f68951b = new Object[i];
        this.f68952c = new ThreadContextElement[i];
    }

    /* renamed from: a */
    public final void m53963a(@NotNull ThreadContextElement<?> threadContextElement, @Nullable Object obj) {
        Object[] objArr = this.f68951b;
        int i = this.f68953d;
        objArr[i] = obj;
        ThreadContextElement<Object>[] threadContextElementArr = this.f68952c;
        this.f68953d = i + 1;
        Intrinsics.checkNotNull(threadContextElement, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        threadContextElementArr[i] = threadContextElement;
    }

    /* renamed from: b */
    public final void m53964b(@NotNull CoroutineContext coroutineContext) {
        int length = this.f68952c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i = length - 1;
            ThreadContextElement<Object> threadContextElement = this.f68952c[length];
            Intrinsics.checkNotNull(threadContextElement);
            threadContextElement.restoreThreadContext(coroutineContext, this.f68951b[length]);
            if (i < 0) {
                return;
            } else {
                length = i;
            }
        }
    }
}
