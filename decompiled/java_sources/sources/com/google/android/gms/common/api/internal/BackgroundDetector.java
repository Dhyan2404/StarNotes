package com.google.android.gms.common.api.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.Transition;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

@KeepForSdk
/* loaded from: classes5.dex */
public final class BackgroundDetector implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: i */
    public static final BackgroundDetector f29084i = new BackgroundDetector();

    /* renamed from: e */
    public final AtomicBoolean f29085e = new AtomicBoolean();

    /* renamed from: f */
    public final AtomicBoolean f29086f = new AtomicBoolean();

    /* renamed from: g */
    @GuardedBy(Transition.f10626J0)
    public final ArrayList f29087g = new ArrayList();

    /* renamed from: h */
    @GuardedBy(Transition.f10626J0)
    public boolean f29088h = false;

    @KeepForSdk
    /* loaded from: classes5.dex */
    public interface BackgroundStateChangeListener {
        @KeepForSdk
        void onBackgroundStateChanged(boolean z);
    }

    @KeepForSdk
    public BackgroundDetector() {
    }

    @NonNull
    @KeepForSdk
    public static BackgroundDetector getInstance() {
        return f29084i;
    }

    @KeepForSdk
    public static void initialize(@NonNull Application application) {
        BackgroundDetector backgroundDetector = f29084i;
        synchronized (backgroundDetector) {
            if (!backgroundDetector.f29088h) {
                application.registerActivityLifecycleCallbacks(backgroundDetector);
                application.registerComponentCallbacks(backgroundDetector);
                backgroundDetector.f29088h = true;
            }
        }
    }

    /* renamed from: a */
    public final void m21972a(boolean z) {
        synchronized (f29084i) {
            Iterator it2 = this.f29087g.iterator();
            while (it2.hasNext()) {
                ((BackgroundStateChangeListener) it2.next()).onBackgroundStateChanged(z);
            }
        }
    }

    @KeepForSdk
    public void addListener(@NonNull BackgroundStateChangeListener backgroundStateChangeListener) {
        synchronized (f29084i) {
            this.f29087g.add(backgroundStateChangeListener);
        }
    }

    @KeepForSdk
    public boolean isInBackground() {
        return this.f29085e.get();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        AtomicBoolean atomicBoolean = this.f29086f;
        boolean compareAndSet = this.f29085e.compareAndSet(true, false);
        atomicBoolean.set(true);
        if (compareAndSet) {
            m21972a(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(@NonNull Activity activity) {
        AtomicBoolean atomicBoolean = this.f29086f;
        boolean compareAndSet = this.f29085e.compareAndSet(true, false);
        atomicBoolean.set(true);
        if (compareAndSet) {
            m21972a(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(@NonNull Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(@NonNull Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        if (i == 20 && this.f29085e.compareAndSet(false, true)) {
            this.f29086f.set(true);
            m21972a(true);
        }
    }

    @KeepForSdk
    @TargetApi(16)
    public boolean readCurrentStateIfPossible(boolean z) {
        if (!this.f29086f.get()) {
            if (!PlatformVersion.isAtLeastJellyBean()) {
                return z;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f29086f.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f29085e.set(true);
            }
        }
        return isInBackground();
    }
}
