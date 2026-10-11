package androidx.core.location;

import android.annotation.SuppressLint;
import android.location.GnssMeasurementsEvent;
import android.location.GnssStatus;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationRequest;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.DoNotInline;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.collection.SimpleArrayMap;
import androidx.core.location.GnssStatusCompat;
import androidx.core.location.LocationManagerCompat;
import androidx.core.os.ExecutorCompat;
import androidx.core.util.Consumer;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import androidx.credentials.provider.utils.PrivilegedApp;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes3.dex */
public final class LocationManagerCompat {

    /* renamed from: a */
    public static final long f5470a = 30000;

    /* renamed from: b */
    public static final long f5471b = 10000;

    /* renamed from: c */
    public static final long f5472c = 5;

    /* renamed from: d */
    public static Field f5473d;

    /* renamed from: e */
    public static Class<?> f5474e;

    /* renamed from: f */
    public static Method f5475f;

    /* renamed from: g */
    public static Method f5476g;

    /* renamed from: h */
    @GuardedBy("sLocationListeners")
    public static final WeakHashMap<C0693l, WeakReference<C0694m>> f5477h = new WeakHashMap<>();

    /* renamed from: androidx.core.location.LocationManagerCompat$a */
    /* loaded from: classes3.dex */
    public static class C0682a {

        /* renamed from: a */
        public static Class<?> f5478a;

        /* renamed from: b */
        public static Method f5479b;

