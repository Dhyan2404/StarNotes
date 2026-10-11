package androidx.core.os;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public final class HandlerCompat {

    /* renamed from: a */
    public static final String f5537a = "HandlerCompat";

    @RequiresApi(28)
    /* renamed from: androidx.core.os.HandlerCompat$a */
    /* loaded from: classes3.dex */
    public static class C0705a {
        /* renamed from: a */
        public static Handler m3114a(Looper looper) {
            return Handler.createAsync(looper);
        }

        /* renamed from: b */
        public static Handler m3115b(Looper looper, Handler.Callback callback) {
            return Handler.createAsync(looper, callback);
        }

        /* renamed from: c */
        public static boolean m3116c(Handler handler, Runnable runnable, Object obj, long j) {
            return handler.postDelayed(runnable, obj, j);
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.os.HandlerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0706b {
        /* renamed from: a */
        public static boolean m3117a(Handler handler, Runnable runnable) {
            return handler.hasCallbacks(runnable);
        }
    }

    @NonNull
    public static Handler createAsync(@NonNull Looper looper) {
        return C0705a.m3114a(looper);
    }

    public static boolean hasCallbacks(@NonNull Handler handler, @NonNull Runnable runnable) {
        return C0706b.m3117a(handler, runnable);
    }

    public static boolean postDelayed(@NonNull Handler handler, @NonNull Runnable runnable, @Nullable Object obj, long j) {
        return C0705a.m3116c(handler, runnable, obj, j);
    }

    @NonNull
    public static Handler createAsync(@NonNull Looper looper, @NonNull Handler.Callback callback) {
        return C0705a.m3115b(looper, callback);
    }
}
