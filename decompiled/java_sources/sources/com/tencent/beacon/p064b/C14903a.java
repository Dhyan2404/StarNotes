package com.tencent.beacon.p064b;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.tencent.beacon.p059a.p062c.C14887b;

/* renamed from: com.tencent.beacon.b.a */
/* loaded from: classes10.dex */
public class C14903a implements Application.ActivityLifecycleCallbacks {
    /* renamed from: a */
    public void m59115a(Activity activity) {
        C14887b.f92592d = true;
        activity.getApplication().unregisterActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        m59115a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        m59115a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        m59115a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        m59115a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m59115a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        m59115a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        m59115a(activity);
    }
}
