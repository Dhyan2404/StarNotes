package com.google.android.gms.stats;

import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.common.util.WorkSourceUtil;
import com.google.android.gms.internal.stats.zzb;
import com.google.android.gms.internal.stats.zzh;
import com.google.android.gms.internal.stats.zzi;
import com.sunia.HTREnginev2.djp;
import com.sunia.HTREnginev2.nhp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.ThreadSafe;

@ShowFirstParty
@ThreadSafe
@KeepForSdk
/* loaded from: classes5.dex */
public class WakeLock {

    /* renamed from: r */
    public static final long f30065r = TimeUnit.DAYS.toMillis(366);

    /* renamed from: s */
    public static volatile ScheduledExecutorService f30066s = null;

    /* renamed from: t */
    public static final Object f30067t = new Object();

    /* renamed from: u */
    public static volatile zzd f30068u = new nhp();

    /* renamed from: a */
    public final Object f30069a;

    /* renamed from: b */
    @GuardedBy("acquireReleaseLock")
    public final PowerManager.WakeLock f30070b;

    /* renamed from: c */
    @GuardedBy("acquireReleaseLock")
    public int f30071c;

    /* renamed from: d */
    @GuardedBy("acquireReleaseLock")
    public Future<?> f30072d;

    /* renamed from: e */
    @GuardedBy("acquireReleaseLock")
    public long f30073e;

    /* renamed from: f */
    @GuardedBy("acquireReleaseLock")
    public final Set<zze> f30074f;

    /* renamed from: g */
    @GuardedBy("acquireReleaseLock")
    public boolean f30075g;

    /* renamed from: h */
    @GuardedBy("acquireReleaseLock")
    public int f30076h;

    /* renamed from: i */
    @GuardedBy("acquireReleaseLock")
    public zzb f30077i;

    /* renamed from: j */
    public Clock f30078j;

    /* renamed from: k */
    public WorkSource f30079k;

    /* renamed from: l */
    public final String f30080l;

    /* renamed from: m */
    public final String f30081m;

    /* renamed from: n */
    public final Context f30082n;

    /* renamed from: o */
    @GuardedBy("acquireReleaseLock")
    public final Map<String, djp> f30083o;

    /* renamed from: p */
    public AtomicInteger f30084p;

    /* renamed from: q */
    public final ScheduledExecutorService f30085q;

