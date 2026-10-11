package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.core.app.NotificationCompat;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.internal.measurement.zzpu;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzje;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.aop;
import com.sunia.HTREnginev2.bop;
import com.sunia.HTREnginev2.cop;
import com.sunia.HTREnginev2.dop;
import com.sunia.HTREnginev2.ehp;
import com.sunia.HTREnginev2.elp;
import com.sunia.HTREnginev2.enp;
import com.sunia.HTREnginev2.eop;
import com.sunia.HTREnginev2.hlp;
import com.sunia.HTREnginev2.knp;
import com.sunia.HTREnginev2.kop;
import com.sunia.HTREnginev2.lnp;
import com.sunia.HTREnginev2.mnp;
import com.sunia.HTREnginev2.nnp;
import com.sunia.HTREnginev2.onp;
import com.sunia.HTREnginev2.pnp;
import com.sunia.HTREnginev2.qnp;
import com.sunia.HTREnginev2.rnp;
import com.sunia.HTREnginev2.snp;
import com.sunia.HTREnginev2.tnp;
import com.sunia.HTREnginev2.unp;
import com.sunia.HTREnginev2.vnp;
import com.sunia.HTREnginev2.wnp;
import com.sunia.HTREnginev2.xnp;
import com.sunia.HTREnginev2.ynp;
import com.sunia.HTREnginev2.znp;
import com.sunia.HTREnginev2.zqp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;
import kotlin.Unit;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes5.dex */
public final class zzjq extends elp {

    /* renamed from: b */
    @VisibleForTesting
    public eop f29907b;

    /* renamed from: c */
    public zzjm f29908c;

    /* renamed from: d */
    public final Set<zzjl> f29909d;

    /* renamed from: e */
    public boolean f29910e;

    /* renamed from: f */
    public final AtomicReference<String> f29911f;

    /* renamed from: g */
    public final Object f29912g;

    /* renamed from: h */
    public boolean f29913h;

    /* renamed from: i */
    public int f29914i;

    /* renamed from: j */
    public ehp f29915j;

    /* renamed from: k */
    public PriorityQueue<zzno> f29916k;

    /* renamed from: l */
    public boolean f29917l;

    /* renamed from: m */
    @GuardedBy("consentLock")
    public zzje f29918m;

    /* renamed from: n */
    public final AtomicLong f29919n;

    /* renamed from: o */
    public long f29920o;

    /* renamed from: p */
    public final zzu f29921p;

    /* renamed from: q */
    @VisibleForTesting
    public boolean f29922q;

    /* renamed from: r */
    public ehp f29923r;

    /* renamed from: s */
    public SharedPreferences.OnSharedPreferenceChangeListener f29924s;

    /* renamed from: t */
    public ehp f29925t;

    /* renamed from: u */
    public final zqp f29926u;

    public zzjq(zzhy zzhyVar) {
        super(zzhyVar);
        this.f29909d = new CopyOnWriteArraySet();
        this.f29912g = new Object();
        this.f29913h = false;
        this.f29914i = 1;
        this.f29922q = true;
        this.f29926u = new xnp(this);
        this.f29911f = new AtomicReference<>();
        this.f29918m = zzje.zza;
        this.f29920o = -1L;
        this.f29919n = new AtomicLong(0L);
        this.f29921p = new zzu(zzhyVar);
    }

    /* renamed from: C */
    public static /* synthetic */ void m22527C(zzjq zzjqVar, int i) {
        if (zzjqVar.f29915j == null) {
            zzjqVar.f29915j = new lnp(zzjqVar, zzjqVar.zzu);
        }
        zzjqVar.f29915j.m53967b(i * 1000);
    }

