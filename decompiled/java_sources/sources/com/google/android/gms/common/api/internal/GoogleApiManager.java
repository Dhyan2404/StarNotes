package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sunia.HTREnginev2.f9p;
import com.sunia.HTREnginev2.gap;
import com.sunia.HTREnginev2.nap;
import com.sunia.HTREnginev2.oap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes5.dex */
public class GoogleApiManager implements Handler.Callback {

    /* renamed from: v */
    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public static GoogleApiManager f29092v;

    /* renamed from: g */
    @Nullable
    public TelemetryData f29095g;

    /* renamed from: h */
    @Nullable
    public TelemetryLoggingClient f29096h;

    /* renamed from: i */
    public final Context f29097i;

    /* renamed from: j */
    public final GoogleApiAvailability f29098j;

    /* renamed from: k */
    public final com.google.android.gms.common.internal.zal f29099k;

    /* renamed from: r */
    @NotOnlyInitialized
    public final Handler f29106r;

    /* renamed from: s */
    public volatile boolean f29107s;

    @NonNull
    public static final Status zaa = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: t */
    public static final Status f29090t = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: u */
    public static final Object f29091u = new Object();

    /* renamed from: e */
    public long f29093e = 10000;

    /* renamed from: f */
    public boolean f29094f = false;

    /* renamed from: l */
    public final AtomicInteger f29100l = new AtomicInteger(1);

    /* renamed from: m */
    public final AtomicInteger f29101m = new AtomicInteger(0);

    /* renamed from: n */
    public final Map f29102n = new ConcurrentHashMap(5, 0.75f, 1);

    /* renamed from: o */
    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public zaae f29103o = null;

    /* renamed from: p */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final Set f29104p = new ArraySet();

    /* renamed from: q */
    public final Set f29105q = new ArraySet();

