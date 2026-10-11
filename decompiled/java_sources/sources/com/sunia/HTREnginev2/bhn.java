package com.sunia.HTREnginev2;

import kotlinx.coroutines.DelicateCoroutinesApi;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.ThreadPoolDispatcherKt;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final /* synthetic */ class bhn {
    @DelicateCoroutinesApi
    @ExperimentalCoroutinesApi
    @NotNull
    /* renamed from: a */
    public static final ExecutorCoroutineDispatcher m53272a(@NotNull String str) {
        return ThreadPoolDispatcherKt.newFixedThreadPoolContext(1, str);
    }
}
