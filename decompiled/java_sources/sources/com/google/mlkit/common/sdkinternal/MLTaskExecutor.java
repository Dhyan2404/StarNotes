package com.google.mlkit.common.sdkinternal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.mlkit_common.zzaw;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.mlkit.common.MlKitException;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

@KeepForSdk
/* loaded from: classes6.dex */
public class MLTaskExecutor {

    /* renamed from: b */
    public static final Object f36555b = new Object();

    /* renamed from: c */
    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public static MLTaskExecutor f36556c;

    /* renamed from: a */
    public final Handler f36557a;

    public MLTaskExecutor(Looper looper) {
        this.f36557a = new com.google.android.gms.internal.mlkit_common.zza(looper);
    }

    @NonNull
    @KeepForSdk
    public static MLTaskExecutor getInstance() {
        MLTaskExecutor mLTaskExecutor;
        synchronized (f36555b) {
            if (f36556c == null) {
                HandlerThread handlerThread = new HandlerThread("MLHandler", 9);
                handlerThread.start();
                f36556c = new MLTaskExecutor(handlerThread.getLooper());
            }
            mLTaskExecutor = f36556c;
        }
        return mLTaskExecutor;
    }

    @NonNull
    @KeepForSdk
    public static Executor workerThreadExecutor() {
        return zzh.zza;
    }

    @NonNull
    @KeepForSdk
    public Handler getHandler() {
        return this.f36557a;
    }

    @NonNull
    @KeepForSdk
    public <ResultT> Task<ResultT> scheduleCallable(@NonNull final Callable<ResultT> callable) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        scheduleRunnable(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.zzf
            @Override // java.lang.Runnable
            public final void run() {
                Callable callable2 = callable;
                TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                try {
                    taskCompletionSource2.setResult(callable2.call());
                } catch (MlKitException e) {
                    taskCompletionSource2.setException(e);
                } catch (Exception e2) {
                    taskCompletionSource2.setException(new MlKitException("Internal error has occurred when executing ML Kit tasks", 13, e2));
                }
            }
        });
        return taskCompletionSource.getTask();
    }

    @KeepForSdk
    public void scheduleRunnable(@NonNull Runnable runnable) {
        workerThreadExecutor().execute(runnable);
    }

    @KeepForSdk
    public void scheduleRunnableDelayed(@NonNull Runnable runnable, long j) {
        this.f36557a.postDelayed(runnable, j);
    }

    @NonNull
    @KeepForSdk
    public <ResultT> Task<ResultT> scheduleTaskCallable(@NonNull Callable<Task<ResultT>> callable) {
        return (Task<ResultT>) scheduleCallable(callable).continueWithTask(zzaw.zza(), new Continuation() { // from class: com.google.mlkit.common.sdkinternal.zzg
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return (Task) task.getResult();
            }
        });
    }
}
