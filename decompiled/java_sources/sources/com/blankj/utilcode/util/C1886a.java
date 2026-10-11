package com.blankj.utilcode.util;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Log;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.lifecycle.Lifecycle;
import com.blankj.utilcode.util.Utils;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: com.blankj.utilcode.util.a */
/* loaded from: classes3.dex */
public final class C1886a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: k */
    public static final C1886a f14221k = new C1886a();

    /* renamed from: l */
    public static final Activity f14222l = new Activity();

    /* renamed from: e */
    public final LinkedList<Activity> f14223e = new LinkedList<>();

    /* renamed from: f */
    public final List<Utils.OnAppStatusChangedListener> f14224f = new CopyOnWriteArrayList();

    /* renamed from: g */
    public final Map<Activity, List<Utils.ActivityLifecycleCallbacks>> f14225g = new ConcurrentHashMap();

    /* renamed from: h */
    public int f14226h = 0;

    /* renamed from: i */
    public int f14227i = 0;

    /* renamed from: j */
    public boolean f14228j = false;

    /* renamed from: com.blankj.utilcode.util.a$a */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Activity f14229e;

        /* renamed from: f */
        public final /* synthetic */ Utils.ActivityLifecycleCallbacks f14230f;

        public a(Activity activity, Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
            this.f14229e = activity;
            this.f14230f = activityLifecycleCallbacks;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1886a.this.m8411f(this.f14229e, this.f14230f);
        }
    }

    /* renamed from: com.blankj.utilcode.util.a$b */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Activity f14232e;

        public b(Activity activity) {
            this.f14232e = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1886a.this.f14225g.remove(this.f14232e);
        }
    }

    /* renamed from: com.blankj.utilcode.util.a$c */
    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Activity f14234e;

        /* renamed from: f */
        public final /* synthetic */ Utils.ActivityLifecycleCallbacks f14235f;

        public c(Activity activity, Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
            this.f14234e = activity;
            this.f14235f = activityLifecycleCallbacks;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1886a.this.m8429x(this.f14234e, this.f14235f);
        }
    }

    /* renamed from: com.blankj.utilcode.util.a$d */
    /* loaded from: classes3.dex */
    public class d implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Activity f14237e;

        /* renamed from: f */
        public final /* synthetic */ Object f14238f;

        public d(Activity activity, Object obj) {
            this.f14237e = activity;
            this.f14238f = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Window window = this.f14237e.getWindow();
                if (window != null) {
                    window.setSoftInputMode(((Integer) this.f14238f).intValue());
                }
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: z */
    public static void m8406z() {
        if (ValueAnimator.areAnimatorsEnabled()) {
            return;
        }
        try {
            Field declaredField = ValueAnimator.class.getDeclaredField("sDurationScale");
            declaredField.setAccessible(true);
            if (((Float) declaredField.get(null)).floatValue() == 0.0f) {
                declaredField.set(null, Float.valueOf(1.0f));
                Log.i("UtilsActivityLifecycle", "setAnimatorsEnabled: Animators are enabled now!");
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: A */
    public final void m8407A(Activity activity) {
        if (!this.f14223e.contains(activity)) {
            this.f14223e.addFirst(activity);
        } else {
            if (this.f14223e.getFirst().equals(activity)) {
                return;
            }
            this.f14223e.remove(activity);
            this.f14223e.addFirst(activity);
        }
    }

    /* renamed from: B */
    public void m8408B(Application application) {
        this.f14223e.clear();
        application.unregisterActivityLifecycleCallbacks(this);
    }

    /* renamed from: d */
    public void m8409d(Activity activity, Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        if (activity == null || activityLifecycleCallbacks == null) {
            return;
        }
        C1887b.m8474V0(new a(activity, activityLifecycleCallbacks));
    }

    /* renamed from: e */
    public void m8410e(Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        m8409d(f14222l, activityLifecycleCallbacks);
    }

    /* renamed from: f */
    public final void m8411f(Activity activity, Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        List<Utils.ActivityLifecycleCallbacks> list = this.f14225g.get(activity);
        if (list == null) {
            list = new CopyOnWriteArrayList<>();
            this.f14225g.put(activity, list);
        } else if (list.contains(activityLifecycleCallbacks)) {
            return;
        }
        list.add(activityLifecycleCallbacks);
    }

    /* renamed from: g */
    public void m8412g(Utils.OnAppStatusChangedListener onAppStatusChangedListener) {
        this.f14224f.add(onAppStatusChangedListener);
    }

    /* renamed from: h */
    public final void m8413h(Activity activity, Lifecycle.Event event) {
        m8414i(activity, event, this.f14225g.get(activity));
        m8414i(activity, event, this.f14225g.get(f14222l));
    }

    /* renamed from: i */
    public final void m8414i(Activity activity, Lifecycle.Event event, List<Utils.ActivityLifecycleCallbacks> list) {
        if (list == null) {
            return;
        }
        for (Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks : list) {
            activityLifecycleCallbacks.onLifecycleChanged(activity, event);
            if (event.equals(Lifecycle.Event.ON_CREATE)) {
                activityLifecycleCallbacks.onActivityCreated(activity);
            } else if (event.equals(Lifecycle.Event.ON_START)) {
                activityLifecycleCallbacks.onActivityStarted(activity);
            } else if (event.equals(Lifecycle.Event.ON_RESUME)) {
                activityLifecycleCallbacks.onActivityResumed(activity);
            } else if (event.equals(Lifecycle.Event.ON_PAUSE)) {
                activityLifecycleCallbacks.onActivityPaused(activity);
            } else if (event.equals(Lifecycle.Event.ON_STOP)) {
                activityLifecycleCallbacks.onActivityStopped(activity);
            } else if (event.equals(Lifecycle.Event.ON_DESTROY)) {
                activityLifecycleCallbacks.onActivityDestroyed(activity);
            }
        }
        if (event.equals(Lifecycle.Event.ON_DESTROY)) {
            this.f14225g.remove(activity);
        }
    }

    /* renamed from: j */
    public final List<Activity> m8415j() {
        Object m8417l;
        LinkedList linkedList = new LinkedList();
        Activity activity = null;
        try {
            m8417l = m8417l();
        } catch (Exception e) {
            Log.e("UtilsActivityLifecycle", "getActivitiesByReflect: " + e.getMessage());
        }
        if (m8417l == null) {
            return linkedList;
        }
        Field declaredField = m8417l.getClass().getDeclaredField("mActivities");
        declaredField.setAccessible(true);
        Object obj = declaredField.get(m8417l);
        if (!(obj instanceof Map)) {
            return linkedList;
        }
        for (Object obj2 : ((Map) obj).values()) {
            Class<?> cls = obj2.getClass();
            Field declaredField2 = cls.getDeclaredField(ActivityChooserModel.f1429r);
            declaredField2.setAccessible(true);
            Activity activity2 = (Activity) declaredField2.get(obj2);
            if (activity == null) {
                Field declaredField3 = cls.getDeclaredField("paused");
                declaredField3.setAccessible(true);
                if (declaredField3.getBoolean(obj2)) {
                    linkedList.addFirst(activity2);
                } else {
                    activity = activity2;
                }
            } else {
                linkedList.addFirst(activity2);
            }
        }
        if (activity != null) {
            linkedList.addFirst(activity);
        }
        return linkedList;
    }

    /* renamed from: k */
    public List<Activity> m8416k() {
        if (!this.f14223e.isEmpty()) {
            return new LinkedList(this.f14223e);
        }
        this.f14223e.addAll(m8415j());
        return new LinkedList(this.f14223e);
    }

    /* renamed from: l */
    public final Object m8417l() {
        Object m8418m = m8418m();
        return m8418m != null ? m8418m : m8419n();
    }

    /* renamed from: m */
    public final Object m8418m() {
        try {
            Field declaredField = Class.forName("android.app.ActivityThread").getDeclaredField("sCurrentActivityThread");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception e) {
            Log.e("UtilsActivityLifecycle", "getActivityThreadInActivityThreadStaticField: " + e.getMessage());
            return null;
        }
    }

    /* renamed from: n */
    public final Object m8419n() {
        try {
            return Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            Log.e("UtilsActivityLifecycle", "getActivityThreadInActivityThreadStaticMethod: " + e.getMessage());
            return null;
        }
    }

    /* renamed from: o */
    public Application m8420o() {
        Object invoke;
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object m8417l = m8417l();
            if (m8417l == null || (invoke = cls.getMethod("getApplication", new Class[0]).invoke(m8417l, new Object[0])) == null) {
                return null;
            }
            return (Application) invoke;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NonNull Activity activity, Bundle bundle) {
        if (this.f14223e.size() == 0) {
            m8424s(activity, true);
        }
        LanguageUtils.m8119b(activity);
        m8406z();
        m8407A(activity);
        m8413h(activity, Lifecycle.Event.ON_CREATE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NonNull Activity activity) {
        this.f14223e.remove(activity);
        C1887b.m8439E(activity);
        m8413h(activity, Lifecycle.Event.ON_DESTROY);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NonNull Activity activity) {
        m8413h(activity, Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostDestroyed(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostPaused(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostResumed(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostSaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostStarted(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostStopped(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreDestroyed(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPrePaused(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreResumed(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreSaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreStarted(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreStopped(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NonNull Activity activity) {
        m8407A(activity);
        if (this.f14228j) {
            this.f14228j = false;
            m8424s(activity, true);
        }
        m8425t(activity, false);
        m8413h(activity, Lifecycle.Event.ON_RESUME);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NonNull Activity activity) {
        if (!this.f14228j) {
            m8407A(activity);
        }
        int i = this.f14227i;
        if (i < 0) {
            this.f14227i = i + 1;
        } else {
            this.f14226h++;
        }
        m8413h(activity, Lifecycle.Event.ON_START);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (activity.isChangingConfigurations()) {
            this.f14227i--;
        } else {
            int i = this.f14226h - 1;
            this.f14226h = i;
            if (i <= 0) {
                this.f14228j = true;
                m8424s(activity, false);
            }
        }
        m8425t(activity, true);
        m8413h(activity, Lifecycle.Event.ON_STOP);
    }

    /* renamed from: p */
    public Activity m8421p() {
        for (Activity activity : m8416k()) {
            if (C1887b.m8524p0(activity)) {
                return activity;
            }
        }
        return null;
    }

    /* renamed from: q */
    public void m8422q(Application application) {
        application.registerActivityLifecycleCallbacks(this);
    }

    /* renamed from: r */
    public boolean m8423r() {
        return !this.f14228j;
    }

    /* renamed from: s */
    public final void m8424s(Activity activity, boolean z) {
        if (this.f14224f.isEmpty()) {
            return;
        }
        for (Utils.OnAppStatusChangedListener onAppStatusChangedListener : this.f14224f) {
            if (z) {
                onAppStatusChangedListener.onForeground(activity);
            } else {
                onAppStatusChangedListener.onBackground(activity);
            }
        }
    }

    /* renamed from: t */
    public final void m8425t(Activity activity, boolean z) {
        try {
            if (z) {
                Window window = activity.getWindow();
                window.getDecorView().setTag(BarUtils.f13631c, Integer.valueOf(window.getAttributes().softInputMode));
                window.setSoftInputMode(3);
            } else {
                Object tag = activity.getWindow().getDecorView().getTag(BarUtils.f13631c);
                if (!(tag instanceof Integer)) {
                } else {
                    C1887b.m8476W0(new d(activity, tag), 100L);
                }
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: u */
    public void m8426u(Activity activity) {
        if (activity == null) {
            return;
        }
        C1887b.m8474V0(new b(activity));
    }

    /* renamed from: v */
    public void m8427v(Activity activity, Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        if (activity == null || activityLifecycleCallbacks == null) {
            return;
        }
        C1887b.m8474V0(new c(activity, activityLifecycleCallbacks));
    }

    /* renamed from: w */
    public void m8428w(Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        m8427v(f14222l, activityLifecycleCallbacks);
    }

    /* renamed from: x */
    public final void m8429x(Activity activity, Utils.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        List<Utils.ActivityLifecycleCallbacks> list = this.f14225g.get(activity);
        if (list == null || list.isEmpty()) {
            return;
        }
        list.remove(activityLifecycleCallbacks);
    }

    /* renamed from: y */
    public void m8430y(Utils.OnAppStatusChangedListener onAppStatusChangedListener) {
        this.f14224f.remove(onAppStatusChangedListener);
    }
}
