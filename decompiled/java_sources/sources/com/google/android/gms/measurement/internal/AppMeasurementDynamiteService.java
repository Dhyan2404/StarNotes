package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.sunia.HTREnginev2.bqp;
import com.sunia.HTREnginev2.gnp;
import com.sunia.HTREnginev2.gop;
import com.sunia.HTREnginev2.tlp;
import com.sunia.HTREnginev2.vmp;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

@DynamiteApi
/* loaded from: classes5.dex */
public class AppMeasurementDynamiteService extends com.google.android.gms.internal.measurement.zzdm {

    /* renamed from: a */
    @VisibleForTesting
    public zzhy f29653a = null;

    /* renamed from: b */
    @GuardedBy("listenerMap")
    public final Map<Integer, zzjl> f29654b = new ArrayMap();

    /* renamed from: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService$a */
    /* loaded from: classes5.dex */
    public class C5111a implements zzjm {

        /* renamed from: a */
        public com.google.android.gms.internal.measurement.zzdp f29655a;

        public C5111a(com.google.android.gms.internal.measurement.zzdp zzdpVar) {
            this.f29655a = zzdpVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzjm
        public final void interceptEvent(String str, String str2, Bundle bundle, long j) {
            try {
                this.f29655a.zza(str, str2, bundle, j);
            } catch (RemoteException e) {
                zzhy zzhyVar = AppMeasurementDynamiteService.this.f29653a;
                if (zzhyVar != null) {
                    zzhyVar.zzj().zzu().zza("Event interceptor threw exception", e);
                }
            }
        }
    }

    /* renamed from: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService$b */
    /* loaded from: classes5.dex */
    public class C5112b implements zzjl {

        /* renamed from: a */
        public com.google.android.gms.internal.measurement.zzdp f29657a;

