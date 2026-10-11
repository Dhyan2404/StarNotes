package com.oplus.ocs.base.task;

import com.oplus.ocs.base.utils.C13074d;
import java.util.concurrent.Executor;

/* renamed from: com.oplus.ocs.base.task.r */
/* loaded from: classes9.dex */
public final class ExecutorC13070r implements Executor {
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        C13074d.m52234a(runnable);
        runnable.run();
    }
}
