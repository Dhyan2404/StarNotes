package io.reactivex.rxjava3.android.schedulers;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import com.sunia.HTREnginev2.ofh;
import io.reactivex.rxjava3.android.plugins.RxAndroidPlugins;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class AndroidSchedulers {

    /* renamed from: a */
    public static final Scheduler f94987a = RxAndroidPlugins.initMainThreadScheduler(new Callable() { // from class: com.sunia.HTREnginev2.ua
        @Override // java.util.concurrent.Callable
        public final Object call() {
            Scheduler scheduler;
            scheduler = AndroidSchedulers.C17242a.f94988a;
            return scheduler;
        }
    });

    /* renamed from: io.reactivex.rxjava3.android.schedulers.AndroidSchedulers$a */
    /* loaded from: classes3.dex */
    public static final class C17242a {

        /* renamed from: a */
        public static final Scheduler f94988a = AndroidSchedulers.m61091c(Looper.getMainLooper(), true);
    }

    public AndroidSchedulers() {
        throw new AssertionError("No instances.");
    }

    @SuppressLint({"NewApi"})
    /* renamed from: c */
    public static Scheduler m61091c(Looper looper, boolean async) {
        return new ofh(new Handler(looper), async);
    }

    public static Scheduler from(Looper looper) {
        return from(looper, true);
    }

    public static Scheduler mainThread() {
        return RxAndroidPlugins.onMainThreadScheduler(f94987a);
    }

    public static Scheduler from(Looper looper, boolean async) {
        if (looper != null) {
            return m61091c(looper, async);
        }
        throw new NullPointerException("looper == null");
    }
}
