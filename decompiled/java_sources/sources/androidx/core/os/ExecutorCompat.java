package androidx.core.os;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes3.dex */
public final class ExecutorCompat {

    /* renamed from: androidx.core.os.ExecutorCompat$a */
    /* loaded from: classes3.dex */
    public static class ExecutorC0704a implements Executor {

        /* renamed from: e */
        public final Handler f5536e;

        public ExecutorC0704a(@NonNull Handler handler) {
            this.f5536e = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            if (this.f5536e.post((Runnable) Preconditions.checkNotNull(runnable))) {
                return;
            }
            throw new RejectedExecutionException(this.f5536e + " is shutting down");
        }
    }

    @NonNull
    public static Executor create(@NonNull Handler handler) {
        return new ExecutorC0704a(handler);
    }
}
