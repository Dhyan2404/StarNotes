package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
enum zzaqz implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
