package dagger.hilt.android.internal;

import android.os.Looper;

/* loaded from: classes10.dex */
public final class ThreadUtil {

    /* renamed from: a */
    public static Thread f94482a;

    public static void ensureMainThread() {
        if (!isMainThread()) {
            throw new IllegalStateException("Must be called on the Main thread.");
        }
    }

    public static boolean isMainThread() {
        if (f94482a == null) {
            f94482a = Looper.getMainLooper().getThread();
        }
        return Thread.currentThread() == f94482a;
    }
}
