package com.sunia.HTREnginev2;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final class snm<T> {

    /* renamed from: a */
    @JvmField
    @NotNull
    public final Flow<T> f84322a;

    /* renamed from: b */
    @JvmField
    public final int f84323b;

    /* renamed from: c */
    @JvmField
    @NotNull
    public final BufferOverflow f84324c;

    /* renamed from: d */
    @JvmField
    @NotNull
    public final CoroutineContext f84325d;

    /* JADX WARN: Multi-variable type inference failed */
    public snm(@NotNull Flow<? extends T> flow, int i, @NotNull BufferOverflow bufferOverflow, @NotNull CoroutineContext coroutineContext) {
        this.f84322a = flow;
        this.f84323b = i;
        this.f84324c = bufferOverflow;
        this.f84325d = coroutineContext;
    }
}
