package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.core.os.UserManagerCompat;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentDiscovery;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.ComponentRuntime;
import com.google.firebase.components.Lazy;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.concurrent.UiExecutor;
import com.google.firebase.events.Publisher;
import com.google.firebase.heartbeatinfo.DefaultHeartBeatController;
import com.google.firebase.inject.Provider;
import com.google.firebase.internal.DataCollectionConfigStorage;
import com.google.firebase.provider.FirebaseInitProvider;
import com.google.firebase.tracing.ComponentMonitor;
import com.google.firebase.tracing.FirebaseTrace;
import com.sunia.HTREnginev2.cyi;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes6.dex */
public class FirebaseApp {

    @NonNull
    public static final String DEFAULT_APP_NAME = "[DEFAULT]";

    /* renamed from: k */
    public static final String f35502k = "FirebaseApp";

    /* renamed from: l */
    public static final Object f35503l = new Object();

    /* renamed from: m */
    @GuardedBy("LOCK")
    public static final Map<String, FirebaseApp> f35504m = new ArrayMap();

    /* renamed from: a */
    public final Context f35505a;

    /* renamed from: b */
    public final String f35506b;

    /* renamed from: c */
    public final FirebaseOptions f35507c;

    /* renamed from: d */
    public final ComponentRuntime f35508d;

    /* renamed from: g */
    public final Lazy<DataCollectionConfigStorage> f35511g;

    /* renamed from: h */
    public final Provider<DefaultHeartBeatController> f35512h;

    /* renamed from: e */
    public final AtomicBoolean f35509e = new AtomicBoolean(false);

    /* renamed from: f */
    public final AtomicBoolean f35510f = new AtomicBoolean();

    /* renamed from: i */
    public final List<BackgroundStateChangeListener> f35513i = new CopyOnWriteArrayList();

    /* renamed from: j */
    public final List<FirebaseAppLifecycleListener> f35514j = new CopyOnWriteArrayList();

    @KeepForSdk
    /* loaded from: classes6.dex */
    public interface BackgroundStateChangeListener {
        @KeepForSdk
        void onBackgroundStateChanged(boolean z);
    }

    @TargetApi(14)
    /* renamed from: com.google.firebase.FirebaseApp$a */
    /* loaded from: classes6.dex */
    public static class C6420a implements BackgroundDetector.BackgroundStateChangeListener {

        /* renamed from: a */
        public static AtomicReference<C6420a> f35515a = new AtomicReference<>();

