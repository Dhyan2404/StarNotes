package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.PendingIntentCompat;
import java.io.Closeable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes3.dex */
public final class PendingIntentCompat {

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public @interface Flags {
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.app.PendingIntentCompat$a */
    /* loaded from: classes3.dex */
    public static class C0604a {
        @DoNotInline
        /* renamed from: a */
        public static void m2594a(@NonNull PendingIntent pendingIntent, @NonNull Context context, int i, @NonNull Intent intent, @Nullable PendingIntent.OnFinished onFinished, @Nullable Handler handler, @Nullable String str, @Nullable Bundle bundle) throws PendingIntent.CanceledException {
            pendingIntent.send(context, i, intent, onFinished, handler, str, bundle);
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.app.PendingIntentCompat$b */
    /* loaded from: classes3.dex */
    public static class C0605b {
        @DoNotInline
        /* renamed from: a */
        public static PendingIntent m2595a(Context context, int i, Intent intent, int i2) {
            return PendingIntent.getForegroundService(context, i, intent, i2);
        }
    }

    /* renamed from: androidx.core.app.PendingIntentCompat$c */
    /* loaded from: classes3.dex */
    public static class C0606c implements Closeable {

        /* renamed from: f */
        @Nullable
        public PendingIntent.OnFinished f5118f;

        /* renamed from: e */
        public final CountDownLatch f5117e = new CountDownLatch(1);

        /* renamed from: g */
        public boolean f5119g = false;

        public C0606c(@Nullable PendingIntent.OnFinished onFinished) {
            this.f5118f = onFinished;
        }

        /* renamed from: H */
        public final void m2597H(PendingIntent pendingIntent, Intent intent, int i, String str, Bundle bundle) {
            boolean z = false;
            while (true) {
                try {
                    this.f5117e.await();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            PendingIntent.OnFinished onFinished = this.f5118f;
            if (onFinished != null) {
                onFinished.onSendFinished(pendingIntent, intent, i, str, bundle);
                this.f5118f = null;
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!this.f5119g) {
                this.f5118f = null;
            }
            this.f5117e.countDown();
        }

        /* renamed from: j */
        public void m2598j() {
            this.f5119g = true;
        }

        @Nullable
        /* renamed from: w */
        public PendingIntent.OnFinished m2599w() {
            if (this.f5118f == null) {
                return null;
            }
            return new PendingIntent.OnFinished() { // from class: com.sunia.HTREnginev2.f2l
                @Override // android.app.PendingIntent.OnFinished
                public final void onSendFinished(PendingIntent pendingIntent, Intent intent, int i, String str, Bundle bundle) {
                    PendingIntentCompat.C0606c.this.m2597H(pendingIntent, intent, i, str, bundle);
                }
            };
        }
    }

    /* renamed from: a */
    public static int m2593a(boolean z, int i) {
        int i2;
        if (!z) {
            i2 = 67108864;
        } else {
            if (Build.VERSION.SDK_INT < 31) {
                return i;
            }
            i2 = 33554432;
        }
        return i | i2;
    }

    @NonNull
    public static PendingIntent getActivities(@NonNull Context context, int i, @NonNull @SuppressLint({"ArrayReturn"}) Intent[] intentArr, int i2, @Nullable Bundle bundle, boolean z) {
        return PendingIntent.getActivities(context, i, intentArr, m2593a(z, i2), bundle);
    }

    @Nullable
    public static PendingIntent getActivity(@NonNull Context context, int i, @NonNull Intent intent, int i2, boolean z) {
        return PendingIntent.getActivity(context, i, intent, m2593a(z, i2));
    }

    @Nullable
    public static PendingIntent getBroadcast(@NonNull Context context, int i, @NonNull Intent intent, int i2, boolean z) {
        return PendingIntent.getBroadcast(context, i, intent, m2593a(z, i2));
    }

    @NonNull
    @RequiresApi(26)
    public static PendingIntent getForegroundService(@NonNull Context context, int i, @NonNull Intent intent, int i2, boolean z) {
        return C0605b.m2595a(context, i, intent, m2593a(z, i2));
    }

    @Nullable
    public static PendingIntent getService(@NonNull Context context, int i, @NonNull Intent intent, int i2, boolean z) {
        return PendingIntent.getService(context, i, intent, m2593a(z, i2));
    }

    @SuppressLint({"LambdaLast"})
    public static void send(@NonNull PendingIntent pendingIntent, int i, @Nullable PendingIntent.OnFinished onFinished, @Nullable Handler handler) throws PendingIntent.CanceledException {
        C0606c c0606c = new C0606c(onFinished);
        try {
            pendingIntent.send(i, c0606c.m2599w(), handler);
            c0606c.m2598j();
            c0606c.close();
        } catch (Throwable th) {
            try {
                c0606c.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @NonNull
    public static PendingIntent getActivities(@NonNull Context context, int i, @NonNull @SuppressLint({"ArrayReturn"}) Intent[] intentArr, int i2, boolean z) {
        return PendingIntent.getActivities(context, i, intentArr, m2593a(z, i2));
    }

    @Nullable
    public static PendingIntent getActivity(@NonNull Context context, int i, @NonNull Intent intent, int i2, @Nullable Bundle bundle, boolean z) {
        return PendingIntent.getActivity(context, i, intent, m2593a(z, i2), bundle);
    }

    @SuppressLint({"LambdaLast"})
    public static void send(@NonNull PendingIntent pendingIntent, @NonNull @SuppressLint({"ContextFirst"}) Context context, int i, @NonNull Intent intent, @Nullable PendingIntent.OnFinished onFinished, @Nullable Handler handler) throws PendingIntent.CanceledException {
        send(pendingIntent, context, i, intent, onFinished, handler, null, null);
    }

    @SuppressLint({"LambdaLast"})
    public static void send(@NonNull PendingIntent pendingIntent, @NonNull @SuppressLint({"ContextFirst"}) Context context, int i, @NonNull Intent intent, @Nullable PendingIntent.OnFinished onFinished, @Nullable Handler handler, @Nullable String str, @Nullable Bundle bundle) throws PendingIntent.CanceledException {
        C0606c c0606c = new C0606c(onFinished);
        try {
            C0604a.m2594a(pendingIntent, context, i, intent, onFinished, handler, str, bundle);
            c0606c.m2598j();
            c0606c.close();
        } catch (Throwable th) {
            try {
                c0606c.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
