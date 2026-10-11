package com.tencent.beacon.p071c.p072a;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.tencent.beacon.module.StatModule;
import java.util.HashMap;
import java.util.Map;

@TargetApi(14)
/* renamed from: com.tencent.beacon.c.a.d */
/* loaded from: classes10.dex */
public class C14965d implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private long f92931a = System.currentTimeMillis();

    /* renamed from: b */
    private Map<Activity, Long> f92932b = new HashMap(3);

    /* renamed from: c */
    private StatModule f92933c;

    public C14965d(StatModule statModule) {
        this.f92933c = statModule;
    }

    /* renamed from: a */
    private void m59429a(Activity activity) {
        Long l = this.f92932b.get(activity);
        if (l == null) {
            l = Long.valueOf(this.f92931a);
        }
        long currentTimeMillis = System.currentTimeMillis();
        this.f92933c.m59696b(activity.getLocalClassName(), currentTimeMillis - l.longValue(), currentTimeMillis);
        this.f92932b.remove(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        m59429a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.f92932b.put(activity, Long.valueOf(System.currentTimeMillis()));
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
