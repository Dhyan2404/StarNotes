package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.app.LocaleManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.AnyThread;
import androidx.annotation.CallSuper;
import androidx.annotation.DoNotInline;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.VectorEnabledTintResources;
import androidx.collection.ArraySet;
import androidx.core.app.AppLocalesStorageHelper;
import androidx.core.os.LocaleListCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public abstract class AppCompatDelegate {
    public static final int FEATURE_ACTION_MODE_OVERLAY = 10;
    public static final int FEATURE_SUPPORT_ACTION_BAR = 108;
    public static final int FEATURE_SUPPORT_ACTION_BAR_OVERLAY = 109;

    @Deprecated
    public static final int MODE_NIGHT_AUTO = 0;
    public static final int MODE_NIGHT_AUTO_BATTERY = 3;

    @Deprecated
    public static final int MODE_NIGHT_AUTO_TIME = 0;
    public static final int MODE_NIGHT_FOLLOW_SYSTEM = -1;
    public static final int MODE_NIGHT_NO = 1;
    public static final int MODE_NIGHT_UNSPECIFIED = -100;
    public static final int MODE_NIGHT_YES = 2;

    /* renamed from: e */
    public static final boolean f669e = false;

    /* renamed from: f */
    public static final String f670f = "AppCompatDelegate";

    /* renamed from: h */
    public static final String f672h = "androidx.appcompat.app.AppLocalesMetadataHolderService";

    /* renamed from: g */
    public static ExecutorC0137c f671g = new ExecutorC0137c(new ExecutorC0138d());

    /* renamed from: i */
    public static int f673i = -100;

    /* renamed from: j */
    public static LocaleListCompat f674j = null;

    /* renamed from: k */
    public static LocaleListCompat f675k = null;

    /* renamed from: l */
    public static Boolean f676l = null;

    /* renamed from: m */
    public static boolean f677m = false;

    /* renamed from: n */
    public static final ArraySet<WeakReference<AppCompatDelegate>> f678n = new ArraySet<>();

    /* renamed from: o */
    public static final Object f679o = new Object();

    /* renamed from: p */
    public static final Object f680p = new Object();

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface NightMode {
    }

    @RequiresApi(24)
    /* renamed from: androidx.appcompat.app.AppCompatDelegate$a */
    /* loaded from: classes3.dex */
    public static class C0135a {
        @DoNotInline
        /* renamed from: a */
        public static LocaleList m341a(String str) {
            return LocaleList.forLanguageTags(str);
        }
    }

    @RequiresApi(33)
    /* renamed from: androidx.appcompat.app.AppCompatDelegate$b */
    /* loaded from: classes3.dex */
    public static class C0136b {
        @DoNotInline
        /* renamed from: a */
        public static LocaleList m342a(Object obj) {
            return ((LocaleManager) obj).getApplicationLocales();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m343b(Object obj, LocaleList localeList) {
            ((LocaleManager) obj).setApplicationLocales(localeList);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegate$c */
    /* loaded from: classes3.dex */
    public static class ExecutorC0137c implements Executor {

        /* renamed from: e */
        public final Object f681e = new Object();

        /* renamed from: f */
        public final Queue<Runnable> f682f = new ArrayDeque();

        /* renamed from: g */
        public final Executor f683g;

        /* renamed from: h */
        public Runnable f684h;

        public ExecutorC0137c(Executor executor) {
            this.f683g = executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m345b(Runnable runnable) {
            try {
                runnable.run();
            } finally {
                m346c();
            }
        }

        /* renamed from: c */
        public void m346c() {
            synchronized (this.f681e) {
                Runnable poll = this.f682f.poll();
                this.f684h = poll;
                if (poll != null) {
                    this.f683g.execute(poll);
                }
            }
        }

        @Override // java.util.concurrent.Executor
        public void execute(final Runnable runnable) {
            synchronized (this.f681e) {
                this.f682f.add(new Runnable() { // from class: com.sunia.HTREnginev2.fc
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppCompatDelegate.ExecutorC0137c.this.m345b(runnable);
                    }
                });
                if (this.f684h == null) {
                    m346c();
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegate$d */
    /* loaded from: classes3.dex */
    public static class ExecutorC0138d implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            new Thread(runnable).start();
        }
    }

    /* renamed from: c */
    public static void m324c(@NonNull AppCompatDelegate appCompatDelegate) {
        synchronized (f679o) {
            m334o(appCompatDelegate);
            f678n.add(new WeakReference<>(appCompatDelegate));
        }
    }

    @NonNull
    public static AppCompatDelegate create(@NonNull Activity activity, @Nullable AppCompatCallback appCompatCallback) {
        return new AppCompatDelegateImpl(activity, appCompatCallback);
    }

    /* renamed from: e */
    public static void m325e() {
        synchronized (f679o) {
            Iterator<WeakReference<AppCompatDelegate>> it2 = f678n.iterator();
            while (it2.hasNext()) {
                AppCompatDelegate appCompatDelegate = it2.next().get();
                if (appCompatDelegate != null) {
                    appCompatDelegate.applyDayNight();
                }
            }
        }
    }

    /* renamed from: f */
    public static void m326f() {
        Iterator<WeakReference<AppCompatDelegate>> it2 = f678n.iterator();
        while (it2.hasNext()) {
            AppCompatDelegate appCompatDelegate = it2.next().get();
            if (appCompatDelegate != null) {
                appCompatDelegate.mo339d();
            }
        }
    }

    @NonNull
    @AnyThread
    public static LocaleListCompat getApplicationLocales() {
        if (Build.VERSION.SDK_INT >= 33) {
            Object m327h = m327h();
            if (m327h != null) {
                return LocaleListCompat.wrap(C0136b.m342a(m327h));
            }
        } else {
            LocaleListCompat localeListCompat = f674j;
            if (localeListCompat != null) {
                return localeListCompat;
            }
        }
        return LocaleListCompat.getEmptyLocaleList();
    }

    public static int getDefaultNightMode() {
        return f673i;
    }

    @RequiresApi(33)
    /* renamed from: h */
    public static Object m327h() {
        Context contextForDelegate;
        Iterator<WeakReference<AppCompatDelegate>> it2 = f678n.iterator();
        while (it2.hasNext()) {
            AppCompatDelegate appCompatDelegate = it2.next().get();
            if (appCompatDelegate != null && (contextForDelegate = appCompatDelegate.getContextForDelegate()) != null) {
                return contextForDelegate.getSystemService("locale");
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: i */
    public static LocaleListCompat m328i() {
        return f674j;
    }

    public static boolean isCompatVectorFromResourcesEnabled() {
        return VectorEnabledTintResources.isCompatVectorFromResourcesEnabled();
    }

    @Nullable
    /* renamed from: j */
    public static LocaleListCompat m329j() {
        return f675k;
    }

    /* renamed from: k */
    public static boolean m330k(Context context) {
        if (f676l == null) {
            try {
                Bundle bundle = AppLocalesMetadataHolderService.getServiceInfo(context).metaData;
                if (bundle != null) {
                    f676l = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d(f670f, "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                f676l = Boolean.FALSE;
            }
        }
        return f676l.booleanValue();
    }

    /* renamed from: m */
    public static /* synthetic */ void m332m(Context context) {
        m337r(context);
        f677m = true;
    }

    /* renamed from: n */
    public static void m333n(@NonNull AppCompatDelegate appCompatDelegate) {
        synchronized (f679o) {
            m334o(appCompatDelegate);
        }
    }

    /* renamed from: o */
    public static void m334o(@NonNull AppCompatDelegate appCompatDelegate) {
        synchronized (f679o) {
            Iterator<WeakReference<AppCompatDelegate>> it2 = f678n.iterator();
            while (it2.hasNext()) {
                AppCompatDelegate appCompatDelegate2 = it2.next().get();
                if (appCompatDelegate2 == appCompatDelegate || appCompatDelegate2 == null) {
                    it2.remove();
                }
            }
        }
    }

    @VisibleForTesting
    /* renamed from: p */
    public static void m335p() {
        f674j = null;
        f675k = null;
    }

    @VisibleForTesting
    /* renamed from: q */
    public static void m336q(boolean z) {
        f676l = Boolean.valueOf(z);
    }

    /* renamed from: r */
    public static void m337r(Context context) {
        if (Build.VERSION.SDK_INT >= 33) {
            ComponentName componentName = new ComponentName(context, f672h);
            if (context.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                if (getApplicationLocales().isEmpty()) {
                    String readLocales = AppLocalesStorageHelper.readLocales(context);
                    Object systemService = context.getSystemService("locale");
                    if (systemService != null) {
                        C0136b.m343b(systemService, C0135a.m341a(readLocales));
                    }
                }
                context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
            }
        }
    }

    /* renamed from: s */
    public static void m338s(final Context context) {
        if (m330k(context)) {
            if (Build.VERSION.SDK_INT >= 33) {
                if (f677m) {
                    return;
                }
                f671g.execute(new Runnable() { // from class: com.sunia.HTREnginev2.ec
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppCompatDelegate.m332m(context);
                    }
                });
                return;
            }
            synchronized (f680p) {
                LocaleListCompat localeListCompat = f674j;
                if (localeListCompat == null) {
                    if (f675k == null) {
                        f675k = LocaleListCompat.forLanguageTags(AppLocalesStorageHelper.readLocales(context));
                    }
                    if (f675k.isEmpty()) {
                    } else {
                        f674j = f675k;
                    }
                } else if (!localeListCompat.equals(f675k)) {
                    LocaleListCompat localeListCompat2 = f674j;
                    f675k = localeListCompat2;
                    AppLocalesStorageHelper.persistLocales(context, localeListCompat2.toLanguageTags());
                }
            }
        }
    }

    public static void setApplicationLocales(@NonNull LocaleListCompat localeListCompat) {
        Objects.requireNonNull(localeListCompat);
        if (Build.VERSION.SDK_INT >= 33) {
            Object m327h = m327h();
            if (m327h != null) {
                C0136b.m343b(m327h, C0135a.m341a(localeListCompat.toLanguageTags()));
                return;
            }
            return;
        }
        if (localeListCompat.equals(f674j)) {
            return;
        }
        synchronized (f679o) {
            f674j = localeListCompat;
            m326f();
        }
    }

    public static void setCompatVectorFromResourcesEnabled(boolean z) {
        VectorEnabledTintResources.setCompatVectorFromResourcesEnabled(z);
    }

    public static void setDefaultNightMode(int i) {
        if (i != -1 && i != 0 && i != 1 && i != 2 && i != 3) {
            Log.d(f670f, "setDefaultNightMode() called with an unknown mode");
        } else if (f673i != i) {
            f673i = i;
            m325e();
        }
    }

    public abstract void addContentView(View view, ViewGroup.LayoutParams layoutParams);

    public abstract boolean applyDayNight();

    @Deprecated
    public void attachBaseContext(Context context) {
    }

    @NonNull
    @CallSuper
    public Context attachBaseContext2(@NonNull Context context) {
        attachBaseContext(context);
        return context;
    }

    public abstract View createView(@Nullable View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet);

    /* renamed from: d */
    public boolean mo339d() {
        return false;
    }

    @Nullable
    public abstract <T extends View> T findViewById(@IdRes int i);

    /* renamed from: g */
    public void m340g(final Context context) {
        f671g.execute(new Runnable() { // from class: com.sunia.HTREnginev2.dc
            @Override // java.lang.Runnable
            public final void run() {
                AppCompatDelegate.m338s(context);
            }
        });
    }

    @Nullable
    public Context getContextForDelegate() {
        return null;
    }

    @Nullable
    public abstract ActionBarDrawerToggle.Delegate getDrawerToggleDelegate();

    public int getLocalNightMode() {
        return -100;
    }

    public abstract MenuInflater getMenuInflater();

    @Nullable
    public abstract ActionBar getSupportActionBar();

    public abstract boolean hasWindowFeature(int i);

    public abstract void installViewFactory();

    public abstract void invalidateOptionsMenu();

    public abstract boolean isHandleNativeActionModesEnabled();

    public abstract void onConfigurationChanged(Configuration configuration);

    public abstract void onCreate(Bundle bundle);

    public abstract void onDestroy();

    public abstract void onPostCreate(Bundle bundle);

    public abstract void onPostResume();

    public abstract void onSaveInstanceState(Bundle bundle);

    public abstract void onStart();

    public abstract void onStop();

    public abstract boolean requestWindowFeature(int i);

    public abstract void setContentView(@LayoutRes int i);

    public abstract void setContentView(View view);

    public abstract void setContentView(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void setHandleNativeActionModesEnabled(boolean z);

    public abstract void setLocalNightMode(int i);

    @RequiresApi(33)
    @CallSuper
    public void setOnBackInvokedDispatcher(@Nullable OnBackInvokedDispatcher onBackInvokedDispatcher) {
    }

    public abstract void setSupportActionBar(@Nullable Toolbar toolbar);

    public void setTheme(@StyleRes int i) {
    }

    public abstract void setTitle(@Nullable CharSequence charSequence);

    @Nullable
    public abstract ActionMode startSupportActionMode(@NonNull ActionMode.Callback callback);

    @NonNull
    public static AppCompatDelegate create(@NonNull Dialog dialog, @Nullable AppCompatCallback appCompatCallback) {
        return new AppCompatDelegateImpl(dialog, appCompatCallback);
    }

    @NonNull
    public static AppCompatDelegate create(@NonNull Context context, @NonNull Window window, @Nullable AppCompatCallback appCompatCallback) {
        return new AppCompatDelegateImpl(context, window, appCompatCallback);
    }

    @NonNull
    public static AppCompatDelegate create(@NonNull Context context, @NonNull Activity activity, @Nullable AppCompatCallback appCompatCallback) {
        return new AppCompatDelegateImpl(context, activity, appCompatCallback);
    }
}
