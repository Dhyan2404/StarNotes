package com.sunia.HTREnginev2;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.hjq.window.EasyWindow;

/* renamed from: com.sunia.HTREnginev2.w6 */
/* loaded from: classes4.dex */
public final class C14589w6 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: e */
    public Activity f88263e;

    /* renamed from: f */
    public EasyWindow<?> f88264f;

    public C14589w6(EasyWindow<?> easyWindow, Activity activity) {
        this.f88263e = activity;
        this.f88264f = easyWindow;
    }

    /* renamed from: a */
    public void m57941a() {
        Activity activity = this.f88263e;
        if (activity == null) {
            return;
        }
        activity.registerActivityLifecycleCallbacks(this);
    }

    /* renamed from: b */
    public void m57942b() {
        Activity activity = this.f88263e;
        if (activity == null) {
            return;
        }
        activity.unregisterActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (this.f88263e != activity) {
            return;
        }
        this.f88263e = null;
        EasyWindow<?> easyWindow = this.f88264f;
        if (easyWindow == null) {
            return;
        }
        easyWindow.recycle();
        this.f88264f = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        EasyWindow<?> easyWindow;
        Activity activity2 = this.f88263e;
        if (activity2 == activity && activity2.isFinishing() && (easyWindow = this.f88264f) != null && easyWindow.isShowing()) {
            this.f88264f.cancel();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
