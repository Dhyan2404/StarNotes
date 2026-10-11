package com.sunia.HTREnginev2;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.Iterator;
import java.util.LinkedList;

/* renamed from: com.sunia.HTREnginev2.q6 */
/* loaded from: classes16.dex */
public class C14288q6 {

    /* renamed from: c */
    public static final C14288q6 f81691c = new C14288q6();

    /* renamed from: d */
    public static final int f81692d = 100;

    /* renamed from: a */
    public LinkedList<Activity> f81693a = null;

    /* renamed from: b */
    public boolean f81694b = false;

    /* renamed from: com.sunia.HTREnginev2.q6$a */
    /* loaded from: classes16.dex */
    public class a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: e */
        public int f81695e = 0;

        /* renamed from: f */
        public boolean f81696f = false;

        public a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            C14288q6.this.f81693a.addFirst(activity);
            if (C14288q6.this.f81693a.size() > 100) {
                C14288q6.this.f81693a.removeLast();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            C14288q6.this.f81693a.remove(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            int i = this.f81695e + 1;
            this.f81695e = i;
            if (i != 1 || this.f81696f) {
                return;
            }
            C14288q6.this.f81694b = true;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            boolean isChangingConfigurations = activity.isChangingConfigurations();
            this.f81696f = isChangingConfigurations;
            int i = this.f81695e - 1;
            this.f81695e = i;
            if (i != 0 || isChangingConfigurations) {
                return;
            }
            C14288q6.this.f81694b = false;
        }
    }

    /* renamed from: d */
    public static C14288q6 m56651d() {
        return f81691c;
    }

    /* renamed from: c */
    public void m56652c() {
        LinkedList<Activity> linkedList = this.f81693a;
        if (linkedList != null) {
            Iterator<Activity> it2 = linkedList.iterator();
            while (it2.hasNext()) {
                it2.next().finish();
            }
            this.f81693a.clear();
        }
    }

    /* renamed from: e */
    public void m56653e(Application application) {
        this.f81693a = new LinkedList<>();
        application.registerActivityLifecycleCallbacks(new a());
    }

    /* renamed from: f */
    public boolean m56654f() {
        return this.f81694b;
    }
}
