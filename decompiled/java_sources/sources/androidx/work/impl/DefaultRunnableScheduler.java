package androidx.work.impl;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.os.HandlerCompat;
import androidx.work.RunnableScheduler;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class DefaultRunnableScheduler implements RunnableScheduler {

    /* renamed from: a */
    public final Handler f11453a = HandlerCompat.createAsync(Looper.getMainLooper());

    @Override // androidx.work.RunnableScheduler
    public void cancel(@NonNull Runnable runnable) {
        this.f11453a.removeCallbacks(runnable);
    }

    @NonNull
    public Handler getHandler() {
        return this.f11453a;
    }

    @Override // androidx.work.RunnableScheduler
    public void scheduleWithDelay(long delayInMillis, @NonNull Runnable runnable) {
        this.f11453a.postDelayed(runnable, delayInMillis);
    }
}
