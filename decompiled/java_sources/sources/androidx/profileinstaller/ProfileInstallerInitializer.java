package androidx.profileinstaller;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.profileinstaller.ProfileInstaller;
import androidx.profileinstaller.ProfileInstallerInitializer;
import androidx.startup.Initializer;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class ProfileInstallerInitializer implements Initializer<Result> {

    /* renamed from: a */
    public static final int f9127a = 5000;

    /* loaded from: classes3.dex */
    public static class Result {
    }

    @RequiresApi(16)
    /* renamed from: androidx.profileinstaller.ProfileInstallerInitializer$a */
    /* loaded from: classes3.dex */
    public static class C1300a {
        @DoNotInline
        /* renamed from: c */
        public static void m5443c(final Runnable runnable) {
            Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: com.sunia.HTREnginev2.i8l
                @Override // android.view.Choreographer.FrameCallback
                public final void doFrame(long j) {
                    runnable.run();
                }
            });
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.profileinstaller.ProfileInstallerInitializer$b */
    /* loaded from: classes3.dex */
    public static class C1301b {
        @DoNotInline
        /* renamed from: a */
        public static Handler m5444a(Looper looper) {
            return Handler.createAsync(looper);
        }
    }

    /* renamed from: i */
    public static void m5438i(@NonNull final Context context) {
        new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new Runnable() { // from class: com.sunia.HTREnginev2.h8l
            @Override // java.lang.Runnable
            public final void run() {
                ProfileInstaller.writeProfile(context);
            }
        });
    }

    @RequiresApi(16)
    /* renamed from: d */
    public void m5439d(@NonNull final Context context) {
        C1300a.m5443c(new Runnable() { // from class: com.sunia.HTREnginev2.g8l
            @Override // java.lang.Runnable
            public final void run() {
                ProfileInstallerInitializer.this.m5435f(context);
            }
        });
    }

    @Override // androidx.startup.Initializer
    @NonNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return Collections.emptyList();
    }

    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public void m5435f(@NonNull final Context context) {
        C1301b.m5444a(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.f8l
            @Override // java.lang.Runnable
            public final void run() {
                ProfileInstallerInitializer.m5438i(context);
            }
        }, new Random().nextInt(Math.max(1000, 1)) + 5000);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.startup.Initializer
    @NonNull
    public Result create(@NonNull Context context) {
        m5439d(context.getApplicationContext());
        return new Result();
    }
}
