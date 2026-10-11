package com.sunia.HTREnginev2;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* renamed from: com.sunia.HTREnginev2.r6 */
/* loaded from: classes3.dex */
public final class C14336r6 {

    /* renamed from: a */
    public static final String f82780a = "ActivityRecreator";

    /* renamed from: b */
    public static final Class<?> f82781b;

    /* renamed from: c */
    public static final Field f82782c;

    /* renamed from: d */
    public static final Field f82783d;

    /* renamed from: e */
    public static final Method f82784e;

    /* renamed from: f */
    public static final Method f82785f;

    /* renamed from: g */
    public static final Method f82786g;

    /* renamed from: h */
    public static final Handler f82787h = new Handler(Looper.getMainLooper());

    /* renamed from: com.sunia.HTREnginev2.r6$a */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ d f82788e;

        /* renamed from: f */
        public final /* synthetic */ Object f82789f;

        public a(d dVar, Object obj) {
            this.f82788e = dVar;
            this.f82789f = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f82788e.f82794e = this.f82789f;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.r6$b */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Application f82790e;

        /* renamed from: f */
        public final /* synthetic */ d f82791f;

        public b(Application application, d dVar) {
            this.f82790e = application;
            this.f82791f = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f82790e.unregisterActivityLifecycleCallbacks(this.f82791f);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.r6$c */
    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Object f82792e;

        /* renamed from: f */
        public final /* synthetic */ Object f82793f;

        public c(Object obj, Object obj2) {
            this.f82792e = obj;
            this.f82793f = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Method method = C14336r6.f82784e;
                if (method != null) {
                    method.invoke(this.f82792e, this.f82793f, Boolean.FALSE, "AppCompat recreation");
                } else {
                    C14336r6.f82785f.invoke(this.f82792e, this.f82793f, Boolean.FALSE);
                }
            } catch (RuntimeException e) {
                if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                    throw e;
                }
            } catch (Throwable th) {
                Log.e(C14336r6.f82780a, "Exception while invoking performStopActivity", th);
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.r6$d */
    /* loaded from: classes3.dex */
    public static final class d implements Application.ActivityLifecycleCallbacks {

        /* renamed from: e */
        public Object f82794e;

        /* renamed from: f */
        public Activity f82795f;

        /* renamed from: g */
        public final int f82796g;

        /* renamed from: h */
        public boolean f82797h = false;

        /* renamed from: i */
        public boolean f82798i = false;

        /* renamed from: j */
        public boolean f82799j = false;

        public d(@NonNull Activity activity) {
            this.f82795f = activity;
            this.f82796g = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f82795f == activity) {
                this.f82795f = null;
                this.f82798i = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.f82798i || this.f82799j || this.f82797h || !C14336r6.m56922h(this.f82794e, this.f82796g, activity)) {
                return;
            }
            this.f82799j = true;
            this.f82794e = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f82795f == activity) {
                this.f82797h = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class<?> m56915a = m56915a();
        f82781b = m56915a;
        f82782c = m56916b();
        f82783d = m56920f();
        f82784e = m56918d(m56915a);
        f82785f = m56917c(m56915a);
        f82786g = m56919e(m56915a);
    }

    /* renamed from: a */
    public static Class<?> m56915a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static Field m56916b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: c */
    public static Method m56917c(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: d */
    public static Method m56918d(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: e */
    public static Method m56919e(Class<?> cls) {
        if (m56921g() && cls != null) {
            try {
                Class<?> cls2 = Boolean.TYPE;
                Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls2, Configuration.class, Configuration.class, cls2, cls2);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    /* renamed from: f */
    public static Field m56920f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: g */
    public static boolean m56921g() {
        return false;
    }

    /* renamed from: h */
    public static boolean m56922h(Object obj, int i, Activity activity) {
        try {
            Object obj2 = f82783d.get(activity);
            if (obj2 == obj && activity.hashCode() == i) {
                f82787h.postAtFrontOfQueue(new c(f82782c.get(activity), obj2));
                return true;
            }
            return false;
        } catch (Throwable th) {
            Log.e(f82780a, "Exception while fetching field values", th);
            return false;
        }
    }

    /* renamed from: i */
    public static boolean m56923i(@NonNull Activity activity) {
        activity.recreate();
        return true;
    }
}
