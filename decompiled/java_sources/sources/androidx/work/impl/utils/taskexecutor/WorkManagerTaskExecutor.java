package androidx.work.impl.utils.taskexecutor;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.impl.utils.SerialExecutorImpl;
import java.util.concurrent.Executor;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class WorkManagerTaskExecutor implements TaskExecutor {

    /* renamed from: a */
    public final SerialExecutorImpl f12032a;

    /* renamed from: b */
    public final CoroutineDispatcher f12033b;

    /* renamed from: c */
    public final Handler f12034c = new Handler(Looper.getMainLooper());

    /* renamed from: d */
    public final Executor f12035d = new ExecutorC1686a();

    /* renamed from: androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor$a */
    /* loaded from: classes3.dex */
    public class ExecutorC1686a implements Executor {
        public ExecutorC1686a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable command) {
            WorkManagerTaskExecutor.this.f12034c.post(command);
        }
    }

    public WorkManagerTaskExecutor(@NonNull Executor backgroundExecutor) {
        SerialExecutorImpl serialExecutorImpl = new SerialExecutorImpl(backgroundExecutor);
        this.f12032a = serialExecutorImpl;
        this.f12033b = ExecutorsKt.from(serialExecutorImpl);
    }

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    @NonNull
    public Executor getMainThreadExecutor() {
        return this.f12035d;
    }

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    @NonNull
    public CoroutineDispatcher getTaskCoroutineDispatcher() {
        return this.f12033b;
    }

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    @NonNull
    public SerialExecutorImpl getSerialTaskExecutor() {
        return this.f12032a;
    }
}
