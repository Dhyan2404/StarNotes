package com.blankj.utilcode.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import com.blankj.utilcode.util.ThreadUtils;
import com.onyx.android.sdk.base.utils.LanguageManager;

/* loaded from: classes3.dex */
public final class Utils {

    /* renamed from: a */
    @SuppressLint({"StaticFieldLeak"})
    public static Application f14216a;

    /* loaded from: classes3.dex */
    public static class ActivityLifecycleCallbacks {
        public void onActivityCreated(@NonNull Activity activity) {
        }

        public void onActivityDestroyed(@NonNull Activity activity) {
        }

        public void onActivityPaused(@NonNull Activity activity) {
        }

        public void onActivityResumed(@NonNull Activity activity) {
        }

        public void onActivityStarted(@NonNull Activity activity) {
        }

        public void onActivityStopped(@NonNull Activity activity) {
        }

        public void onLifecycleChanged(@NonNull Activity activity, Lifecycle.Event event) {
        }
    }

    /* loaded from: classes3.dex */
    public interface Consumer<T> {
        void accept(T t);
    }

    /* loaded from: classes3.dex */
    public interface Func1<Ret, Par> {
        Ret call(Par par);
    }

    /* loaded from: classes3.dex */
    public interface OnAppStatusChangedListener {
        void onBackground(Activity activity);

        void onForeground(Activity activity);
    }

    /* loaded from: classes3.dex */
    public interface Supplier<T> {
        T get();
    }

    /* loaded from: classes3.dex */
    public static abstract class Task<Result> extends ThreadUtils.SimpleTask<Result> {

        /* renamed from: s */
        public Consumer<Result> f14217s;

        public Task(Consumer<Result> consumer) {
            this.f14217s = consumer;
        }

        @Override // com.blankj.utilcode.util.ThreadUtils.Task
        public void onSuccess(Result result) {
            Consumer<Result> consumer = this.f14217s;
            if (consumer != null) {
                consumer.accept(result);
            }
        }
    }

    public Utils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static Application getApp() {
        Application application = f14216a;
        if (application != null) {
            return application;
        }
        init(C1887b.m8453L());
        if (f14216a == null) {
            throw new NullPointerException("reflect failed.");
        }
        Log.i(LanguageManager.f40921b, C1887b.m8457N() + " reflect app success.");
        return f14216a;
    }

    public static void init(Application application) {
        if (application == null) {
            Log.e(LanguageManager.f40921b, "app is null.");
            return;
        }
        Application application2 = f14216a;
        if (application2 == null) {
            f14216a = application;
            C1887b.m8516l0(application);
            C1887b.m8454L0();
        } else {
            if (application2.equals(application)) {
                return;
            }
            C1887b.m8497e1(f14216a);
            f14216a = application;
            C1887b.m8516l0(application);
        }
    }
}
