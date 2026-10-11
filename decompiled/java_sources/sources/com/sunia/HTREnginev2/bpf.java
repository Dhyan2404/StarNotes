package com.sunia.HTREnginev2;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class bpf implements Flow {

    /* renamed from: e */
    @NotNull
    public static final bpf f65975e = new bpf();

    @Override // kotlinx.coroutines.flow.Flow
    @Nullable
    public Object collect(@NotNull FlowCollector<?> flowCollector, @NotNull Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }
}