        public C5112b(com.google.android.gms.internal.measurement.zzdp zzdpVar) {
            this.f29657a = zzdpVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzjl
        public final void onEvent(String str, String str2, Bundle bundle, long j) {
            try {
                this.f29657a.zza(str, str2, bundle, j);
            } catch (RemoteException e) {
                zzhy zzhyVar = AppMeasurementDynamiteService.this.f29653a;
                if (zzhyVar != null) {
                    zzhyVar.zzj().zzu().zza("Event listener threw exception", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void beginAdUnitExposure(@NonNull String str, long j) throws RemoteException {
        m22266e();
        this.f29653a.zze().zza(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void clearConditionalUserProperty(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) throws RemoteException {
        m22266e();
        this.f29653a.zzp().zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void clearMeasurementEnabled(long j) throws RemoteException {
        m22266e();
        this.f29653a.zzp().zza((Boolean) null);
    }

    @EnsuresNonNull({"scion"})
    /* renamed from: e */
    public final void m22266e() {
        if (this.f29653a == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void endAdUnitExposure(@NonNull String str, long j) throws RemoteException {
        m22266e();
        this.f29653a.zze().zzb(str, j);
    }

    /* renamed from: f */
    public final void m22267f(com.google.android.gms.internal.measurement.zzdo zzdoVar, String str) {
        m22266e();
        this.f29653a.zzt().zza(zzdoVar, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void generateEventId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        m22266e();
        long zzn = this.f29653a.zzt().zzn();
        m22266e();
        this.f29653a.zzt().zza(zzdoVar, zzn);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getAppInstanceId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        m22266e();
        this.f29653a.zzl().zzb(new tlp(this, zzdoVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getCachedAppInstanceId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        m22266e();
        m22267f(zzdoVar, this.f29653a.zzp().zzag());
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getConditionalUserProperties(String str, String str2, com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        m22266e();
        this.f29653a.zzl().zzb(new gop(this, zzdoVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getCurrentScreenClass(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        m22266e();
        m22267f(zzdoVar, this.f29653a.zzp().zzah());
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getCurrentScreenName(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        m22266e();
        m22267f(zzdoVar, this.f29653a.zzp().zzai());
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getGmpAppId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        m22266e();
        m22267f(zzdoVar, this.f29653a.zzp().zzaj());
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getMaxUserProperties(String str, com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        m22266e();
        this.f29653a.zzp();
        zzjq.zza(str);
        m22266e();
        this.f29653a.zzt().zza(zzdoVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getSessionId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        m22266e();
        this.f29653a.zzp().zza(zzdoVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getTestFlag(com.google.android.gms.internal.measurement.zzdo zzdoVar, int i) throws RemoteException {
        m22266e();
        if (i == 0) {
            this.f29653a.zzt().zza(zzdoVar, this.f29653a.zzp().zzak());
            return;
        }
        if (i == 1) {
            this.f29653a.zzt().zza(zzdoVar, this.f29653a.zzp().zzaf().longValue());
            return;
        }
        if (i != 2) {
            if (i == 3) {
                this.f29653a.zzt().zza(zzdoVar, this.f29653a.zzp().zzae().intValue());
                return;
            } else {
                if (i != 4) {
                    return;
                }
                this.f29653a.zzt().zza(zzdoVar, this.f29653a.zzp().zzac().booleanValue());
                return;
            }
        }
        zzos zzt = this.f29653a.zzt();
        double doubleValue = this.f29653a.zzp().zzad().doubleValue();
        Bundle bundle = new Bundle();
        bundle.putDouble("r", doubleValue);
        try {
            zzdoVar.zza(bundle);
        } catch (RemoteException e) {
            zzt.zzu.zzj().zzu().zza("Error returning double value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getUserProperties(String str, String str2, boolean z, com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        m22266e();
        this.f29653a.zzl().zzb(new vmp(this, zzdoVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void initForTests(@NonNull Map map) throws RemoteException {
        m22266e();
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void initialize(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzdw zzdwVar, long j) throws RemoteException {
        zzhy zzhyVar = this.f29653a;
        if (zzhyVar == null) {
            this.f29653a = zzhy.zza((Context) Preconditions.checkNotNull((Context) ObjectWrapper.unwrap(iObjectWrapper)), zzdwVar, Long.valueOf(j));
        } else {
            zzhyVar.zzj().zzu().zza("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void isDataCollectionEnabled(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        m22266e();
        this.f29653a.zzl().zzb(new bqp(this, zzdoVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void logEvent(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        m22266e();
        this.f29653a.zzp().zza(str, str2, bundle, z, z2, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void logEventAndBundle(String str, String str2, Bundle bundle, com.google.android.gms.internal.measurement.zzdo zzdoVar, long j) throws RemoteException {
        m22266e();
        Preconditions.checkNotEmpty(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.f29653a.zzl().zzb(new gnp(this, zzdoVar, new zzbf(str2, new zzbe(bundle), "app", j), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void logHealthData(int i, @NonNull String str, @NonNull IObjectWrapper iObjectWrapper, @NonNull IObjectWrapper iObjectWrapper2, @NonNull IObjectWrapper iObjectWrapper3) throws RemoteException {
        m22266e();
        this.f29653a.zzj().zza(i, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2), iObjectWrapper3 != null ? ObjectWrapper.unwrap(iObjectWrapper3) : null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityCreated(@NonNull IObjectWrapper iObjectWrapper, @NonNull Bundle bundle, long j) throws RemoteException {
        m22266e();
        Application.ActivityLifecycleCallbacks zzaa = this.f29653a.zzp().zzaa();
        if (zzaa != null) {
            this.f29653a.zzp().zzao();
            zzaa.onActivityCreated((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityDestroyed(@NonNull IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        m22266e();
        Application.ActivityLifecycleCallbacks zzaa = this.f29653a.zzp().zzaa();
        if (zzaa != null) {
            this.f29653a.zzp().zzao();
            zzaa.onActivityDestroyed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityPaused(@NonNull IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        m22266e();
        Application.ActivityLifecycleCallbacks zzaa = this.f29653a.zzp().zzaa();
        if (zzaa != null) {
            this.f29653a.zzp().zzao();
            zzaa.onActivityPaused((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityResumed(@NonNull IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        m22266e();
        Application.ActivityLifecycleCallbacks zzaa = this.f29653a.zzp().zzaa();
        if (zzaa != null) {
            this.f29653a.zzp().zzao();
            zzaa.onActivityResumed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzdo zzdoVar, long j) throws RemoteException {
        m22266e();
        Application.ActivityLifecycleCallbacks zzaa = this.f29653a.zzp().zzaa();
        Bundle bundle = new Bundle();
        if (zzaa != null) {
            this.f29653a.zzp().zzao();
            zzaa.onActivitySaveInstanceState((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
        try {
            zzdoVar.zza(bundle);
        } catch (RemoteException e) {
            this.f29653a.zzj().zzu().zza("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityStarted(@NonNull IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        m22266e();
        Application.ActivityLifecycleCallbacks zzaa = this.f29653a.zzp().zzaa();
        if (zzaa != null) {
            this.f29653a.zzp().zzao();
            zzaa.onActivityStarted((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityStopped(@NonNull IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        m22266e();
        Application.ActivityLifecycleCallbacks zzaa = this.f29653a.zzp().zzaa();
        if (zzaa != null) {
            this.f29653a.zzp().zzao();
            zzaa.onActivityStopped((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void performAction(Bundle bundle, com.google.android.gms.internal.measurement.zzdo zzdoVar, long j) throws RemoteException {
        m22266e();
        zzdoVar.zza(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzdp zzdpVar) throws RemoteException {
        zzjl zzjlVar;
        m22266e();
        synchronized (this.f29654b) {
            zzjlVar = this.f29654b.get(Integer.valueOf(zzdpVar.zza()));
            if (zzjlVar == null) {
                zzjlVar = new C5112b(zzdpVar);
                this.f29654b.put(Integer.valueOf(zzdpVar.zza()), zzjlVar);
            }
        }
        this.f29653a.zzp().zza(zzjlVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void resetAnalyticsData(long j) throws RemoteException {
        m22266e();
        this.f29653a.zzp().zza(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setConditionalUserProperty(@NonNull Bundle bundle, long j) throws RemoteException {
        m22266e();
        if (bundle == null) {
            this.f29653a.zzj().zzg().zza("Conditional user property must not be null");
        } else {
            this.f29653a.zzp().zzb(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setConsent(@NonNull Bundle bundle, long j) throws RemoteException {
        m22266e();
        this.f29653a.zzp().zzc(bundle, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setConsentThirdParty(@NonNull Bundle bundle, long j) throws RemoteException {
        m22266e();
        this.f29653a.zzp().zzd(bundle, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setCurrentScreen(@NonNull IObjectWrapper iObjectWrapper, @NonNull String str, @NonNull String str2, long j) throws RemoteException {
        m22266e();
        this.f29653a.zzq().zza((Activity) ObjectWrapper.unwrap(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setDataCollectionEnabled(boolean z) throws RemoteException {
        m22266e();
        this.f29653a.zzp().zzc(z);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setDefaultEventParameters(@NonNull Bundle bundle) {
        m22266e();
        this.f29653a.zzp().zzc(bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setEventInterceptor(com.google.android.gms.internal.measurement.zzdp zzdpVar) throws RemoteException {
        m22266e();
        C5111a c5111a = new C5111a(zzdpVar);
        if (this.f29653a.zzl().zzg()) {
            this.f29653a.zzp().zza(c5111a);
        } else {
            this.f29653a.zzl().zzb(new RunnableC5125m(this, c5111a));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setInstanceIdProvider(com.google.android.gms.internal.measurement.zzdu zzduVar) throws RemoteException {
        m22266e();
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        m22266e();
        this.f29653a.zzp().zza(Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setMinimumSessionDuration(long j) throws RemoteException {
        m22266e();
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setSessionTimeoutDuration(long j) throws RemoteException {
        m22266e();
        this.f29653a.zzp().zzc(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setSgtmDebugInfo(@NonNull Intent intent) throws RemoteException {
        m22266e();
        this.f29653a.zzp().zza(intent);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setUserId(@NonNull String str, long j) throws RemoteException {
        m22266e();
        this.f29653a.zzp().zza(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setUserProperty(@NonNull String str, @NonNull String str2, @NonNull IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException {
        m22266e();
        this.f29653a.zzp().zza(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzdp zzdpVar) throws RemoteException {
        zzjl remove;
        m22266e();
        synchronized (this.f29654b) {
            remove = this.f29654b.remove(Integer.valueOf(zzdpVar.zza()));
        }
        if (remove == null) {
            remove = new C5112b(zzdpVar);
        }
        this.f29653a.zzp().zzb(remove);
    }
}