    @KeepForSdk
    public WakeLock(@NonNull Context context, int i, @NonNull String str) {
        String packageName = context.getPackageName();
        this.f30069a = new Object();
        this.f30071c = 0;
        this.f30074f = new HashSet();
        this.f30075g = true;
        this.f30078j = DefaultClock.getInstance();
        this.f30083o = new HashMap();
        this.f30084p = new AtomicInteger(0);
        Preconditions.checkNotNull(context, "WakeLock: context must not be null");
        Preconditions.checkNotEmpty(str, "WakeLock: wakeLockName must not be empty");
        this.f30082n = context.getApplicationContext();
        this.f30081m = str;
        this.f30077i = null;
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.f30080l = str;
        } else {
            String valueOf = String.valueOf(str);
            this.f30080l = valueOf.length() != 0 ? "*gcore*:".concat(valueOf) : new String("*gcore*:");
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            StringBuilder sb = new StringBuilder(29);
            sb.append((CharSequence) "expected a non-null reference", 0, 29);
            throw new zzi(sb.toString());
        }
        PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(i, str);
        this.f30070b = newWakeLock;
        if (WorkSourceUtil.hasWorkSourcePermission(context)) {
            WorkSource fromPackage = WorkSourceUtil.fromPackage(context, Strings.isEmptyOrWhitespace(packageName) ? context.getPackageName() : packageName);
            this.f30079k = fromPackage;
            if (fromPackage != null) {
                m22782d(newWakeLock, fromPackage);
            }
        }
        ScheduledExecutorService scheduledExecutorService = f30066s;
        if (scheduledExecutorService == null) {
            synchronized (f30067t) {
                scheduledExecutorService = f30066s;
                if (scheduledExecutorService == null) {
                    zzh.zza();
                    scheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
                    f30066s = scheduledExecutorService;
                }
            }
        }
        this.f30085q = scheduledExecutorService;
    }

    /* renamed from: d */
    public static void m22782d(PowerManager.WakeLock wakeLock, WorkSource workSource) {
        try {
            wakeLock.setWorkSource(workSource);
        } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
            Log.wtf("WakeLock", e.toString());
        }
    }

    public static /* synthetic */ void zza(@NonNull WakeLock wakeLock) {
        synchronized (wakeLock.f30069a) {
            if (wakeLock.isHeld()) {
                Log.e("WakeLock", String.valueOf(wakeLock.f30080l).concat(" ** IS FORCE-RELEASED ON TIMEOUT **"));
                wakeLock.m22784b();
                if (wakeLock.isHeld()) {
                    wakeLock.f30071c = 1;
                    wakeLock.m22785c(0);
                }
            }
        }
    }

    @GuardedBy("acquireReleaseLock")
    /* renamed from: a */
    public final String m22783a(String str) {
        if (this.f30075g) {
            TextUtils.isEmpty(null);
        }
        return null;
    }

    @KeepForSdk
    public void acquire(long j) {
        this.f30084p.incrementAndGet();
        long max = Math.max(Math.min(Long.MAX_VALUE, f30065r), 1L);
        if (j > 0) {
            max = Math.min(j, max);
        }
        synchronized (this.f30069a) {
            if (!isHeld()) {
                this.f30077i = zzb.zza(false, null);
                this.f30070b.acquire();
                this.f30078j.elapsedRealtime();
            }
            this.f30071c++;
            this.f30076h++;
            m22783a(null);
            djp djpVar = this.f30083o.get(null);
            if (djpVar == null) {
                djpVar = new djp(null);
                this.f30083o.put(null, djpVar);
            }
            djpVar.f67938a++;
            long elapsedRealtime = this.f30078j.elapsedRealtime();
            long j2 = Long.MAX_VALUE - elapsedRealtime > max ? elapsedRealtime + max : Long.MAX_VALUE;
            if (j2 > this.f30073e) {
                this.f30073e = j2;
                Future<?> future = this.f30072d;
                if (future != null) {
                    future.cancel(false);
                }
                this.f30072d = this.f30085q.schedule(new Runnable() { // from class: com.google.android.gms.stats.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        WakeLock.zza(WakeLock.this);
                    }
                }, max, TimeUnit.MILLISECONDS);
            }
        }
    }

    @GuardedBy("acquireReleaseLock")
    /* renamed from: b */
    public final void m22784b() {
        if (this.f30074f.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f30074f);
        this.f30074f.clear();
        if (arrayList.size() <= 0) {
            return;
        }
        throw null;
    }

    /* renamed from: c */
    public final void m22785c(int i) {
        synchronized (this.f30069a) {
            if (isHeld()) {
                if (this.f30075g) {
                    int i2 = this.f30071c - 1;
                    this.f30071c = i2;
                    if (i2 > 0) {
                        return;
                    }
                } else {
                    this.f30071c = 0;
                }
                m22784b();
                Iterator<djp> it2 = this.f30083o.values().iterator();
                while (it2.hasNext()) {
                    it2.next().f67938a = 0;
                }
                this.f30083o.clear();
                Future<?> future = this.f30072d;
                if (future != null) {
                    future.cancel(false);
                    this.f30072d = null;
                    this.f30073e = 0L;
                }
                this.f30076h = 0;
                try {
                    if (this.f30070b.isHeld()) {
                        try {
                            this.f30070b.release();
                            if (this.f30077i != null) {
                                this.f30077i = null;
                            }
                        } catch (RuntimeException e) {
                            if (!e.getClass().equals(RuntimeException.class)) {
                                throw e;
                            }
                            Log.e("WakeLock", String.valueOf(this.f30080l).concat(" failed to release!"), e);
                            if (this.f30077i != null) {
                                this.f30077i = null;
                            }
                        }
                    } else {
                        Log.e("WakeLock", String.valueOf(this.f30080l).concat(" should be held!"));
                    }
                } catch (Throwable th) {
                    if (this.f30077i != null) {
                        this.f30077i = null;
                    }
                    throw th;
                }
            }
        }
    }

    @KeepForSdk
    public boolean isHeld() {
        boolean z;
        synchronized (this.f30069a) {
            z = this.f30071c > 0;
        }
        return z;
    }

    @KeepForSdk
    public void release() {
        if (this.f30084p.decrementAndGet() < 0) {
            Log.e("WakeLock", String.valueOf(this.f30080l).concat(" release without a matched acquire!"));
        }
        synchronized (this.f30069a) {
            m22783a(null);
            if (this.f30083o.containsKey(null)) {
                djp djpVar = this.f30083o.get(null);
                if (djpVar != null) {
                    int i = djpVar.f67938a - 1;
                    djpVar.f67938a = i;
                    if (i == 0) {
                        this.f30083o.remove(null);
                    }
                }
            } else {
                Log.w("WakeLock", String.valueOf(this.f30080l).concat(" counter does not exist"));
            }
            m22785c(0);
        }
    }

    @KeepForSdk
    public void setReferenceCounted(boolean z) {
        synchronized (this.f30069a) {
            this.f30075g = z;
        }
    }
}