    @KeepForSdk
    public GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.f29107s = true;
        this.f29097i = context;
        com.google.android.gms.internal.base.zau zauVar = new com.google.android.gms.internal.base.zau(looper, this);
        this.f29106r = zauVar;
        this.f29098j = googleApiAvailability;
        this.f29099k = new com.google.android.gms.common.internal.zal(googleApiAvailability);
        if (DeviceProperties.isAuto(context)) {
            this.f29107s = false;
        }
        zauVar.sendMessage(zauVar.obtainMessage(6));
    }

    /* renamed from: e */
    public static Status m21977e(ApiKey apiKey, ConnectionResult connectionResult) {
        return new Status(connectionResult, "API: " + apiKey.zaa() + " is not available on this device. Connection failed with: " + String.valueOf(connectionResult));
    }

    @KeepForSdk
    public static void reportSignOut() {
        synchronized (f29091u) {
            GoogleApiManager googleApiManager = f29092v;
            if (googleApiManager != null) {
                googleApiManager.f29101m.incrementAndGet();
                Handler handler = googleApiManager.f29106r;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    @NonNull
    public static GoogleApiManager zaj() {
        GoogleApiManager googleApiManager;
        synchronized (f29091u) {
            Preconditions.checkNotNull(f29092v, "Must guarantee manager is non-null before using getInstance");
            googleApiManager = f29092v;
        }
        return googleApiManager;
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    public static GoogleApiManager zak(@NonNull Context context) {
        GoogleApiManager googleApiManager;
        synchronized (f29091u) {
            if (f29092v == null) {
                f29092v = new GoogleApiManager(context.getApplicationContext(), GmsClientSupervisor.getOrStartHandlerThread().getLooper(), GoogleApiAvailability.getInstance());
            }
            googleApiManager = f29092v;
        }
        return googleApiManager;
    }

    /* renamed from: a */
    public final void m21990a(@NonNull zaae zaaeVar) {
        synchronized (f29091u) {
            if (this.f29103o == zaaeVar) {
                this.f29103o = null;
                this.f29104p.clear();
            }
        }
    }

    @WorkerThread
    /* renamed from: c */
    public final boolean m21991c() {
        if (this.f29094f) {
            return false;
        }
        RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
        if (config != null && !config.getMethodInvocationTelemetryEnabled()) {
            return false;
        }
        int zaa2 = this.f29099k.zaa(this.f29097i, 203400000);
        return zaa2 == -1 || zaa2 == 0;
    }

    @ResultIgnorabilityUnspecified
    /* renamed from: d */
    public final boolean m21992d(ConnectionResult connectionResult, int i) {
        return this.f29098j.zah(this.f29097i, connectionResult, i);
    }

    @ResultIgnorabilityUnspecified
    @WorkerThread
    /* renamed from: f */
    public final zabq m21993f(GoogleApi googleApi) {
        Map map = this.f29102n;
        ApiKey apiKey = googleApi.getApiKey();
        zabq zabqVar = (zabq) map.get(apiKey);
        if (zabqVar == null) {
            zabqVar = new zabq(this, googleApi);
            this.f29102n.put(apiKey, zabqVar);
        }
        if (zabqVar.zaA()) {
            this.f29105q.add(apiKey);
        }
        zabqVar.zao();
        return zabqVar;
    }

    @WorkerThread
    /* renamed from: g */
    public final TelemetryLoggingClient m21994g() {
        if (this.f29096h == null) {
            this.f29096h = TelemetryLogging.getClient(this.f29097i);
        }
        return this.f29096h;
    }

    @WorkerThread
    /* renamed from: h */
    public final void m21995h() {
        TelemetryData telemetryData = this.f29095g;
        if (telemetryData != null) {
            if (telemetryData.zaa() > 0 || m21991c()) {
                m21994g().log(telemetryData);
            }
            this.f29095g = null;
        }
    }

    @Override // android.os.Handler.Callback
    @WorkerThread
    public final boolean handleMessage(@NonNull Message message) {
        ApiKey apiKey;
        ApiKey apiKey2;
        ApiKey apiKey3;
        ApiKey apiKey4;
        int i = message.what;
        zabq zabqVar = null;
        switch (i) {
            case 1:
                this.f29093e = true == ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.f29106r.removeMessages(12);
                for (ApiKey apiKey5 : this.f29102n.keySet()) {
                    Handler handler = this.f29106r;
                    handler.sendMessageDelayed(handler.obtainMessage(12, apiKey5), this.f29093e);
                }
                return true;
            case 2:
                zal zalVar = (zal) message.obj;
                Iterator it2 = zalVar.zab().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        ApiKey apiKey6 = (ApiKey) it2.next();
                        zabq zabqVar2 = (zabq) this.f29102n.get(apiKey6);
                        if (zabqVar2 == null) {
                            zalVar.zac(apiKey6, new ConnectionResult(13), null);
                        } else if (zabqVar2.m22107y()) {
                            zalVar.zac(apiKey6, ConnectionResult.RESULT_SUCCESS, zabqVar2.zaf().getEndpointPackageName());
                        } else {
                            ConnectionResult zad = zabqVar2.zad();
                            if (zad != null) {
                                zalVar.zac(apiKey6, zad, null);
                            } else {
                                zabqVar2.zat(zalVar);
                                zabqVar2.zao();
                            }
                        }
                    }
                }
                return true;
            case 3:
                for (zabq zabqVar3 : this.f29102n.values()) {
                    zabqVar3.zan();
                    zabqVar3.zao();
                }
                return true;
            case 4:
            case 8:
            case 13:
                zach zachVar = (zach) message.obj;
                zabq zabqVar4 = (zabq) this.f29102n.get(zachVar.zac.getApiKey());
                if (zabqVar4 == null) {
                    zabqVar4 = m21993f(zachVar.zac);
                }
                if (!zabqVar4.zaA() || this.f29101m.get() == zachVar.zab) {
                    zabqVar4.zap(zachVar.zaa);
                } else {
                    zachVar.zaa.zad(zaa);
                    zabqVar4.zav();
                }
                return true;
            case 5:
                int i2 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator it3 = this.f29102n.values().iterator();
                while (true) {
                    if (it3.hasNext()) {
                        zabq zabqVar5 = (zabq) it3.next();
                        if (zabqVar5.zab() == i2) {
                            zabqVar = zabqVar5;
                        }
                    }
                }
                if (zabqVar == null) {
                    Log.wtf("GoogleApiManager", "Could not find API instance " + i2 + " while trying to fail enqueued calls.", new Exception());
                } else if (connectionResult.getErrorCode() == 13) {
                    zabq.m22085q(zabqVar, new Status(17, "Error resolution was canceled by the user, original error message: " + this.f29098j.getErrorString(connectionResult.getErrorCode()) + ": " + connectionResult.getErrorMessage()));
                } else {
                    zabq.m22085q(zabqVar, m21977e(zabq.m22084p(zabqVar), connectionResult));
                }
                return true;
            case 6:
                if (this.f29097i.getApplicationContext() instanceof Application) {
                    BackgroundDetector.initialize((Application) this.f29097i.getApplicationContext());
                    BackgroundDetector.getInstance().addListener(new C5055c(this));
                    if (!BackgroundDetector.getInstance().readCurrentStateIfPossible(true)) {
                        this.f29093e = 300000L;
                    }
                }
                return true;
            case 7:
                m21993f((GoogleApi) message.obj);
                return true;
            case 9:
                if (this.f29102n.containsKey(message.obj)) {
                    ((zabq) this.f29102n.get(message.obj)).zau();
                }
                return true;
            case 10:
                Iterator it4 = this.f29105q.iterator();
                while (it4.hasNext()) {
                    zabq zabqVar6 = (zabq) this.f29102n.remove((ApiKey) it4.next());
                    if (zabqVar6 != null) {
                        zabqVar6.zav();
                    }
                }
                this.f29105q.clear();
                return true;
            case 11:
                if (this.f29102n.containsKey(message.obj)) {
                    ((zabq) this.f29102n.get(message.obj)).zaw();
                }
                return true;
            case 12:
                if (this.f29102n.containsKey(message.obj)) {
                    ((zabq) this.f29102n.get(message.obj)).zaB();
                }
                return true;
            case 14:
                f9p f9pVar = (f9p) message.obj;
                ApiKey m54077a = f9pVar.m54077a();
                if (this.f29102n.containsKey(m54077a)) {
                    f9pVar.m54078b().setResult(Boolean.valueOf(zabq.m22091x((zabq) this.f29102n.get(m54077a), false)));
                } else {
                    f9pVar.m54078b().setResult(Boolean.FALSE);
                }
                return true;
            case 15:
                gap gapVar = (gap) message.obj;
                Map map = this.f29102n;
                apiKey = gapVar.f70852a;
                if (map.containsKey(apiKey)) {
                    Map map2 = this.f29102n;
                    apiKey2 = gapVar.f70852a;
                    zabq.m22088t((zabq) map2.get(apiKey2), gapVar);
                }
                return true;
            case 16:
                gap gapVar2 = (gap) message.obj;
                Map map3 = this.f29102n;
                apiKey3 = gapVar2.f70852a;
                if (map3.containsKey(apiKey3)) {
                    Map map4 = this.f29102n;
                    apiKey4 = gapVar2.f70852a;
                    zabq.m22089u((zabq) map4.get(apiKey4), gapVar2);
                }
                return true;
            case 17:
                m21995h();
                return true;
            case 18:
                oap oapVar = (oap) message.obj;
                if (oapVar.f79520c == 0) {
                    m21994g().log(new TelemetryData(oapVar.f79519b, Arrays.asList(oapVar.f79518a)));
                } else {
                    TelemetryData telemetryData = this.f29095g;
                    if (telemetryData != null) {
                        List zab = telemetryData.zab();
                        if (telemetryData.zaa() != oapVar.f79519b || (zab != null && zab.size() >= oapVar.f79521d)) {
                            this.f29106r.removeMessages(17);
                            m21995h();
                        } else {
                            this.f29095g.zac(oapVar.f79518a);
                        }
                    }
                    if (this.f29095g == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(oapVar.f79518a);
                        this.f29095g = new TelemetryData(oapVar.f79519b, arrayList);
                        Handler handler2 = this.f29106r;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), oapVar.f79520c);
                    }
                }
                return true;
            case 19:
                this.f29094f = false;
                return true;
            default:
                Log.w("GoogleApiManager", "Unknown message id: " + i);
                return false;
        }
    }

    /* renamed from: i */
    public final void m21996i(TaskCompletionSource taskCompletionSource, int i, GoogleApi googleApi) {
        nap m55731a;
        if (i == 0 || (m55731a = nap.m55731a(this, i, googleApi.getApiKey())) == null) {
            return;
        }
        Task task = taskCompletionSource.getTask();
        final Handler handler = this.f29106r;
        handler.getClass();
        task.addOnCompleteListener(new Executor() { // from class: com.google.android.gms.common.api.internal.zabk
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, m55731a);
    }

    @Nullable
    /* renamed from: q */
    public final zabq m21997q(ApiKey apiKey) {
        return (zabq) this.f29102n.get(apiKey);
    }

    /* renamed from: w */
    public final void m21998w(MethodInvocation methodInvocation, int i, long j, int i2) {
        this.f29106r.sendMessage(this.f29106r.obtainMessage(18, new oap(methodInvocation, i, j, i2)));
    }

    public final void zaA(@NonNull zaae zaaeVar) {
        synchronized (f29091u) {
            if (this.f29103o != zaaeVar) {
                this.f29103o = zaaeVar;
                this.f29104p.clear();
            }
            this.f29104p.addAll(zaaeVar.m22034f());
        }
    }

    public final int zaa() {
        return this.f29100l.getAndIncrement();
    }

    @NonNull
    public final Task zam(@NonNull Iterable iterable) {
        zal zalVar = new zal(iterable);
        this.f29106r.sendMessage(this.f29106r.obtainMessage(2, zalVar));
        return zalVar.zaa();
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    public final Task zan(@NonNull GoogleApi googleApi) {
        f9p f9pVar = new f9p(googleApi.getApiKey());
        this.f29106r.sendMessage(this.f29106r.obtainMessage(14, f9pVar));
        return f9pVar.m54078b().getTask();
    }

    @NonNull
    public final Task zao(@NonNull GoogleApi googleApi, @NonNull RegisterListenerMethod registerListenerMethod, @NonNull UnregisterListenerMethod unregisterListenerMethod, @NonNull Runnable runnable) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        m21996i(taskCompletionSource, registerListenerMethod.zaa(), googleApi);
        this.f29106r.sendMessage(this.f29106r.obtainMessage(8, new zach(new zaf(new zaci(registerListenerMethod, unregisterListenerMethod, runnable), taskCompletionSource), this.f29101m.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    @NonNull
    public final Task zap(@NonNull GoogleApi googleApi, @NonNull ListenerHolder.ListenerKey listenerKey, int i) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        m21996i(taskCompletionSource, i, googleApi);
        this.f29106r.sendMessage(this.f29106r.obtainMessage(13, new zach(new zah(listenerKey, taskCompletionSource), this.f29101m.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final void zau(@NonNull GoogleApi googleApi, int i, @NonNull BaseImplementation.ApiMethodImpl apiMethodImpl) {
        this.f29106r.sendMessage(this.f29106r.obtainMessage(4, new zach(new zae(i, apiMethodImpl), this.f29101m.get(), googleApi)));
    }

    public final void zav(@NonNull GoogleApi googleApi, int i, @NonNull TaskApiCall taskApiCall, @NonNull TaskCompletionSource taskCompletionSource, @NonNull StatusExceptionMapper statusExceptionMapper) {
        m21996i(taskCompletionSource, taskApiCall.zaa(), googleApi);
        this.f29106r.sendMessage(this.f29106r.obtainMessage(4, new zach(new zag(i, taskApiCall, taskCompletionSource, statusExceptionMapper), this.f29101m.get(), googleApi)));
    }

    public final void zax(@NonNull ConnectionResult connectionResult, int i) {
        if (m21992d(connectionResult, i)) {
            return;
        }
        Handler handler = this.f29106r;
        handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
    }

    public final void zay() {
        Handler handler = this.f29106r;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final void zaz(@NonNull GoogleApi googleApi) {
        Handler handler = this.f29106r;
        handler.sendMessage(handler.obtainMessage(7, googleApi));
    }
}