        @DoNotInline
        @SuppressLint({"BanUncheckedReflection"})
        /* renamed from: a */
        public static boolean m3037a(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, LocationListenerCompat locationListenerCompat, Looper looper) {
            try {
                if (f5478a == null) {
                    f5478a = Class.forName("android.location.LocationRequest");
                }
                if (f5479b == null) {
                    Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", f5478a, LocationListener.class, Looper.class);
                    f5479b = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                if (locationRequest != null) {
                    f5479b.invoke(locationManager, locationRequest, locationListenerCompat, looper);
                    return true;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
            }
            return false;
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        @DoNotInline
        @SuppressLint({"BanUncheckedReflection"})
        /* renamed from: b */
        public static boolean m3038b(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, C0694m c0694m) {
            try {
                if (f5478a == null) {
                    f5478a = Class.forName("android.location.LocationRequest");
                }
                if (f5479b == null) {
                    Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", f5478a, LocationListener.class, Looper.class);
                    f5479b = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                if (locationRequest != null) {
                    synchronized (LocationManagerCompat.f5477h) {
                        f5479b.invoke(locationManager, locationRequest, c0694m, Looper.getMainLooper());
                        LocationManagerCompat.m3036g(locationManager, c0694m);
                    }
                    return true;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
            }
            return false;
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.location.LocationManagerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0683b {
        @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
        @DoNotInline
        /* renamed from: a */
        public static boolean m3039a(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent.Callback callback) {
            return locationManager.registerGnssMeasurementsCallback(callback);
        }

        @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
        @DoNotInline
        /* renamed from: b */
        public static boolean m3040b(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent.Callback callback, @NonNull Handler handler) {
            return locationManager.registerGnssMeasurementsCallback(callback, handler);
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        @DoNotInline
        /* renamed from: c */
        public static boolean m3041c(LocationManager locationManager, Handler handler, Executor executor, GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(handler != null);
            SimpleArrayMap<Object, Object> simpleArrayMap = C0688g.f5488a;
            synchronized (simpleArrayMap) {
                C0695n c0695n = (C0695n) simpleArrayMap.get(callback);
                if (c0695n == null) {
                    c0695n = new C0695n(callback);
                } else {
                    c0695n.m3098j();
                }
                c0695n.m3097i(executor);
                if (!locationManager.registerGnssStatusCallback(c0695n, handler)) {
                    return false;
                }
                simpleArrayMap.put(callback, c0695n);
                return true;
            }
        }

        @DoNotInline
        /* renamed from: d */
        public static void m3042d(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent.Callback callback) {
            locationManager.unregisterGnssMeasurementsCallback(callback);
        }

        @DoNotInline
        /* renamed from: e */
        public static void m3043e(LocationManager locationManager, Object obj) {
            if (obj instanceof C0695n) {
                ((C0695n) obj).m3098j();
            }
            locationManager.unregisterGnssStatusCallback((GnssStatus.Callback) obj);
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.location.LocationManagerCompat$c */
    /* loaded from: classes3.dex */
    public static class C0684c {
        @DoNotInline
        /* renamed from: a */
        public static String m3044a(LocationManager locationManager) {
            return locationManager.getGnssHardwareModelName();
        }

        @DoNotInline
        /* renamed from: b */
        public static int m3045b(LocationManager locationManager) {
            return locationManager.getGnssYearOfHardware();
        }

        @DoNotInline
        /* renamed from: c */
        public static boolean m3046c(LocationManager locationManager) {
            return locationManager.isLocationEnabled();
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.location.LocationManagerCompat$d */
    /* loaded from: classes3.dex */
    public static class C0685d {

        /* renamed from: a */
        public static Class<?> f5480a;

        /* renamed from: b */
        public static Method f5481b;

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        @DoNotInline
        /* renamed from: a */
        public static void m3047a(LocationManager locationManager, @NonNull String str, @Nullable CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull final Consumer<Location> consumer) {
            Objects.requireNonNull(consumer);
            locationManager.getCurrentLocation(str, cancellationSignal, executor, new java.util.function.Consumer() { // from class: com.sunia.HTREnginev2.z1j
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Consumer.this.accept((Location) obj);
                }
            });
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        @DoNotInline
        /* renamed from: b */
        public static boolean m3048b(LocationManager locationManager, Handler handler, Executor executor, GnssStatusCompat.Callback callback) {
            SimpleArrayMap<Object, Object> simpleArrayMap = C0688g.f5488a;
            synchronized (simpleArrayMap) {
                C0690i c0690i = (C0690i) simpleArrayMap.get(callback);
                if (c0690i == null) {
                    c0690i = new C0690i(callback);
                }
                if (!locationManager.registerGnssStatusCallback(executor, c0690i)) {
                    return false;
                }
                simpleArrayMap.put(callback, c0690i);
                return true;
            }
        }

        @DoNotInline
        /* renamed from: c */
        public static boolean m3049c(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, Executor executor, LocationListenerCompat locationListenerCompat) {
            if (Build.VERSION.SDK_INT >= 30) {
                try {
                    if (f5480a == null) {
                        f5480a = Class.forName("android.location.LocationRequest");
                    }
                    if (f5481b == null) {
                        Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", f5480a, Executor.class, LocationListener.class);
                        f5481b = declaredMethod;
                        declaredMethod.setAccessible(true);
                    }
                    LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                    if (locationRequest != null) {
                        f5481b.invoke(locationManager, locationRequest, executor, locationListenerCompat);
                        return true;
                    }
                } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
                }
            }
            return false;
        }
    }

    @RequiresApi(31)
    /* renamed from: androidx.core.location.LocationManagerCompat$e */
    /* loaded from: classes3.dex */
    public static class C0686e {
        @DoNotInline
        /* renamed from: a */
        public static boolean m3050a(LocationManager locationManager, @NonNull String str) {
            return locationManager.hasProvider(str);
        }

        @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
        @DoNotInline
        /* renamed from: b */
        public static boolean m3051b(@NonNull LocationManager locationManager, @NonNull Executor executor, @NonNull GnssMeasurementsEvent.Callback callback) {
            return locationManager.registerGnssMeasurementsCallback(executor, callback);
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        @DoNotInline
        /* renamed from: c */
        public static void m3052c(LocationManager locationManager, @NonNull String str, @NonNull LocationRequest locationRequest, @NonNull Executor executor, @NonNull LocationListener locationListener) {
            locationManager.requestLocationUpdates(str, locationRequest, executor, locationListener);
        }
    }

    /* renamed from: androidx.core.location.LocationManagerCompat$f */
    /* loaded from: classes3.dex */
    public static final class C0687f implements LocationListener {

        /* renamed from: a */
        public final LocationManager f5482a;

        /* renamed from: b */
        public final Executor f5483b;

        /* renamed from: c */
        public final Handler f5484c = new Handler(Looper.getMainLooper());

        /* renamed from: d */
        public Consumer<Location> f5485d;

        /* renamed from: e */
        @GuardedBy("this")
        public boolean f5486e;

        /* renamed from: f */
        @Nullable
        public Runnable f5487f;

        public C0687f(LocationManager locationManager, Executor executor, Consumer<Location> consumer) {
            this.f5482a = locationManager;
            this.f5483b = executor;
            this.f5485d = consumer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public /* synthetic */ void m3056f() {
            this.f5487f = null;
            onLocationChanged((Location) null);
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        /* renamed from: c */
        public void m3057c() {
            synchronized (this) {
                if (this.f5486e) {
                    return;
                }
                this.f5486e = true;
                m3058d();
            }
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        /* renamed from: d */
        public final void m3058d() {
            this.f5485d = null;
            this.f5482a.removeUpdates(this);
            Runnable runnable = this.f5487f;
            if (runnable != null) {
                this.f5484c.removeCallbacks(runnable);
                this.f5487f = null;
            }
        }

        @SuppressLint({"MissingPermission"})
        /* renamed from: g */
        public void m3059g(long j) {
            synchronized (this) {
                if (this.f5486e) {
                    return;
                }
                Runnable runnable = new Runnable() { // from class: com.sunia.HTREnginev2.a2j
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationManagerCompat.C0687f.this.m3056f();
                    }
                };
                this.f5487f = runnable;
                this.f5484c.postDelayed(runnable, j);
            }
        }

        @Override // android.location.LocationListener
        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        public void onLocationChanged(@Nullable final Location location) {
            synchronized (this) {
                if (this.f5486e) {
                    return;
                }
                this.f5486e = true;
                final Consumer<Location> consumer = this.f5485d;
                this.f5483b.execute(new Runnable() { // from class: com.sunia.HTREnginev2.b2j
                    @Override // java.lang.Runnable
                    public final void run() {
                        Consumer.this.accept(location);
                    }
                });
                m3058d();
            }
        }

        @Override // android.location.LocationListener
        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        public void onProviderDisabled(@NonNull String str) {
            onLocationChanged((Location) null);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(@NonNull String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    /* renamed from: androidx.core.location.LocationManagerCompat$g */
    /* loaded from: classes3.dex */
    public static class C0688g {

        /* renamed from: a */
        @GuardedBy("sGnssStatusListeners")
        public static final SimpleArrayMap<Object, Object> f5488a = new SimpleArrayMap<>();

        /* renamed from: b */
        @GuardedBy("sGnssMeasurementListeners")
        public static final SimpleArrayMap<GnssMeasurementsEvent.Callback, GnssMeasurementsEvent.Callback> f5489b = new SimpleArrayMap<>();
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.location.LocationManagerCompat$h */
    /* loaded from: classes3.dex */
    public static class C0689h extends GnssMeasurementsEvent.Callback {

        /* renamed from: a */
        public final GnssMeasurementsEvent.Callback f5490a;

        /* renamed from: b */
        @Nullable
        public volatile Executor f5491b;

        public C0689h(@NonNull GnssMeasurementsEvent.Callback callback, @NonNull Executor executor) {
            this.f5490a = callback;
            this.f5491b = executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m3062c(Executor executor, GnssMeasurementsEvent gnssMeasurementsEvent) {
            if (this.f5491b != executor) {
                return;
            }
            this.f5490a.onGnssMeasurementsReceived(gnssMeasurementsEvent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public /* synthetic */ void m3063d(Executor executor, int i) {
            if (this.f5491b != executor) {
                return;
            }
            this.f5490a.onStatusChanged(i);
        }

        /* renamed from: e */
        public void m3064e() {
            this.f5491b = null;
        }

        @Override // android.location.GnssMeasurementsEvent.Callback
        public void onGnssMeasurementsReceived(final GnssMeasurementsEvent gnssMeasurementsEvent) {
            final Executor executor = this.f5491b;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.c2j
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.C0689h.this.m3062c(executor, gnssMeasurementsEvent);
                }
            });
        }

        @Override // android.location.GnssMeasurementsEvent.Callback
        public void onStatusChanged(final int i) {
            final Executor executor = this.f5491b;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.d2j
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.C0689h.this.m3063d(executor, i);
                }
            });
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.location.LocationManagerCompat$i */
    /* loaded from: classes3.dex */
    public static class C0690i extends GnssStatus.Callback {

        /* renamed from: a */
        public final GnssStatusCompat.Callback f5492a;

        public C0690i(GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.f5492a = callback;
        }

        @Override // android.location.GnssStatus.Callback
        public void onFirstFix(int i) {
            this.f5492a.onFirstFix(i);
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
            this.f5492a.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
        }

        @Override // android.location.GnssStatus.Callback
        public void onStarted() {
            this.f5492a.onStarted();
        }

        @Override // android.location.GnssStatus.Callback
        public void onStopped() {
            this.f5492a.onStopped();
        }
    }

    /* renamed from: androidx.core.location.LocationManagerCompat$j */
    /* loaded from: classes3.dex */
    public static class C0691j implements GpsStatus.Listener {

        /* renamed from: a */
        public final LocationManager f5493a;

        /* renamed from: b */
        public final GnssStatusCompat.Callback f5494b;

        /* renamed from: c */
        @Nullable
        public volatile Executor f5495c;

        public C0691j(LocationManager locationManager, GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.f5493a = locationManager;
            this.f5494b = callback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e */
        public /* synthetic */ void m3069e(Executor executor) {
            if (this.f5495c != executor) {
                return;
            }
            this.f5494b.onStarted();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public /* synthetic */ void m3070f(Executor executor) {
            if (this.f5495c != executor) {
                return;
            }
            this.f5494b.onStopped();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public /* synthetic */ void m3071g(Executor executor, int i) {
            if (this.f5495c != executor) {
                return;
            }
            this.f5494b.onFirstFix(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h */
        public /* synthetic */ void m3072h(Executor executor, GnssStatusCompat gnssStatusCompat) {
            if (this.f5495c != executor) {
                return;
            }
            this.f5494b.onSatelliteStatusChanged(gnssStatusCompat);
        }

        /* renamed from: i */
        public void m3073i(Executor executor) {
            Preconditions.checkState(this.f5495c == null);
            this.f5495c = executor;
        }

        /* renamed from: j */
        public void m3074j() {
            this.f5495c = null;
        }

        @Override // android.location.GpsStatus.Listener
        @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
        public void onGpsStatusChanged(int i) {
            GpsStatus gpsStatus;
            final Executor executor = this.f5495c;
            if (executor == null) {
                return;
            }
            if (i == 1) {
                executor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.e2j
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationManagerCompat.C0691j.this.m3069e(executor);
                    }
                });
                return;
            }
            if (i == 2) {
                executor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.f2j
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationManagerCompat.C0691j.this.m3070f(executor);
                    }
                });
                return;
            }
            if (i != 3) {
                if (i == 4 && (gpsStatus = this.f5493a.getGpsStatus(null)) != null) {
                    final GnssStatusCompat wrap = GnssStatusCompat.wrap(gpsStatus);
                    executor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.h2j
                        @Override // java.lang.Runnable
                        public final void run() {
                            LocationManagerCompat.C0691j.this.m3072h(executor, wrap);
                        }
                    });
                    return;
                }
                return;
            }
            GpsStatus gpsStatus2 = this.f5493a.getGpsStatus(null);
            if (gpsStatus2 != null) {
                final int timeToFirstFix = gpsStatus2.getTimeToFirstFix();
                executor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.g2j
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationManagerCompat.C0691j.this.m3071g(executor, timeToFirstFix);
                    }
                });
            }
        }
    }

    /* renamed from: androidx.core.location.LocationManagerCompat$k */
    /* loaded from: classes3.dex */
    public static final class ExecutorC0692k implements Executor {

        /* renamed from: e */
        public final Handler f5496e;

        public ExecutorC0692k(@NonNull Handler handler) {
            this.f5496e = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            if (Looper.myLooper() == this.f5496e.getLooper()) {
                runnable.run();
            } else {
                if (this.f5496e.post((Runnable) Preconditions.checkNotNull(runnable))) {
                    return;
                }
                throw new RejectedExecutionException(this.f5496e + " is shutting down");
            }
        }
    }

    /* renamed from: androidx.core.location.LocationManagerCompat$l */
    /* loaded from: classes3.dex */
    public static class C0693l {

        /* renamed from: a */
        public final String f5497a;

        /* renamed from: b */
        public final LocationListenerCompat f5498b;

        public C0693l(String str, LocationListenerCompat locationListenerCompat) {
            this.f5497a = (String) ObjectsCompat.requireNonNull(str, "invalid null provider");
            this.f5498b = (LocationListenerCompat) ObjectsCompat.requireNonNull(locationListenerCompat, "invalid null listener");
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C0693l)) {
                return false;
            }
            C0693l c0693l = (C0693l) obj;
            return this.f5497a.equals(c0693l.f5497a) && this.f5498b.equals(c0693l.f5498b);
        }

        public int hashCode() {
            return ObjectsCompat.hash(this.f5497a, this.f5498b);
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.location.LocationManagerCompat$n */
    /* loaded from: classes3.dex */
    public static class C0695n extends GnssStatus.Callback {

        /* renamed from: a */
        public final GnssStatusCompat.Callback f5501a;

        /* renamed from: b */
        @Nullable
        public volatile Executor f5502b;

        public C0695n(GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.f5501a = callback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e */
        public /* synthetic */ void m3093e(Executor executor, int i) {
            if (this.f5502b != executor) {
                return;
            }
            this.f5501a.onFirstFix(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public /* synthetic */ void m3094f(Executor executor, GnssStatus gnssStatus) {
            if (this.f5502b != executor) {
                return;
            }
            this.f5501a.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public /* synthetic */ void m3095g(Executor executor) {
            if (this.f5502b != executor) {
                return;
            }
            this.f5501a.onStarted();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h */
        public /* synthetic */ void m3096h(Executor executor) {
            if (this.f5502b != executor) {
                return;
            }
            this.f5501a.onStopped();
        }

        /* renamed from: i */
        public void m3097i(Executor executor) {
            Preconditions.checkArgument(executor != null, "invalid null executor");
            Preconditions.checkState(this.f5502b == null);
            this.f5502b = executor;
        }

        /* renamed from: j */
        public void m3098j() {
            this.f5502b = null;
        }

        @Override // android.location.GnssStatus.Callback
        public void onFirstFix(final int i) {
            final Executor executor = this.f5502b;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.q2j
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.C0695n.this.m3093e(executor, i);
                }
            });
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(final GnssStatus gnssStatus) {
            final Executor executor = this.f5502b;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.p2j
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.C0695n.this.m3094f(executor, gnssStatus);
                }
            });
        }

        @Override // android.location.GnssStatus.Callback
        public void onStarted() {
            final Executor executor = this.f5502b;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.o2j
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.C0695n.this.m3095g(executor);
                }
            });
        }

        @Override // android.location.GnssStatus.Callback
        public void onStopped() {
            final Executor executor = this.f5502b;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.r2j
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.C0695n.this.m3096h(executor);
                }
            });
        }
    }

    /* renamed from: d */
    public static /* synthetic */ Boolean m3033d(LocationManager locationManager, C0691j c0691j) throws Exception {
        return Boolean.valueOf(locationManager.addGpsStatusListener(c0691j));
    }

    @RequiresApi(30)
    /* renamed from: e */
    public static boolean m3034e(@NonNull LocationManager locationManager, @NonNull Executor executor, @NonNull GnssMeasurementsEvent.Callback callback) {
        if (Build.VERSION.SDK_INT != 30) {
            throw new IllegalStateException();
        }
        try {
            if (f5474e == null) {
                f5474e = Class.forName("android.location.GnssRequest$Builder");
            }
            if (f5475f == null) {
                Method declaredMethod = f5474e.getDeclaredMethod(PrivilegedApp.f6529f, new Class[0]);
                f5475f = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            if (f5476g == null) {
                Method declaredMethod2 = LocationManager.class.getDeclaredMethod("registerGnssMeasurementsCallback", Class.forName("android.location.GnssRequest"), Executor.class, GnssMeasurementsEvent.Callback.class);
                f5476g = declaredMethod2;
                declaredMethod2.setAccessible(true);
            }
            Object invoke = f5476g.invoke(locationManager, f5475f.invoke(f5474e.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]), new Object[0]), executor, callback);
            if (invoke != null) {
                return ((Boolean) invoke).booleanValue();
            }
            return false;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    /* renamed from: f */
    public static boolean m3035f(LocationManager locationManager, Handler handler, Executor executor, GnssStatusCompat.Callback callback) {
        return Build.VERSION.SDK_INT >= 30 ? C0685d.m3048b(locationManager, handler, executor, callback) : C0683b.m3041c(locationManager, handler, executor, callback);
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    @GuardedBy("sLocationListeners")
    /* renamed from: g */
    public static void m3036g(LocationManager locationManager, C0694m c0694m) {
        WeakReference<C0694m> put = f5477h.put(c0694m.m3087g(), new WeakReference<>(c0694m));
        C0694m c0694m2 = put != null ? put.get() : null;
        if (c0694m2 != null) {
            c0694m2.m3088n();
            locationManager.removeUpdates(c0694m2);
        }
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    @Deprecated
    public static void getCurrentLocation(@NonNull LocationManager locationManager, @NonNull String str, @Nullable androidx.core.os.CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull Consumer<Location> consumer) {
        getCurrentLocation(locationManager, str, cancellationSignal != null ? (CancellationSignal) cancellationSignal.getCancellationSignalObject() : null, executor, consumer);
    }

    @Nullable
    public static String getGnssHardwareModelName(@NonNull LocationManager locationManager) {
        return C0684c.m3044a(locationManager);
    }

    public static int getGnssYearOfHardware(@NonNull LocationManager locationManager) {
        return C0684c.m3045b(locationManager);
    }

    public static boolean hasProvider(@NonNull LocationManager locationManager, @NonNull String str) {
        if (Build.VERSION.SDK_INT >= 31) {
            return C0686e.m3050a(locationManager, str);
        }
        if (locationManager.getAllProviders().contains(str)) {
            return true;
        }
        try {
            return locationManager.getProvider(str) != null;
        } catch (SecurityException unused) {
            return false;
        }
    }

    public static boolean isLocationEnabled(@NonNull LocationManager locationManager) {
        return C0684c.m3046c(locationManager);
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    @RequiresApi(24)
    public static boolean registerGnssMeasurementsCallback(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent.Callback callback, @NonNull Handler handler) {
        int i = Build.VERSION.SDK_INT;
        if (i > 30) {
            return C0683b.m3040b(locationManager, callback, handler);
        }
        if (i == 30) {
            return m3034e(locationManager, ExecutorCompat.create(handler), callback);
        }
        SimpleArrayMap<GnssMeasurementsEvent.Callback, GnssMeasurementsEvent.Callback> simpleArrayMap = C0688g.f5489b;
        synchronized (simpleArrayMap) {
            unregisterGnssMeasurementsCallback(locationManager, callback);
            if (!C0683b.m3040b(locationManager, callback, handler)) {
                return false;
            }
            simpleArrayMap.put(callback, callback);
            return true;
        }
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static boolean registerGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull GnssStatusCompat.Callback callback, @NonNull Handler handler) {
        if (Build.VERSION.SDK_INT >= 30) {
            return registerGnssStatusCallback(locationManager, ExecutorCompat.create(handler), callback);
        }
        return registerGnssStatusCallback(locationManager, new ExecutorC0692k(handler), callback);
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void removeUpdates(@NonNull LocationManager locationManager, @NonNull LocationListenerCompat locationListenerCompat) {
        WeakHashMap<C0693l, WeakReference<C0694m>> weakHashMap = f5477h;
        synchronized (weakHashMap) {
            Iterator<WeakReference<C0694m>> it2 = weakHashMap.values().iterator();
            ArrayList arrayList = null;
            while (it2.hasNext()) {
                C0694m c0694m = it2.next().get();
                if (c0694m != null) {
                    C0693l m3087g = c0694m.m3087g();
                    if (m3087g.f5498b == locationListenerCompat) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(m3087g);
                        c0694m.m3088n();
                        locationManager.removeUpdates(c0694m);
                    }
                }
            }
            if (arrayList != null) {
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    f5477h.remove((C0693l) it3.next());
                }
            }
        }
        locationManager.removeUpdates(locationListenerCompat);
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void requestLocationUpdates(@NonNull LocationManager locationManager, @NonNull String str, @NonNull LocationRequestCompat locationRequestCompat, @NonNull Executor executor, @NonNull LocationListenerCompat locationListenerCompat) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            C0686e.m3052c(locationManager, str, locationRequestCompat.toLocationRequest(), executor, locationListenerCompat);
            return;
        }
        if (i < 30 || !C0685d.m3049c(locationManager, str, locationRequestCompat, executor, locationListenerCompat)) {
            C0694m c0694m = new C0694m(new C0693l(str, locationListenerCompat), executor);
            if (C0682a.m3038b(locationManager, str, locationRequestCompat, c0694m)) {
                return;
            }
            synchronized (f5477h) {
                locationManager.requestLocationUpdates(str, locationRequestCompat.getIntervalMillis(), locationRequestCompat.getMinUpdateDistanceMeters(), c0694m, Looper.getMainLooper());
                m3036g(locationManager, c0694m);
            }
        }
    }

    @RequiresApi(24)
    public static void unregisterGnssMeasurementsCallback(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent.Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            C0683b.m3042d(locationManager, callback);
            return;
        }
        SimpleArrayMap<GnssMeasurementsEvent.Callback, GnssMeasurementsEvent.Callback> simpleArrayMap = C0688g.f5489b;
        synchronized (simpleArrayMap) {
            GnssMeasurementsEvent.Callback remove = simpleArrayMap.remove(callback);
            if (remove != null) {
                if (remove instanceof C0689h) {
                    ((C0689h) remove).m3064e();
                }
                C0683b.m3042d(locationManager, remove);
            }
        }
    }

    public static void unregisterGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull GnssStatusCompat.Callback callback) {
        SimpleArrayMap<Object, Object> simpleArrayMap = C0688g.f5488a;
        synchronized (simpleArrayMap) {
            Object remove = simpleArrayMap.remove(callback);
            if (remove != null) {
                C0683b.m3043e(locationManager, remove);
            }
        }
    }

    /* renamed from: androidx.core.location.LocationManagerCompat$m */
    /* loaded from: classes3.dex */
    public static class C0694m implements LocationListener {

        /* renamed from: a */
        @Nullable
        public volatile C0693l f5499a;

        /* renamed from: b */
        public final Executor f5500b;

        public C0694m(@Nullable C0693l c0693l, Executor executor) {
            this.f5499a = c0693l;
            this.f5500b = executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h */
        public /* synthetic */ void m3081h(int i) {
            C0693l c0693l = this.f5499a;
            if (c0693l == null) {
                return;
            }
            c0693l.f5498b.onFlushComplete(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i */
        public /* synthetic */ void m3082i(Location location) {
            C0693l c0693l = this.f5499a;
            if (c0693l == null) {
                return;
            }
            c0693l.f5498b.onLocationChanged(location);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: j */
        public /* synthetic */ void m3083j(List list) {
            C0693l c0693l = this.f5499a;
            if (c0693l == null) {
                return;
            }
            c0693l.f5498b.onLocationChanged((List<Location>) list);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k */
        public /* synthetic */ void m3084k(String str) {
            C0693l c0693l = this.f5499a;
            if (c0693l == null) {
                return;
            }
            c0693l.f5498b.onProviderDisabled(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: l */
        public /* synthetic */ void m3085l(String str) {
            C0693l c0693l = this.f5499a;
            if (c0693l == null) {
                return;
            }
            c0693l.f5498b.onProviderEnabled(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: m */
        public /* synthetic */ void m3086m(String str, int i, Bundle bundle) {
            C0693l c0693l = this.f5499a;
            if (c0693l == null) {
                return;
            }
            c0693l.f5498b.onStatusChanged(str, i, bundle);
        }

        /* renamed from: g */
        public C0693l m3087g() {
            return (C0693l) ObjectsCompat.requireNonNull(this.f5499a);
        }

        /* renamed from: n */
        public void m3088n() {
            this.f5499a = null;
        }

        @Override // android.location.LocationListener
        public void onFlushComplete(final int i) {
            if (this.f5499a == null) {
                return;
            }
            this.f5500b.execute(new Runnable() { // from class: com.sunia.HTREnginev2.j2j
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.C0694m.this.m3081h(i);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(@NonNull final Location location) {
            if (this.f5499a == null) {
                return;
            }
            this.f5500b.execute(new Runnable() { // from class: com.sunia.HTREnginev2.m2j
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.C0694m.this.m3082i(location);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(@NonNull final String str) {
            if (this.f5499a == null) {
                return;
            }
            this.f5500b.execute(new Runnable() { // from class: com.sunia.HTREnginev2.l2j
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.C0694m.this.m3084k(str);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(@NonNull final String str) {
            if (this.f5499a == null) {
                return;
            }
            this.f5500b.execute(new Runnable() { // from class: com.sunia.HTREnginev2.i2j
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.C0694m.this.m3085l(str);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(final String str, final int i, final Bundle bundle) {
            if (this.f5499a == null) {
                return;
            }
            this.f5500b.execute(new Runnable() { // from class: com.sunia.HTREnginev2.n2j
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.C0694m.this.m3086m(str, i, bundle);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(@NonNull final List<Location> list) {
            if (this.f5499a == null) {
                return;
            }
            this.f5500b.execute(new Runnable() { // from class: com.sunia.HTREnginev2.k2j
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.C0694m.this.m3083j(list);
                }
            });
        }
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void getCurrentLocation(@NonNull LocationManager locationManager, @NonNull String str, @Nullable CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull final Consumer<Location> consumer) {
        if (Build.VERSION.SDK_INT >= 30) {
            C0685d.m3047a(locationManager, str, cancellationSignal, executor, consumer);
            return;
        }
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
        }
        final Location lastKnownLocation = locationManager.getLastKnownLocation(str);
        if (lastKnownLocation != null && SystemClock.elapsedRealtime() - LocationCompat.getElapsedRealtimeMillis(lastKnownLocation) < 10000) {
            executor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.x1j
                @Override // java.lang.Runnable
                public final void run() {
                    Consumer.this.accept(lastKnownLocation);
                }
            });
            return;
        }
        final C0687f c0687f = new C0687f(locationManager, executor, consumer);
        locationManager.requestLocationUpdates(str, 0L, 0.0f, c0687f, Looper.getMainLooper());
        if (cancellationSignal != null) {
            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: com.sunia.HTREnginev2.y1j
                @Override // android.os.CancellationSignal.OnCancelListener
                public final void onCancel() {
                    LocationManagerCompat.C0687f.this.m3057c();
                }
            });
        }
        c0687f.m3059g(30000L);
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static boolean registerGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull Executor executor, @NonNull GnssStatusCompat.Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            return m3035f(locationManager, null, executor, callback);
        }
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            myLooper = Looper.getMainLooper();
        }
        return m3035f(locationManager, new Handler(myLooper), executor, callback);
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    @RequiresApi(24)
    public static boolean registerGnssMeasurementsCallback(@NonNull LocationManager locationManager, @NonNull Executor executor, @NonNull GnssMeasurementsEvent.Callback callback) {
        int i = Build.VERSION.SDK_INT;
        if (i > 30) {
            return C0686e.m3051b(locationManager, executor, callback);
        }
        if (i == 30) {
            return m3034e(locationManager, executor, callback);
        }
        SimpleArrayMap<GnssMeasurementsEvent.Callback, GnssMeasurementsEvent.Callback> simpleArrayMap = C0688g.f5489b;
        synchronized (simpleArrayMap) {
            C0689h c0689h = new C0689h(callback, executor);
            unregisterGnssMeasurementsCallback(locationManager, callback);
            if (!C0683b.m3039a(locationManager, c0689h)) {
                return false;
            }
            simpleArrayMap.put(callback, c0689h);
            return true;
        }
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void requestLocationUpdates(@NonNull LocationManager locationManager, @NonNull String str, @NonNull LocationRequestCompat locationRequestCompat, @NonNull LocationListenerCompat locationListenerCompat, @NonNull Looper looper) {
        if (Build.VERSION.SDK_INT >= 31) {
            C0686e.m3052c(locationManager, str, locationRequestCompat.toLocationRequest(), ExecutorCompat.create(new Handler(looper)), locationListenerCompat);
        } else {
            if (C0682a.m3037a(locationManager, str, locationRequestCompat, locationListenerCompat, looper)) {
                return;
            }
            locationManager.requestLocationUpdates(str, locationRequestCompat.getIntervalMillis(), locationRequestCompat.getMinUpdateDistanceMeters(), locationListenerCompat, looper);
        }
    }
}