    /* renamed from: D */
    public static /* synthetic */ void m22528D(zzjq zzjqVar, Bundle bundle) {
        zzjqVar.zzt();
        zzjqVar.zzu();
        Preconditions.checkNotNull(bundle);
        String string = bundle.getString("name");
        String string2 = bundle.getString("origin");
        Preconditions.checkNotEmpty(string);
        Preconditions.checkNotEmpty(string2);
        Preconditions.checkNotNull(bundle.get("value"));
        if (!zzjqVar.zzu.zzac()) {
            zzjqVar.zzj().zzp().zza("Conditional property not set since app measurement is disabled");
            return;
        }
        zzon zzonVar = new zzon(string, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP), bundle.get("value"), string2);
        try {
            zzbf m22763i = zzjqVar.zzq().m22763i(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS), string2, 0L, true, true);
            zzjqVar.zzo().zza(new zzae(bundle.getString("app_id"), string2, zzonVar, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), false, bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), zzjqVar.zzq().m22763i(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS), string2, 0L, true, true), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), m22763i, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzjqVar.zzq().m22763i(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), string2, 0L, true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }

    /* renamed from: c */
    public static /* synthetic */ int m22531c(zzjq zzjqVar, Throwable th) {
        String message = th.getMessage();
        zzjqVar.f29917l = false;
        if (message == null) {
            return 2;
        }
        if (!(th instanceof IllegalStateException) && !message.contains("garbage collected") && !th.getClass().getSimpleName().equals("ServiceUnavailableException")) {
            return (!(th instanceof SecurityException) || message.endsWith("READ_DEVICE_CONFIG")) ? 2 : 3;
        }
        if (message.contains("Background")) {
            zzjqVar.f29917l = true;
        }
        return 1;
    }

    /* renamed from: l */
    public static /* synthetic */ void m22535l(zzjq zzjqVar, Bundle bundle) {
        zzjqVar.zzt();
        zzjqVar.zzu();
        Preconditions.checkNotNull(bundle);
        String checkNotEmpty = Preconditions.checkNotEmpty(bundle.getString("name"));
        if (!zzjqVar.zzu.zzac()) {
            zzjqVar.zzj().zzp().zza("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            zzjqVar.zzo().zza(new zzae(bundle.getString("app_id"), "", new zzon(checkNotEmpty, 0L, null, ""), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), bundle.getBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzjqVar.zzq().m22763i(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), "", bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }

    /* renamed from: m */
    public static /* synthetic */ void m22536m(zzjq zzjqVar, zzje zzjeVar, long j, boolean z, boolean z2) {
        zzjqVar.zzt();
        zzjqVar.zzu();
        zzje m54580o = zzjqVar.zzk().m54580o();
        if (j <= zzjqVar.f29920o && zzje.zza(m54580o.zza(), zzjeVar.zza())) {
            zzjqVar.zzj().zzo().zza("Dropped out-of-date consent setting, proposed settings", zzjeVar);
            return;
        }
        if (!zzjqVar.zzk().m54571f(zzjeVar)) {
            zzjqVar.zzj().zzo().zza("Lower precedence consent source ignored, proposed source", Integer.valueOf(zzjeVar.zza()));
            return;
        }
        zzjqVar.zzj().zzp().zza("Setting storage consent(FE)", zzjeVar);
        zzjqVar.f29920o = j;
        if (zzjqVar.zzo().m22585k()) {
            zzjqVar.zzo().zzb(z);
        } else {
            zzjqVar.zzo().zza(z);
        }
        if (z2) {
            zzjqVar.zzo().zza(new AtomicReference<>());
        }
    }

    /* renamed from: n */
    public static /* synthetic */ void m22537n(zzjq zzjqVar, zzje zzjeVar, zzje zzjeVar2) {
        if (com.google.android.gms.internal.measurement.zznm.zza() && zzjqVar.zze().zza(zzbh.zzcx)) {
            return;
        }
        zzje.zza zzaVar = zzje.zza.ANALYTICS_STORAGE;
        zzje.zza zzaVar2 = zzje.zza.AD_STORAGE;
        boolean zza = zzjeVar.zza(zzjeVar2, zzaVar, zzaVar2);
        boolean zzb = zzjeVar.zzb(zzjeVar2, zzaVar, zzaVar2);
        if (zza || zzb) {
            zzjqVar.zzg().m22435i();
        }
    }

    public static int zza(String str) {
        Preconditions.checkNotEmpty(str);
        return 25;
    }

    @WorkerThread
    /* renamed from: B */
    public final void m22540B(long j) {
        m22545f(j, true);
    }

    /* renamed from: E */
    public final /* synthetic */ void m22541E(String str) {
        if (zzg().m22436j(str)) {
            zzg().m22435i();
        }
    }

    /* renamed from: F */
    public final void m22542F(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        zzl().zzb(new rnp(this, str, str2, j, zzos.zza(bundle), z, z2, z3, str3));
    }

    /* renamed from: H */
    public final void m22543H(String str) {
        this.f29911f.set(str);
    }

    @WorkerThread
    /* renamed from: I */
    public final void m22544I(String str, String str2, Bundle bundle) {
        zzt();
        m22551r(str, str2, zzb().currentTimeMillis(), bundle);
    }

    /* renamed from: f */
    public final void m22545f(long j, boolean z) {
        zzt();
        zzu();
        zzj().zzc().zza("Resetting analytics data (FE)");
        zznb zzp = zzp();
        zzp.zzt();
        zzp.zzb.m22275b();
        zzg().m22435i();
        boolean zzac = this.zzu.zzac();
        hlp zzk = zzk();
        zzk.f72324f.zza(j);
        if (!TextUtils.isEmpty(zzk.zzk().f72341w.zza())) {
            zzk.f72341w.zza(null);
        }
        zzk.f72335q.zza(0L);
        zzk.f72336r.zza(0L);
        if (!zzk.zze().zzx()) {
            zzk.zzb(!zzac);
        }
        zzk.f72342x.zza(null);
        zzk.f72343y.zza(0L);
        zzk.f72344z.zza(null);
        if (z) {
            zzo().zzai();
        }
        zzp().zza.m22279a();
        this.f29922q = !zzac;
    }

    /* renamed from: g */
    public final /* synthetic */ void m22546g(SharedPreferences sharedPreferences, String str) {
        if ("IABTCF_TCString".equals(str)) {
            zzj().zzp().zza("IABTCF_TCString change picked up in listener.");
            ((ehp) Preconditions.checkNotNull(this.f29925t)).m53967b(500L);
        }
    }

    @VisibleForTesting
    /* renamed from: h */
    public final void m22547h(Bundle bundle, int i, long j) {
        zzu();
        String zza = zzje.zza(bundle);
        if (zza != null) {
            zzj().zzv().zza("Ignoring invalid consent setting", zza);
            zzj().zzv().zza("Valid consent values are 'granted', 'denied'");
        }
        boolean zzg = zzl().zzg();
        zzje zza2 = zzje.zza(bundle, i);
        if (zza2.zzi()) {
            zza(zza2, j, zzg);
        }
        zzax zza3 = zzax.zza(bundle, i);
        if (zza3.zzg()) {
            m22548i(zza3, zzg);
        }
        Boolean zza4 = zzax.zza(bundle);
        if (zza4 != null) {
            String str = i == -30 ? "tcf" : "app";
            if (zze().zza(zzbh.zzcs) && zzg) {
                m22553t(str, FirebaseAnalytics.UserProperty.ALLOW_AD_PERSONALIZATION_SIGNALS, zza4.toString(), j);
            } else {
                zza(str, FirebaseAnalytics.UserProperty.ALLOW_AD_PERSONALIZATION_SIGNALS, zza4.toString(), false, j);
            }
        }
    }

    /* renamed from: i */
    public final void m22548i(zzax zzaxVar, boolean z) {
        dop dopVar = new dop(this, zzaxVar);
        if (!z) {
            zzl().zzb(dopVar);
        } else {
            zzt();
            dopVar.run();
        }
    }

    @WorkerThread
    /* renamed from: j */
    public final void m22549j(zzje zzjeVar) {
        zzt();
        boolean z = (zzjeVar.zzh() && zzjeVar.zzg()) || zzo().m22584j();
        if (z != this.zzu.zzad()) {
            this.zzu.zzb(z);
            Boolean m54582q = zzk().m54582q();
            if (!z || m54582q == null || m54582q.booleanValue()) {
                m22550q(Boolean.valueOf(z), false);
            }
        }
    }

    @WorkerThread
    /* renamed from: q */
    public final void m22550q(Boolean bool, boolean z) {
        zzt();
        zzu();
        zzj().zzc().zza("Setting app measurement enabled (FE)", bool);
        zzk().zza(bool);
        if (z) {
            zzk().m54573h(bool);
        }
        if (this.zzu.zzad() || !(bool == null || bool.booleanValue())) {
            m22559z();
        }
    }

    @WorkerThread
    /* renamed from: r */
    public final void m22551r(String str, String str2, long j, Bundle bundle) {
        zzt();
        zza(str, str2, j, bundle, true, this.f29908c == null || zzos.m22729T(str2), true, null);
    }

    /* renamed from: s */
    public final void m22552s(String str, String str2, long j, Object obj) {
        zzl().zzb(new qnp(this, str, str2, obj, j));
    }

    @WorkerThread
    /* renamed from: t */
    public final void m22553t(String str, String str2, Object obj, long j) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzu();
        if (FirebaseAnalytics.UserProperty.ALLOW_AD_PERSONALIZATION_SIGNALS.equals(str2)) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    Long valueOf = Long.valueOf("false".equals(str3.toLowerCase(Locale.ENGLISH)) ? 1L : 0L);
                    zzk().f72332n.zza(valueOf.longValue() == 1 ? "true" : "false");
                    obj = valueOf;
                    str2 = "_npa";
                    zzj().zzp().zza("Setting user property(FE)", "non_personalized_ads(_npa)", obj);
                }
            }
            if (obj == null) {
                zzk().f72332n.zza("unset");
                str2 = "_npa";
            }
            zzj().zzp().zza("Setting user property(FE)", "non_personalized_ads(_npa)", obj);
        }
        String str4 = str2;
        Object obj2 = obj;
        if (!this.zzu.zzac()) {
            zzj().zzp().zza("User property not set since app measurement is disabled");
        } else if (this.zzu.zzaf()) {
            zzo().zza(new zzon(str4, j, obj2, str));
        }
    }

    /* renamed from: u */
    public final /* synthetic */ void m22554u(List list) {
        boolean contains;
        zzt();
        if (Build.VERSION.SDK_INT >= 30) {
            SparseArray<Long> m54578m = zzk().m54578m();
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                zzno zznoVar = (zzno) it2.next();
                contains = m54578m.contains(zznoVar.zzc);
                if (!contains || m54578m.get(zznoVar.zzc).longValue() < zznoVar.zzb) {
                    m22555v().add(zznoVar);
                }
            }
            m22557x();
        }
    }

    @TargetApi(30)
    /* renamed from: v */
    public final PriorityQueue<zzno> m22555v() {
        if (this.f29916k == null) {
            this.f29916k = new PriorityQueue<>(Comparator.comparing(new Function() { // from class: com.google.android.gms.measurement.internal.zzjp
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Long valueOf;
                    valueOf = Long.valueOf(((zzno) obj).zzb);
                    return valueOf;
                }
            }, new Comparator() { // from class: com.google.android.gms.measurement.internal.zzjs
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int compare;
                    compare = Long.compare(((Long) obj).longValue(), ((Long) obj2).longValue());
                    return compare;
                }
            }));
        }
        return this.f29916k;
    }

    /* renamed from: w */
    public final void m22556w() {
        if (zzpn.zza() && zze().zza(zzbh.zzci)) {
            if (zzl().zzg()) {
                zzj().zzg().zza("Cannot get trigger URIs from analytics worker thread");
                return;
            }
            if (zzab.zza()) {
                zzj().zzg().zza("Cannot get trigger URIs from main thread");
                return;
            }
            zzu();
            zzj().zzp().zza("Getting trigger URIs (FE)");
            final AtomicReference atomicReference = new AtomicReference();
            zzl().m22495c(atomicReference, 5000L, "get trigger URIs", new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjr
                @Override // java.lang.Runnable
                public final void run() {
                    zzjq.this.zza(atomicReference);
                }
            });
            final List list = (List) atomicReference.get();
            if (list == null) {
                zzj().zzg().zza("Timed out waiting for get trigger URIs");
            } else {
                zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzju
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzjq.this.m22554u(list);
                    }
                });
            }
        }
    }

    @TargetApi(30)
    @WorkerThread
    /* renamed from: x */
    public final void m22557x() {
        zzno poll;
        MeasurementManagerFutures m22754Z;
        zzt();
        this.f29917l = false;
        if (m22555v().isEmpty() || this.f29913h || (poll = m22555v().poll()) == null || (m22754Z = zzq().m22754Z()) == null) {
            return;
        }
        this.f29913h = true;
        zzj().zzp().zza("Registering trigger URI", poll.zza);
        ListenableFuture<Unit> registerTriggerAsync = m22754Z.registerTriggerAsync(Uri.parse(poll.zza));
        if (registerTriggerAsync == null) {
            this.f29913h = false;
            m22555v().add(poll);
            return;
        }
        if (!zze().zza(zzbh.zzcn)) {
            SparseArray<Long> m54578m = zzk().m54578m();
            m54578m.put(poll.zzc, Long.valueOf(poll.zzb));
            zzk().m54568c(m54578m);
        }
        Futures.addCallback(registerTriggerAsync, new mnp(this, poll), new enp(this));
    }

    /* renamed from: y */
    public final boolean m22558y() {
        return this.f29917l;
    }

    @WorkerThread
    /* renamed from: z */
    public final void m22559z() {
        zzt();
        String zza = zzk().f72332n.zza();
        if (zza != null) {
            if ("unset".equals(zza)) {
                m22553t("app", "_npa", null, zzb().currentTimeMillis());
            } else {
                m22553t("app", "_npa", Long.valueOf("true".equals(zza) ? 1L : 0L), zzb().currentTimeMillis());
            }
        }
        if (!this.zzu.zzac() || !this.f29922q) {
            zzj().zzc().zza("Updating Scion state (FE)");
            zzo().zzak();
        } else {
            zzj().zzc().zza("Recording app launch after enabling measurement for the first time (FE)");
            zzan();
            zzp().zza.m22279a();
            zzl().zzb(new nnp(this));
        }
    }

    public final Application.ActivityLifecycleCallbacks zzaa() {
        return this.f29907b;
    }

    @WorkerThread
    public final zzaj zzab() {
        zzt();
        return zzo().zzaa();
    }

    public final Boolean zzac() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) zzl().m22495c(atomicReference, 15000L, "boolean test flag value", new knp(this, atomicReference));
    }

    public final Double zzad() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) zzl().m22495c(atomicReference, 15000L, "double test flag value", new bop(this, atomicReference));
    }

    public final Integer zzae() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) zzl().m22495c(atomicReference, 15000L, "int test flag value", new ynp(this, atomicReference));
    }

    public final Long zzaf() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) zzl().m22495c(atomicReference, 15000L, "long test flag value", new znp(this, atomicReference));
    }

    public final String zzag() {
        return this.f29911f.get();
    }

    public final String zzah() {
        zzlk zzaa = this.zzu.zzq().zzaa();
        if (zzaa != null) {
            return zzaa.zzb;
        }
        return null;
    }

    public final String zzai() {
        zzlk zzaa = this.zzu.zzq().zzaa();
        if (zzaa != null) {
            return zzaa.zza;
        }
        return null;
    }

    public final String zzaj() {
        if (this.zzu.zzu() != null) {
            return this.zzu.zzu();
        }
        try {
            return new zzhs(zza(), this.zzu.zzx()).zza(FirebaseOptions.f35530i);
        } catch (IllegalStateException e) {
            this.zzu.zzj().zzg().zza("getGoogleAppId failed with exception", e);
            return null;
        }
    }

    public final String zzak() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) zzl().m22495c(atomicReference, 15000L, "String test flag value", new snp(this, atomicReference));
    }

    @WorkerThread
    public final void zzam() {
        zzt();
        zzu();
        if (zze().zza(zzbh.zzdd)) {
            zzls zzo = zzo();
            zzo.zzt();
            zzo.zzu();
            boolean z = true;
            if (zzo.m22586l() && zzo.zzq().zzg() < 242600) {
                z = false;
            }
            if (z) {
                zzo().zzac();
            }
        }
    }

    @WorkerThread
    public final void zzan() {
        zzt();
        zzu();
        if (this.zzu.zzaf()) {
            Boolean m22287f = zze().m22287f("google_analytics_deferred_deep_link_enabled");
            if (m22287f != null && m22287f.booleanValue()) {
                zzj().zzc().zza("Deferred Deep Link feature enabled.");
                zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjv
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzjq.this.zzaq();
                    }
                });
            }
            zzo().zzad();
            this.f29922q = false;
            String m54584s = zzk().m54584s();
            if (TextUtils.isEmpty(m54584s)) {
                return;
            }
            zzf().zzac();
            if (m54584s.equals(Build.VERSION.RELEASE)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", m54584s);
            m22544I("auto", "_ou", bundle);
        }
    }

    public final void zzao() {
        if (!(zza().getApplicationContext() instanceof Application) || this.f29907b == null) {
            return;
        }
        ((Application) zza().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f29907b);
    }

    @WorkerThread
    public final void zzaq() {
        zzt();
        if (zzk().f72339u.zza()) {
            zzj().zzc().zza("Deferred Deep Link already retrieved. Not fetching again.");
            return;
        }
        long zza = zzk().f72340v.zza();
        zzk().f72340v.zza(1 + zza);
        if (zza >= 5) {
            zzj().zzu().zza("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
            zzk().f72339u.zza(true);
        } else {
            if (this.f29923r == null) {
                this.f29923r = new C5118f(this, this.zzu);
            }
            this.f29923r.m53967b(0L);
        }
    }

    @WorkerThread
    public final void zzar() {
        zzt();
        zzj().zzc().zza("Handle tcf update.");
        zznm zza = zznm.zza(zzk().m54575j());
        zzj().zzp().zza("Tcf preferences read", zza);
        if (zzk().m54572g(zza)) {
            Bundle zza2 = zza.zza();
            zzj().zzp().zza("Consent generated from Tcf", zza2);
            if (zza2 != Bundle.EMPTY) {
                m22547h(zza2, -30, zzb().currentTimeMillis());
            }
            Bundle bundle = new Bundle();
            bundle.putString("_tcfd", zza.zzb());
            m22544I("auto", "_tcf", bundle);
        }
    }

    @WorkerThread
    public final void zzat() {
        zzt();
        zzj().zzc().zza("Register tcfPrefChangeListener.");
        if (this.f29924s == null) {
            this.f29925t = new onp(this, this.zzu);
            this.f29924s = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.zzjy
                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                    zzjq.this.m22546g(sharedPreferences, str);
                }
            };
        }
        zzk().m54575j().registerOnSharedPreferenceChangeListener(this.f29924s);
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzb zzc() {
        return super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ zzab zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzag zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzgg zzg() {
        return super.zzg();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzgf zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzgh zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ zzgo zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ hlp zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ zzhv zzl() {
        return super.zzl();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzjq zzm() {
        return super.zzm();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzlj zzn() {
        return super.zzn();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zzls zzo() {
        return super.zzo();
    }

    @Override // com.sunia.HTREnginev2.xjp
    public final /* bridge */ /* synthetic */ zznb zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.C5116d
    @Pure
    public final /* bridge */ /* synthetic */ zzos zzq() {
        return super.zzq();
    }

    @Override // com.sunia.HTREnginev2.xjp, com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.sunia.HTREnginev2.xjp, com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.sunia.HTREnginev2.xjp, com.google.android.gms.measurement.internal.C5116d
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    @Override // com.sunia.HTREnginev2.elp
    public final boolean zzz() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.C5116d, com.sunia.HTREnginev2.anp
    @Pure
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public final void zzb(String str, String str2, Bundle bundle) {
        zza(str, str2, bundle, true, true, zzb().currentTimeMillis());
    }

    public final void zzc(final Bundle bundle, final long j) {
        zzl().zzc(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjw
            @Override // java.lang.Runnable
            public final void run() {
                zzjq.this.zza(bundle, j);
            }
        });
    }

    public final void zzd(Bundle bundle, long j) {
        m22547h(bundle, -20, j);
    }

    public final ArrayList<Bundle> zza(String str, String str2) {
        if (zzl().zzg()) {
            zzj().zzg().zza("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList<>(0);
        }
        if (zzab.zza()) {
            zzj().zzg().zza("Cannot get conditional user properties from main thread");
            return new ArrayList<>(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzu.zzl().m22495c(atomicReference, 5000L, "get conditional user properties", new RunnableC5120h(this, atomicReference, null, str, str2));
        List list = (List) atomicReference.get();
        if (list == null) {
            zzj().zzg().zza("Timed out waiting for get conditional user properties", null);
            return new ArrayList<>();
        }
        return zzos.zzb((List<zzae>) list);
    }

    public final void zzb(boolean z) {
        if (zza().getApplicationContext() instanceof Application) {
            Application application = (Application) zza().getApplicationContext();
            if (this.f29907b == null) {
                this.f29907b = new eop(this);
            }
            if (z) {
                application.unregisterActivityLifecycleCallbacks(this.f29907b);
                application.registerActivityLifecycleCallbacks(this.f29907b);
                zzj().zzp().zza("Registered activity lifecycle callback");
            }
        }
    }

    public final void zzc(boolean z) {
        zzu();
        zzl().zzb(new RunnableC5117e(this, z));
    }

    public final void zzc(Bundle bundle) {
        final Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjt
            @Override // java.lang.Runnable
            public final void run() {
                zzjq.this.zza(bundle2);
            }
        });
    }

    public final void zzc(long j) {
        zzl().zzb(new pnp(this, j));
    }

    public final void zzb(Bundle bundle) {
        zzb(bundle, zzb().currentTimeMillis());
    }

    public final void zzb(Bundle bundle, long j) {
        Preconditions.checkNotNull(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            zzj().zzu().zza("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        Preconditions.checkNotNull(bundle2);
        zzjf.zza(bundle2, "app_id", String.class, null);
        zzjf.zza(bundle2, "origin", String.class, null);
        zzjf.zza(bundle2, "name", String.class, null);
        zzjf.zza(bundle2, "value", Object.class, null);
        zzjf.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        zzjf.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L);
        zzjf.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        zzjf.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        zzjf.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        zzjf.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        zzjf.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L);
        zzjf.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        zzjf.zza(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        Preconditions.checkNotEmpty(bundle2.getString("name"));
        Preconditions.checkNotEmpty(bundle2.getString("origin"));
        Preconditions.checkNotNull(bundle2.get("value"));
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, j);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        if (zzq().zzb(string) != 0) {
            zzj().zzg().zza("Invalid conditional user property name", zzi().zzc(string));
            return;
        }
        if (zzq().m22755b(string, obj) != 0) {
            zzj().zzg().zza("Invalid conditional user property value", zzi().zzc(string), obj);
            return;
        }
        Object m22748L = zzq().m22748L(string, obj);
        if (m22748L == null) {
            zzj().zzg().zza("Unable to normalize conditional user property value", zzi().zzc(string), obj);
            return;
        }
        zzjf.zza(bundle2, m22748L);
        long j2 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT);
        if (!TextUtils.isEmpty(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME)) && (j2 > 15552000000L || j2 < 1)) {
            zzj().zzg().zza("Invalid conditional user property timeout", zzi().zzc(string), Long.valueOf(j2));
            return;
        }
        long j3 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE);
        if (j3 <= 15552000000L && j3 >= 1) {
            zzl().zzb(new wnp(this, bundle2));
        } else {
            zzj().zzg().zza("Invalid conditional user property time to live", zzi().zzc(string), Long.valueOf(j3));
        }
    }

    public final List<zzon> zza(boolean z) {
        zzu();
        zzj().zzp().zza("Getting user properties (FE)");
        if (zzl().zzg()) {
            zzj().zzg().zza("Cannot get all user properties from analytics worker thread");
            return Collections.emptyList();
        }
        if (zzab.zza()) {
            zzj().zzg().zza("Cannot get all user properties from main thread");
            return Collections.emptyList();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzu.zzl().m22495c(atomicReference, 5000L, "get user properties", new tnp(this, atomicReference, z));
        List<zzon> list = (List) atomicReference.get();
        if (list != null) {
            return list;
        }
        zzj().zzg().zza("Timed out waiting for get user properties, includeInternal", Boolean.valueOf(z));
        return Collections.emptyList();
    }

    public final Map<String, Object> zza(String str, String str2, boolean z) {
        if (zzl().zzg()) {
            zzj().zzg().zza("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        if (zzab.zza()) {
            zzj().zzg().zza("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzu.zzl().m22495c(atomicReference, 5000L, "get user properties", new RunnableC5119g(this, atomicReference, null, str, str2, z));
        List<zzon> list = (List) atomicReference.get();
        if (list == null) {
            zzj().zzg().zza("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
            return Collections.emptyMap();
        }
        ArrayMap arrayMap = new ArrayMap(list.size());
        for (zzon zzonVar : list) {
            Object zza = zzonVar.zza();
            if (zza != null) {
                arrayMap.put(zzonVar.zza, zza);
            }
        }
        return arrayMap;
    }

    public final void zza(String str, String str2, Bundle bundle) {
        long currentTimeMillis = zzb().currentTimeMillis();
        Preconditions.checkNotEmpty(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, currentTimeMillis);
        if (str2 != null) {
            bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str2);
            bundle2.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle);
        }
        zzl().zzb(new vnp(this, bundle2));
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zzl().zzb(new RunnableC5121i(this, zzdoVar));
    }

    public final /* synthetic */ void zza(AtomicReference atomicReference) {
        Bundle zza = zzk().f72333o.zza();
        zzls zzo = zzo();
        if (zza == null) {
            zza = new Bundle();
        }
        zzo.zza((AtomicReference<List<zzno>>) atomicReference, zza);
    }

    public final /* synthetic */ void zza(Bundle bundle, long j) {
        if (TextUtils.isEmpty(zzg().m22433g())) {
            m22547h(bundle, 0, j);
        } else {
            zzj().zzv().zza("Using developer consent only; google app id found");
        }
    }

    public final void zzb(zzjl zzjlVar) {
        zzu();
        Preconditions.checkNotNull(zzjlVar);
        if (this.f29909d.remove(zzjlVar)) {
            return;
        }
        zzj().zzu().zza("OnEventListener had not been registered");
    }

    public final /* synthetic */ void zza(Bundle bundle) {
        Bundle zza;
        if (bundle.isEmpty()) {
            zza = bundle;
        } else {
            zza = zzk().f72344z.zza();
            if (zze().zza(zzbh.zzdh)) {
                zza = new Bundle(zza);
            }
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                    zzq();
                    if (zzos.m22741v(obj)) {
                        zzq();
                        zzos.zza(this.f29926u, 27, (String) null, (String) null, 0);
                    }
                    zzj().zzv().zza("Invalid default event parameter type. Name, value", str, obj);
                } else if (zzos.m22729T(str)) {
                    zzj().zzv().zza("Invalid default event parameter name. Name", str);
                } else if (obj == null) {
                    zza.remove(str);
                } else if (zzq().m22773z(Constants.ELEMNAME_PARAMVARIABLE_STRING, str, zze().m22282a(null, false), obj)) {
                    zzq().m22766m(zza, str, obj);
                }
            }
            zzq();
            if (zzos.m22740u(zza, zze().zzc())) {
                zzq();
                zzos.zza(this.f29926u, 26, (String) null, (String) null, 0);
                zzj().zzv().zza("Too many default event parameters set. Discarding beyond event parameter limit");
            }
        }
        zzk().f72344z.zza(zza);
        if (!bundle.isEmpty() || zze().zza(zzbh.zzdf)) {
            zzo().zza(zza);
        }
    }

    public final void zza(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        String str3 = str == null ? "app" : str;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (Objects.equals(str2, FirebaseAnalytics.Event.SCREEN_VIEW)) {
            zzn().zza(bundle2, j);
        } else {
            m22542F(str3, str2, j, bundle2, z2, !z2 || this.f29908c == null || zzos.m22729T(str2), z, null);
        }
    }

    public final void zza(String str, String str2, Bundle bundle, String str3) {
        zzs();
        m22542F(str, str2, zzb().currentTimeMillis(), bundle, false, true, true, str3);
    }

    public final void zza(String str, String str2, Bundle bundle, long j) {
        zza(str, str2, bundle, true, false, j);
    }

    @WorkerThread
    public final void zza(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        boolean zza;
        String str4;
        long j2;
        String str5;
        String str6;
        boolean z4;
        int length;
        Class<?> cls;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(bundle);
        zzt();
        zzu();
        if (!this.zzu.zzac()) {
            zzj().zzc().zza("Event not sent since app measurement is disabled");
            return;
        }
        List<String> m22434h = zzg().m22434h();
        if (m22434h != null && !m22434h.contains(str2)) {
            zzj().zzc().zza("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        boolean z5 = true;
        if (!this.f29910e) {
            this.f29910e = true;
            try {
                if (!this.zzu.zzag()) {
                    cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, zza().getClassLoader());
                } else {
                    cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService");
                }
                try {
                    cls.getDeclaredMethod("initialize", Context.class).invoke(null, zza());
                } catch (Exception e) {
                    zzj().zzu().zza("Failed to invoke Tag Manager's initialize() method", e);
                }
            } catch (ClassNotFoundException unused) {
                zzj().zzo().zza("Tag Manager is not found and thus will not be used");
            }
        }
        if ("_cmp".equals(str2) && bundle.containsKey("gclid")) {
            m22553t("auto", "_lgclid", bundle.getString("gclid"), zzb().currentTimeMillis());
        }
        if (z && zzos.zzj(str2)) {
            zzq().m22765l(bundle, zzk().f72344z.zza());
        }
        if (!z3 && !"_iap".equals(str2)) {
            zzos zzt = this.zzu.zzt();
            int i = 2;
            if (zzt.m22749N(NotificationCompat.CATEGORY_EVENT, str2)) {
                if (!zzt.m22743D(NotificationCompat.CATEGORY_EVENT, zzji.zza, zzji.zzb, str2)) {
                    i = 13;
                } else if (zzt.m22771x(NotificationCompat.CATEGORY_EVENT, 40, str2)) {
                    i = 0;
                }
            }
            if (i != 0) {
                zzj().zzm().zza("Invalid public event name. Event will not be logged (FE)", zzi().zza(str2));
                this.zzu.zzt();
                String zza2 = zzos.zza(str2, 40, true);
                length = str2 != null ? str2.length() : 0;
                this.zzu.zzt();
                zzos.zza(this.f29926u, i, "_ev", zza2, length);
                return;
            }
        }
        zzlk zza3 = zzn().zza(false);
        if (zza3 != null && !bundle.containsKey("_sc")) {
            zza3.f29954a = true;
        }
        zzos.zza(zza3, bundle, z && !z3);
        boolean equals = "am".equals(str);
        boolean m22729T = zzos.m22729T(str2);
        if (z && this.f29908c != null && !m22729T && !equals) {
            zzj().zzc().zza("Passing event to registered event handler (FE)", zzi().zza(str2), zzi().zza(bundle));
            Preconditions.checkNotNull(this.f29908c);
            this.f29908c.interceptEvent(str, str2, bundle, j);
            return;
        }
        if (this.zzu.zzaf()) {
            int zza4 = zzq().zza(str2);
            if (zza4 != 0) {
                zzj().zzm().zza("Invalid event name. Event will not be logged (FE)", zzi().zza(str2));
                zzq();
                String zza5 = zzos.zza(str2, 40, true);
                length = str2 != null ? str2.length() : 0;
                this.zzu.zzt();
                zzos.m22736o(this.f29926u, str3, zza4, "_ev", zza5, length);
                return;
            }
            Bundle m22762h = zzq().m22762h(str3, str2, bundle, CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si"}), z3);
            Preconditions.checkNotNull(m22762h);
            if (zzn().zza(false) != null && "_ae".equals(str2)) {
                C5127o c5127o = zzp().zzb;
                long elapsedRealtime = c5127o.f29703d.zzb().elapsedRealtime();
                long j3 = elapsedRealtime - c5127o.f29701b;
                c5127o.f29701b = elapsedRealtime;
                if (j3 > 0) {
                    zzq().zza(m22762h, j3);
                }
            }
            if (!"auto".equals(str) && "_ssr".equals(str2)) {
                zzos zzq = zzq();
                String string = m22762h.getString("_ffr");
                if (Strings.isEmptyOrWhitespace(string)) {
                    string = null;
                } else if (string != null) {
                    string = string.trim();
                }
                if (Objects.equals(string, zzq.zzk().f72341w.zza())) {
                    zzq.zzj().zzc().zza("Not logging duplicate session_start_with_rollout event");
                    z4 = false;
                } else {
                    zzq.zzk().f72341w.zza(string);
                    z4 = true;
                }
                if (!z4) {
                    return;
                }
            } else if ("_ae".equals(str2)) {
                String zza6 = zzq().zzk().f72341w.zza();
                if (!TextUtils.isEmpty(zza6)) {
                    m22762h.putString("_ffr", zza6);
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(m22762h);
            if (zze().zza(zzbh.zzco)) {
                zza = zzp().m22600d();
            } else {
                zza = zzk().f72338t.zza();
            }
            if (zzk().f72335q.zza() > 0 && zzk().m54569d(j) && zza) {
                zzj().zzp().zza("Current session is expired, remove the session number, ID, and engagement time");
                j2 = 0;
                str4 = "_ae";
                m22553t("auto", "_sid", null, zzb().currentTimeMillis());
                m22553t("auto", "_sno", null, zzb().currentTimeMillis());
                m22553t("auto", "_se", null, zzb().currentTimeMillis());
                zzk().f72336r.zza(0L);
            } else {
                str4 = "_ae";
                j2 = 0;
            }
            if (m22762h.getLong(FirebaseAnalytics.Param.EXTEND_SESSION, j2) == 1) {
                zzj().zzp().zza("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                this.zzu.zzs().zza.m22280b(j, true);
            }
            ArrayList arrayList2 = new ArrayList(m22762h.keySet());
            Collections.sort(arrayList2);
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                i2++;
                String str7 = (String) obj;
                if (str7 != null) {
                    zzq();
                    Bundle[] m22724J = zzos.m22724J(m22762h.get(str7));
                    if (m22724J != null) {
                        m22762h.putParcelableArray(str7, m22724J);
                    }
                }
            }
            int i3 = 0;
            while (i3 < arrayList.size()) {
                Bundle bundle2 = (Bundle) arrayList.get(i3);
                if (i3 != 0 ? z5 : false) {
                    str6 = "_ep";
                    str5 = str;
                } else {
                    str5 = str;
                    str6 = str2;
                }
                bundle2.putString("_o", str5);
                if (z2) {
                    bundle2 = zzq().m22761g(bundle2, null);
                }
                Bundle bundle3 = bundle2;
                zzo().zza(new zzbf(str6, new zzbe(bundle3), str, j), str3);
                if (!equals) {
                    Iterator<zzjl> it2 = this.f29909d.iterator();
                    while (it2.hasNext()) {
                        it2.next().onEvent(str, str2, new Bundle(bundle3), j);
                    }
                }
                i3++;
                z5 = true;
            }
            if (zzn().zza(false) == null || !str4.equals(str2)) {
                return;
            }
            zzp().zza(true, true, zzb().elapsedRealtime());
        }
    }

    public final void zza(zzjl zzjlVar) {
        zzu();
        Preconditions.checkNotNull(zzjlVar);
        if (this.f29909d.add(zzjlVar)) {
            return;
        }
        zzj().zzu().zza("OnEventListener already registered");
    }

    public final void zza(long j) {
        m22543H(null);
        zzl().zzb(new unp(this, j));
    }

    @WorkerThread
    public final void zza(zzjm zzjmVar) {
        zzjm zzjmVar2;
        zzt();
        zzu();
        if (zzjmVar != null && zzjmVar != (zzjmVar2 = this.f29908c)) {
            Preconditions.checkState(zzjmVar2 == null, "EventInterceptor already set.");
        }
        this.f29908c = zzjmVar;
    }

    public final void zza(Boolean bool) {
        zzu();
        zzl().zzb(new aop(this, bool));
    }

    @WorkerThread
    public final void zza(Intent intent) {
        if (zzpu.zza() && zze().zza(zzbh.zzby)) {
            Uri data = intent.getData();
            if (data == null) {
                zzj().zzo().zza("Activity intent has no data. Preview Mode was not enabled.");
                return;
            }
            String queryParameter = data.getQueryParameter("sgtm_debug_enable");
            if (queryParameter != null && queryParameter.equals("1")) {
                String queryParameter2 = data.getQueryParameter("sgtm_preview_key");
                if (TextUtils.isEmpty(queryParameter2)) {
                    return;
                }
                zzj().zzo().zza("Preview Mode was enabled. Using the sgtmPreviewKey: ", queryParameter2);
                zze().zzh(queryParameter2);
                return;
            }
            zzj().zzo().zza("Preview Mode was not enabled.");
            zze().zzh(null);
        }
    }

    public final void zza(zzje zzjeVar, long j, boolean z) {
        zzje zzjeVar2;
        boolean z2;
        zzje zzjeVar3;
        boolean z3;
        boolean z4;
        zzu();
        int zza = zzjeVar.zza();
        if (zza != -10) {
            zzjh zzc = zzjeVar.zzc();
            zzjh zzjhVar = zzjh.UNINITIALIZED;
            if (zzc == zzjhVar && zzjeVar.zzd() == zzjhVar) {
                zzj().zzv().zza("Ignoring empty consent settings");
                return;
            }
        }
        synchronized (this.f29912g) {
            zzjeVar2 = this.f29918m;
            z2 = false;
            if (zzje.zza(zza, zzjeVar2.zza())) {
                boolean zzc2 = zzjeVar.zzc(this.f29918m);
                if (zzjeVar.zzh() && !this.f29918m.zzh()) {
                    z2 = true;
                }
                zzje zzb = zzjeVar.zzb(this.f29918m);
                this.f29918m = zzb;
                z4 = z2;
                z2 = true;
                zzjeVar3 = zzb;
                z3 = zzc2;
            } else {
                zzjeVar3 = zzjeVar;
                z3 = false;
                z4 = false;
            }
        }
        if (!z2) {
            zzj().zzo().zza("Ignoring lower-priority consent settings, proposed settings", zzjeVar3);
            return;
        }
        long andIncrement = this.f29919n.getAndIncrement();
        if (z3) {
            m22543H(null);
            cop copVar = new cop(this, zzjeVar3, j, andIncrement, z4, zzjeVar2);
            if (z) {
                zzt();
                copVar.run();
                return;
            } else {
                zzl().zzc(copVar);
                return;
            }
        }
        kop kopVar = new kop(this, zzjeVar3, andIncrement, z4, zzjeVar2);
        if (z) {
            zzt();
            kopVar.run();
        } else if (zza != 30 && zza != -10) {
            zzl().zzb(kopVar);
        } else {
            zzl().zzc(kopVar);
        }
    }

    public final void zza(final String str, long j) {
        if (str != null && TextUtils.isEmpty(str)) {
            this.zzu.zzj().zzu().zza("User ID must be non-empty or null");
        } else {
            zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjx
                @Override // java.lang.Runnable
                public final void run() {
                    zzjq.this.m22541E(str);
                }
            });
            zza(null, "_id", str, true, j);
        }
    }

    public final void zza(String str, String str2, Object obj, boolean z) {
        zza(str, str2, obj, z, zzb().currentTimeMillis());
    }

    public final void zza(String str, String str2, Object obj, boolean z, long j) {
        int i;
        int length;
        if (str == null) {
            str = "app";
        }
        String str3 = str;
        if (z) {
            i = zzq().zzb(str2);
        } else {
            zzos zzq = zzq();
            if (zzq.m22749N("user property", str2)) {
                if (!zzq.m22742C("user property", zzjj.zza, str2)) {
                    i = 15;
                } else if (zzq.m22771x("user property", 24, str2)) {
                    i = 0;
                }
            }
            i = 6;
        }
        if (i != 0) {
            zzq();
            String zza = zzos.zza(str2, 24, true);
            length = str2 != null ? str2.length() : 0;
            this.zzu.zzt();
            zzos.zza(this.f29926u, i, "_ev", zza, length);
            return;
        }
        if (obj != null) {
            int m22755b = zzq().m22755b(str2, obj);
            if (m22755b != 0) {
                zzq();
                String zza2 = zzos.zza(str2, 24, true);
                length = ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0;
                this.zzu.zzt();
                zzos.zza(this.f29926u, m22755b, "_ev", zza2, length);
                return;
            }
            Object m22748L = zzq().m22748L(str2, obj);
            if (m22748L != null) {
                m22552s(str3, str2, j, m22748L);
                return;
            }
            return;
        }
        m22552s(str3, str2, j, null);
    }
}
