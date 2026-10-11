package androidx.arch.core.executor;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.arch.core.executor.ArchTaskExecutor;
import java.util.concurrent.Executor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class ArchTaskExecutor extends TaskExecutor {

    /* renamed from: c */
    public static volatile ArchTaskExecutor f2131c;

    /* renamed from: d */
    @NonNull
    public static final Executor f2132d = new Executor() { // from class: com.sunia.HTREnginev2.kd
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            ArchTaskExecutor.m981c(runnable);
        }
    };

    /* renamed from: e */
    @NonNull
    public static final Executor f2133e = new Executor() { // from class: com.sunia.HTREnginev2.ld
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            ArchTaskExecutor.m982d(runnable);
        }
    };

    /* renamed from: a */
    @NonNull
    public TaskExecutor f2134a;

    /* renamed from: b */
    @NonNull
    public final TaskExecutor f2135b;

    public ArchTaskExecutor() {
        DefaultTaskExecutor defaultTaskExecutor = new DefaultTaskExecutor();
        this.f2135b = defaultTaskExecutor;
        this.f2134a = defaultTaskExecutor;
    }

    /* renamed from: c */
    public static /* synthetic */ void m981c(Runnable runnable) {
        getInstance().postToMainThread(runnable);
    }

    /* renamed from: d */
    public static /* synthetic */ void m982d(Runnable runnable) {
        getInstance().executeOnDiskIO(runnable);
    }

    @NonNull
    public static Executor getIOThreadExecutor() {
        return f2133e;
    }

    @NonNull
    public static ArchTaskExecutor getInstance() {
        if (f2131c != null) {
            return f2131c;
        }
        synchronized (ArchTaskExecutor.class) {
            if (f2131c == null) {
                f2131c = new ArchTaskExecutor();
            }
        }
        return f2131c;
    }

    @NonNull
    public static Executor getMainThreadExecutor() {
        return f2132d;
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void executeOnDiskIO(@NonNull Runnable runnable) {
        this.f2134a.executeOnDiskIO(runnable);
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public boolean isMainThread() {
        return this.f2134a.isMainThread();
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void postToMainThread(@NonNull Runnable runnable) {
        this.f2134a.postToMainThread(runnable);
    }

    public void setDelegate(@Nullable TaskExecutor taskExecutor) {
        if (taskExecutor == null) {
            taskExecutor = this.f2135b;
        }
        this.f2134a = taskExecutor;
    }
}