        /* renamed from: b */
        public static void m27902b(Context context) {
            if (PlatformVersion.isAtLeastIceCreamSandwich() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (f35515a.get() == null) {
                    C6420a c6420a = new C6420a();
                    if (cyi.m53538a(f35515a, null, c6420a)) {
                        BackgroundDetector.initialize(application);
                        BackgroundDetector.getInstance().addListener(c6420a);
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public void onBackgroundStateChanged(boolean z) {
            synchronized (FirebaseApp.f35503l) {
                Iterator it2 = new ArrayList(FirebaseApp.f35504m.values()).iterator();
                while (it2.hasNext()) {
                    FirebaseApp firebaseApp = (FirebaseApp) it2.next();
                    if (firebaseApp.f35509e.get()) {
                        firebaseApp.m27899n(z);
                    }
                }
            }
        }
    }

    @TargetApi(24)
    /* renamed from: com.google.firebase.FirebaseApp$b */
    /* loaded from: classes6.dex */
    public static class C6421b extends BroadcastReceiver {

        /* renamed from: b */
        public static AtomicReference<C6421b> f35516b = new AtomicReference<>();

        /* renamed from: a */
        public final Context f35517a;

        public C6421b(Context context) {
            this.f35517a = context;
        }

        /* renamed from: b */
        public static void m27904b(Context context) {
            if (f35516b.get() == null) {
                C6421b c6421b = new C6421b(context);
                if (cyi.m53538a(f35516b, null, c6421b)) {
                    context.registerReceiver(c6421b, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        /* renamed from: c */
        public void m27905c() {
            this.f35517a.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (FirebaseApp.f35503l) {
                Iterator<FirebaseApp> it2 = FirebaseApp.f35504m.values().iterator();
                while (it2.hasNext()) {
                    it2.next().m27897i();
                }
            }
            m27905c();
        }
    }

    public FirebaseApp(final Context context, String str, FirebaseOptions firebaseOptions) {
        this.f35505a = (Context) Preconditions.checkNotNull(context);
        this.f35506b = Preconditions.checkNotEmpty(str);
        this.f35507c = (FirebaseOptions) Preconditions.checkNotNull(firebaseOptions);
        StartupTime startupTime = FirebaseInitProvider.getStartupTime();
        FirebaseTrace.pushTrace("Firebase");
        FirebaseTrace.pushTrace(ComponentDiscovery.f35808c);
        List<Provider<ComponentRegistrar>> discoverLazy = ComponentDiscovery.forContext(context, ComponentDiscoveryService.class).discoverLazy();
        FirebaseTrace.popTrace();
        FirebaseTrace.pushTrace("Runtime");
        ComponentRuntime.Builder processor = ComponentRuntime.builder(UiExecutor.INSTANCE).addLazyComponentRegistrars(discoverLazy).addComponentRegistrar(new FirebaseCommonRegistrar()).addComponentRegistrar(new ExecutorsRegistrar()).addComponent(Component.m28020of(context, (Class<Context>) Context.class, (Class<? super Context>[]) new Class[0])).addComponent(Component.m28020of(this, (Class<FirebaseApp>) FirebaseApp.class, (Class<? super FirebaseApp>[]) new Class[0])).addComponent(Component.m28020of(firebaseOptions, (Class<FirebaseOptions>) FirebaseOptions.class, (Class<? super FirebaseOptions>[]) new Class[0])).setProcessor(new ComponentMonitor());
        if (UserManagerCompat.isUserUnlocked(context) && FirebaseInitProvider.isCurrentlyInitializing()) {
            processor.addComponent(Component.m28020of(startupTime, (Class<StartupTime>) StartupTime.class, (Class<? super StartupTime>[]) new Class[0]));
        }
        ComponentRuntime build = processor.build();
        this.f35508d = build;
        FirebaseTrace.popTrace();
        this.f35511g = new Lazy<>(new Provider() { // from class: com.sunia.HTREnginev2.mmg
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                DataCollectionConfigStorage m27893k;
                m27893k = FirebaseApp.this.m27893k(context);
                return m27893k;
            }
        });
        this.f35512h = build.getProvider(DefaultHeartBeatController.class);
        addBackgroundStateChangeListener(new BackgroundStateChangeListener() { // from class: com.sunia.HTREnginev2.nmg
            @Override // com.google.firebase.FirebaseApp.BackgroundStateChangeListener
            public final void onBackgroundStateChanged(boolean z) {
                FirebaseApp.this.m27894l(z);
            }
        });
        FirebaseTrace.popTrace();
    }

    @VisibleForTesting
    public static void clearInstancesForTest() {
        synchronized (f35503l) {
            f35504m.clear();
        }
    }

    @NonNull
    public static List<FirebaseApp> getApps(@NonNull Context context) {
        ArrayList arrayList;
        synchronized (f35503l) {
            arrayList = new ArrayList(f35504m.values());
        }
        return arrayList;
    }

    @NonNull
    public static FirebaseApp getInstance() {
        FirebaseApp firebaseApp;
        synchronized (f35503l) {
            firebaseApp = f35504m.get(DEFAULT_APP_NAME);
            if (firebaseApp != null) {
                firebaseApp.f35512h.get().registerHeartBeat();
            } else {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ProcessUtils.getMyProcessName() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return firebaseApp;
    }

    /* renamed from: h */
    public static List<String> m27892h() {
        ArrayList arrayList = new ArrayList();
        synchronized (f35503l) {
            Iterator<FirebaseApp> it2 = f35504m.values().iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().getName());
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    @Nullable
    public static FirebaseApp initializeApp(@NonNull Context context) {
        synchronized (f35503l) {
            if (f35504m.containsKey(DEFAULT_APP_NAME)) {
                return getInstance();
            }
            FirebaseOptions fromResource = FirebaseOptions.fromResource(context);
            if (fromResource == null) {
                Log.w(f35502k, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            return initializeApp(context, fromResource);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ DataCollectionConfigStorage m27893k(Context context) {
        return new DataCollectionConfigStorage(context, getPersistenceKey(), (Publisher) this.f35508d.get(Publisher.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m27894l(boolean z) {
        if (z) {
            return;
        }
        this.f35512h.get().registerHeartBeat();
    }

    /* renamed from: m */
    public static String m27895m(@NonNull String str) {
        return str.trim();
    }

    @KeepForSdk
    public void addBackgroundStateChangeListener(BackgroundStateChangeListener backgroundStateChangeListener) {
        m27896g();
        if (this.f35509e.get() && BackgroundDetector.getInstance().isInBackground()) {
            backgroundStateChangeListener.onBackgroundStateChanged(true);
        }
        this.f35513i.add(backgroundStateChangeListener);
    }

    @KeepForSdk
    public void addLifecycleEventListener(@NonNull FirebaseAppLifecycleListener firebaseAppLifecycleListener) {
        m27896g();
        Preconditions.checkNotNull(firebaseAppLifecycleListener);
        this.f35514j.add(firebaseAppLifecycleListener);
    }

    public void delete() {
        if (this.f35510f.compareAndSet(false, true)) {
            synchronized (f35503l) {
                f35504m.remove(this.f35506b);
            }
            m27900o();
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof FirebaseApp) {
            return this.f35506b.equals(((FirebaseApp) obj).getName());
        }
        return false;
    }

    /* renamed from: g */
    public final void m27896g() {
        Preconditions.checkState(!this.f35510f.get(), "FirebaseApp was deleted");
    }

    @KeepForSdk
    public <T> T get(Class<T> cls) {
        m27896g();
        return (T) this.f35508d.get(cls);
    }

    @NonNull
    public Context getApplicationContext() {
        m27896g();
        return this.f35505a;
    }

    @NonNull
    public String getName() {
        m27896g();
        return this.f35506b;
    }

    @NonNull
    public FirebaseOptions getOptions() {
        m27896g();
        return this.f35507c;
    }

    @KeepForSdk
    public String getPersistenceKey() {
        return Base64Utils.encodeUrlSafeNoPadding(getName().getBytes(Charset.defaultCharset())) + "+" + Base64Utils.encodeUrlSafeNoPadding(getOptions().getApplicationId().getBytes(Charset.defaultCharset()));
    }

    public int hashCode() {
        return this.f35506b.hashCode();
    }

    /* renamed from: i */
    public final void m27897i() {
        if (!UserManagerCompat.isUserUnlocked(this.f35505a)) {
            Log.i(f35502k, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + getName());
            C6421b.m27904b(this.f35505a);
            return;
        }
        Log.i(f35502k, "Device unlocked: initializing all Firebase APIs for app " + getName());
        this.f35508d.initializeEagerComponents(isDefaultApp());
        this.f35512h.get().registerHeartBeat();
    }

    @KeepForSdk
    public boolean isDataCollectionDefaultEnabled() {
        m27896g();
        return this.f35511g.get().isEnabled();
    }

    @KeepForSdk
    @VisibleForTesting
    public boolean isDefaultApp() {
        return DEFAULT_APP_NAME.equals(getName());
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    /* renamed from: j */
    public void m27898j() {
        this.f35508d.initializeAllComponentsForTests();
    }

    /* renamed from: n */
    public final void m27899n(boolean z) {
        Log.d(f35502k, "Notifying background state change listeners.");
        Iterator<BackgroundStateChangeListener> it2 = this.f35513i.iterator();
        while (it2.hasNext()) {
            it2.next().onBackgroundStateChanged(z);
        }
    }

    /* renamed from: o */
    public final void m27900o() {
        Iterator<FirebaseAppLifecycleListener> it2 = this.f35514j.iterator();
        while (it2.hasNext()) {
            it2.next().onDeleted(this.f35506b, this.f35507c);
        }
    }

    @KeepForSdk
    public void removeBackgroundStateChangeListener(BackgroundStateChangeListener backgroundStateChangeListener) {
        m27896g();
        this.f35513i.remove(backgroundStateChangeListener);
    }

    @KeepForSdk
    public void removeLifecycleEventListener(@NonNull FirebaseAppLifecycleListener firebaseAppLifecycleListener) {
        m27896g();
        Preconditions.checkNotNull(firebaseAppLifecycleListener);
        this.f35514j.remove(firebaseAppLifecycleListener);
    }

    public void setAutomaticResourceManagementEnabled(boolean z) {
        m27896g();
        if (this.f35509e.compareAndSet(!z, z)) {
            boolean isInBackground = BackgroundDetector.getInstance().isInBackground();
            if (z && isInBackground) {
                m27899n(true);
            } else {
                if (z || !isInBackground) {
                    return;
                }
                m27899n(false);
            }
        }
    }

    @KeepForSdk
    public void setDataCollectionDefaultEnabled(Boolean bool) {
        m27896g();
        this.f35511g.get().setEnabled(bool);
    }

    public String toString() {
        return Objects.toStringHelper(this).add("name", this.f35506b).add("options", this.f35507c).toString();
    }

    @KeepForSdk
    @Deprecated
    public void setDataCollectionDefaultEnabled(boolean z) {
        setDataCollectionDefaultEnabled(Boolean.valueOf(z));
    }

    @KeepForSdk
    public static String getPersistenceKey(String str, FirebaseOptions firebaseOptions) {
        return Base64Utils.encodeUrlSafeNoPadding(str.getBytes(Charset.defaultCharset())) + "+" + Base64Utils.encodeUrlSafeNoPadding(firebaseOptions.getApplicationId().getBytes(Charset.defaultCharset()));
    }

    @NonNull
    public static FirebaseApp getInstance(@NonNull String str) {
        FirebaseApp firebaseApp;
        String str2;
        synchronized (f35503l) {
            firebaseApp = f35504m.get(m27895m(str));
            if (firebaseApp != null) {
                firebaseApp.f35512h.get().registerHeartBeat();
            } else {
                List<String> m27892h = m27892h();
                if (m27892h.isEmpty()) {
                    str2 = "";
                } else {
                    str2 = "Available app names: " + TextUtils.join(", ", m27892h);
                }
                throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", str, str2));
            }
        }
        return firebaseApp;
    }

    @NonNull
    public static FirebaseApp initializeApp(@NonNull Context context, @NonNull FirebaseOptions firebaseOptions) {
        return initializeApp(context, firebaseOptions, DEFAULT_APP_NAME);
    }

    @NonNull
    public static FirebaseApp initializeApp(@NonNull Context context, @NonNull FirebaseOptions firebaseOptions, @NonNull String str) {
        FirebaseApp firebaseApp;
        C6420a.m27902b(context);
        String m27895m = m27895m(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f35503l) {
            Map<String, FirebaseApp> map = f35504m;
            Preconditions.checkState(!map.containsKey(m27895m), "FirebaseApp name " + m27895m + " already exists!");
            Preconditions.checkNotNull(context, "Application context cannot be null.");
            firebaseApp = new FirebaseApp(context, m27895m, firebaseOptions);
            map.put(m27895m, firebaseApp);
        }
        firebaseApp.m27897i();
        return firebaseApp;
    }
}
