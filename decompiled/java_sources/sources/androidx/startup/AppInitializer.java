package androidx.startup;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.tracing.Trace;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public final class AppInitializer {

    /* renamed from: d */
    public static final String f10343d = "Startup";

    /* renamed from: e */
    public static volatile AppInitializer f10344e;

    /* renamed from: f */
    public static final Object f10345f = new Object();

    /* renamed from: c */
    @NonNull
    public final Context f10348c;

    /* renamed from: b */
    @NonNull
    public final Set<Class<? extends Initializer<?>>> f10347b = new HashSet();

    /* renamed from: a */
    @NonNull
    public final Map<Class<?>, Object> f10346a = new HashMap();

    public AppInitializer(@NonNull Context context) {
        this.f10348c = context.getApplicationContext();
    }

    /* renamed from: e */
    public static void m6430e(@NonNull AppInitializer appInitializer) {
        synchronized (f10345f) {
            f10344e = appInitializer;
        }
    }

    @NonNull
    public static AppInitializer getInstance(@NonNull Context context) {
        if (f10344e == null) {
            synchronized (f10345f) {
                if (f10344e == null) {
                    f10344e = new AppInitializer(context);
                }
            }
        }
        return f10344e;
    }

    /* renamed from: a */
    public void m6431a() {
        try {
            try {
                Trace.beginSection(f10343d);
                m6432b(this.f10348c.getPackageManager().getProviderInfo(new ComponentName(this.f10348c.getPackageName(), InitializationProvider.class.getName()), 128).metaData);
            } catch (PackageManager.NameNotFoundException e) {
                throw new StartupException(e);
            }
        } finally {
            Trace.endSection();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public void m6432b(@Nullable Bundle bundle) {
        String string = this.f10348c.getString(C1446R.string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet = new HashSet();
                for (String str : bundle.keySet()) {
                    if (string.equals(bundle.getString(str, null))) {
                        Class<?> cls = Class.forName(str);
                        if (Initializer.class.isAssignableFrom(cls)) {
                            this.f10347b.add(cls);
                        }
                    }
                }
                Iterator<Class<? extends Initializer<?>>> it2 = this.f10347b.iterator();
                while (it2.hasNext()) {
                    m6434d(it2.next(), hashSet);
                }
            } catch (ClassNotFoundException e) {
                throw new StartupException(e);
            }
        }
    }

    @NonNull
    /* renamed from: c */
    public <T> T m6433c(@NonNull Class<? extends Initializer<?>> cls) {
        T t;
        synchronized (f10345f) {
            t = (T) this.f10346a.get(cls);
            if (t == null) {
                t = (T) m6434d(cls, new HashSet());
            }
        }
        return t;
    }

    @NonNull
    /* renamed from: d */
    public final <T> T m6434d(@NonNull Class<? extends Initializer<?>> cls, @NonNull Set<Class<?>> set) {
        T t;
        if (Trace.isEnabled()) {
            try {
                Trace.beginSection(cls.getSimpleName());
            } finally {
                Trace.endSection();
            }
        }
        if (set.contains(cls)) {
            throw new IllegalStateException(String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
        }
        if (this.f10346a.containsKey(cls)) {
            t = (T) this.f10346a.get(cls);
        } else {
            set.add(cls);
            try {
                Initializer<?> newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                List<Class<? extends Initializer<?>>> dependencies = newInstance.dependencies();
                if (!dependencies.isEmpty()) {
                    for (Class<? extends Initializer<?>> cls2 : dependencies) {
                        if (!this.f10346a.containsKey(cls2)) {
                            m6434d(cls2, set);
                        }
                    }
                }
                t = (T) newInstance.create(this.f10348c);
                set.remove(cls);
                this.f10346a.put(cls, t);
            } catch (Throwable th) {
                throw new StartupException(th);
            }
        }
        return t;
    }

    @NonNull
    public <T> T initializeComponent(@NonNull Class<? extends Initializer<T>> cls) {
        return (T) m6433c(cls);
    }

    public boolean isEagerlyInitialized(@NonNull Class<? extends Initializer<?>> cls) {
        return this.f10347b.contains(cls);
    }
}
