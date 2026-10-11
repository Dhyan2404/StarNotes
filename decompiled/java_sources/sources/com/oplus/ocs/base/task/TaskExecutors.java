package com.oplus.ocs.base.task;

import android.os.Handler;
import android.os.Looper;
import com.oplus.ocs.base.utils.C13074d;
import java.util.concurrent.Executor;

/* loaded from: classes9.dex */
public class TaskExecutors {
    public static final Executor MAIN_THREAD = new MainExecutor();
    public static final Executor CURRENT_THREAD = new ExecutorC13070r();

    /* loaded from: classes9.dex */
    public static class MainExecutor implements Executor {

        /* renamed from: a */
        private Handler f63092a = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C13074d.m52234a(runnable);
            this.f63092a.post(runnable);
        }
    }

    private TaskExecutors() {
    }
}
