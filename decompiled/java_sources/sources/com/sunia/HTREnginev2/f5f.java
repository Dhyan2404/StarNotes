package com.sunia.HTREnginev2;

import java.util.concurrent.Executor;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final class f5f implements Executor {

    /* renamed from: e */
    @NotNull
    public static final f5f f69672e = new f5f();

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        runnable.run();
    }
}
