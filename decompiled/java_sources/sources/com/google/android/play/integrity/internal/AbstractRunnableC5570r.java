package com.google.android.play.integrity.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.TaskCompletionSource;

/* renamed from: com.google.android.play.integrity.internal.r */
/* loaded from: classes6.dex */
public abstract class AbstractRunnableC5570r implements Runnable {

    /* renamed from: a */
    @Nullable
    private final TaskCompletionSource f33483a;

    public AbstractRunnableC5570r() {
        this.f33483a = null;
    }

    /* renamed from: a */
    public void mo25663a(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.f33483a;
        if (taskCompletionSource != null) {
            taskCompletionSource.trySetException(exc);
        }
    }

    /* renamed from: b */
    public abstract void mo25664b();

    @Nullable
    /* renamed from: c */
    public final TaskCompletionSource m25750c() {
        return this.f33483a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            mo25664b();
        } catch (Exception e) {
            mo25663a(e);
        }
    }

    public AbstractRunnableC5570r(@Nullable TaskCompletionSource taskCompletionSource) {
        this.f33483a = taskCompletionSource;
    }
}
