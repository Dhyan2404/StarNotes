package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.pnf;
import java.util.concurrent.Executor;

@GwtCompatible
@pnf
/* loaded from: classes6.dex */
enum DirectExecutor implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
