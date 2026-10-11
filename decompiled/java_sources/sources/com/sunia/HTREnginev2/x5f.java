package com.sunia.HTREnginev2;

import java.util.concurrent.Future;
import kotlinx.coroutines.DisposableHandle;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final class x5f implements DisposableHandle {

    /* renamed from: e */
    @NotNull
    public final Future<?> f89312e;

    public x5f(@NotNull Future<?> future) {
        this.f89312e = future;
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public void dispose() {
        this.f89312e.cancel(false);
    }

    @NotNull
    public String toString() {
        return "DisposableFutureHandle[" + this.f89312e + ']';
    }
}
