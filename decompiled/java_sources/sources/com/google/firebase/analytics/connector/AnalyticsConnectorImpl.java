package com.google.firebase.analytics.connector;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdy;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.analytics.connector.internal.zze;
import com.google.firebase.analytics.connector.internal.zzg;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Subscriber;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* loaded from: classes6.dex */
public class AnalyticsConnectorImpl implements AnalyticsConnector {

    /* renamed from: c */
    public static volatile AnalyticsConnector f35560c;

    /* renamed from: a */
    @VisibleForTesting
    public final AppMeasurementSdk f35561a;

    /* renamed from: b */
    @VisibleForTesting
    public final Map<String, com.google.firebase.analytics.connector.internal.zza> f35562b;

    /* renamed from: com.google.firebase.analytics.connector.AnalyticsConnectorImpl$a */
    /* loaded from: classes6.dex */
    public class C6428a implements AnalyticsConnector.AnalyticsConnectorHandle {

        /* renamed from: a */
        public final /* synthetic */ String f35563a;

        /* renamed from: b */
        public final /* synthetic */ AnalyticsConnectorImpl f35564b;

        public C6428a(AnalyticsConnectorImpl analyticsConnectorImpl, String str) {
            this.f35563a = str;
            this.f35564b = analyticsConnectorImpl;
        }

        @Override // com.google.firebase.analytics.connector.AnalyticsConnector.AnalyticsConnectorHandle
        @KeepForSdk
        public void registerEventNames(Set<String> set) {
            if (!this.f35564b.m27929c(this.f35563a) || !this.f35563a.equals(AppMeasurement.FIAM_ORIGIN) || set == null || set.isEmpty()) {
                return;
            }
            this.f35564b.f35562b.get(this.f35563a).zza(set);
        }

        @Override // com.google.firebase.analytics.connector.AnalyticsConnector.AnalyticsConnectorHandle
        public void unregister() {
            if (this.f35564b.m27929c(this.f35563a)) {
                AnalyticsConnector.AnalyticsConnectorListener zza = this.f35564b.f35562b.get(this.f35563a).zza();
                if (zza != null) {
                    zza.onMessageTriggered(0, null);
                }
                this.f35564b.f35562b.remove(this.f35563a);
            }
        }

        @Override // com.google.firebase.analytics.connector.AnalyticsConnector.AnalyticsConnectorHandle
        @KeepForSdk
        public void unregisterEventNames() {
            if (this.f35564b.m27929c(this.f35563a) && this.f35563a.equals(AppMeasurement.FIAM_ORIGIN)) {
                this.f35564b.f35562b.get(this.f35563a).zzb();
            }
        }
    }

    public AnalyticsConnectorImpl(AppMeasurementSdk appMeasurementSdk) {
        Preconditions.checkNotNull(appMeasurementSdk);
        this.f35561a = appMeasurementSdk;
        this.f35562b = new ConcurrentHashMap();
    }

    /* renamed from: a */
    public static /* synthetic */ void m27927a(Event event) {
        boolean z = ((DataCollectionDefaultChange) event.getPayload()).enabled;
        synchronized (AnalyticsConnectorImpl.class) {
            ((AnalyticsConnectorImpl) Preconditions.checkNotNull(f35560c)).f35561a.zza(z);
        }
    }

    @NonNull
    @KeepForSdk
    public static AnalyticsConnector getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    /* renamed from: c */
    public final boolean m27929c(@NonNull String str) {
        return (str.isEmpty() || !this.f35562b.containsKey(str) || this.f35562b.get(str) == null) ? false : true;
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    @KeepForSdk
    public void clearConditionalUserProperty(@NonNull @Size(max = 24, min = 1) String str, @NonNull String str2, @NonNull Bundle bundle) {
        if (str2 == null || com.google.firebase.analytics.connector.internal.zzb.zza(str2, bundle)) {
            this.f35561a.clearConditionalUserProperty(str, str2, bundle);
        }
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    @NonNull
    @KeepForSdk
    @WorkerThread
    public List<AnalyticsConnector.ConditionalUserProperty> getConditionalUserProperties(@NonNull String str, @NonNull @Size(max = 23, min = 1) String str2) {
        ArrayList arrayList = new ArrayList();
        Iterator<Bundle> it2 = this.f35561a.getConditionalUserProperties(str, str2).iterator();
        while (it2.hasNext()) {
            arrayList.add(com.google.firebase.analytics.connector.internal.zzb.zza(it2.next()));
        }
        return arrayList;
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    @KeepForSdk
    @WorkerThread
    public int getMaxUserProperties(@NonNull @Size(min = 1) String str) {
        return this.f35561a.getMaxUserProperties(str);
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    @NonNull
    @KeepForSdk
    @WorkerThread
    public Map<String, Object> getUserProperties(boolean z) {
        return this.f35561a.getUserProperties(null, null, z);
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    @KeepForSdk
    public void logEvent(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (com.google.firebase.analytics.connector.internal.zzb.zzf(str) && com.google.firebase.analytics.connector.internal.zzb.zza(str2, bundle) && com.google.firebase.analytics.connector.internal.zzb.zzb(str, str2, bundle)) {
            com.google.firebase.analytics.connector.internal.zzb.zza(str, str2, bundle);
            this.f35561a.logEvent(str, str2, bundle);
        }
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    @NonNull
    @KeepForSdk
    @WorkerThread
    public AnalyticsConnector.AnalyticsConnectorHandle registerAnalyticsConnectorListener(@NonNull String str, @NonNull AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        Preconditions.checkNotNull(analyticsConnectorListener);
        if (!com.google.firebase.analytics.connector.internal.zzb.zzf(str) || m27929c(str)) {
            return null;
        }
        AppMeasurementSdk appMeasurementSdk = this.f35561a;
        com.google.firebase.analytics.connector.internal.zza zzeVar = AppMeasurement.FIAM_ORIGIN.equals(str) ? new zze(appMeasurementSdk, analyticsConnectorListener) : "clx".equals(str) ? new zzg(appMeasurementSdk, analyticsConnectorListener) : null;
        if (zzeVar == null) {
            return null;
        }
        this.f35562b.put(str, zzeVar);
        return new C6428a(this, str);
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    @KeepForSdk
    public void setConditionalUserProperty(@NonNull AnalyticsConnector.ConditionalUserProperty conditionalUserProperty) {
        if (com.google.firebase.analytics.connector.internal.zzb.zzb(conditionalUserProperty)) {
            this.f35561a.setConditionalUserProperty(com.google.firebase.analytics.connector.internal.zzb.zza(conditionalUserProperty));
        }
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    @KeepForSdk
    public void setUserProperty(@NonNull String str, @NonNull String str2, @NonNull Object obj) {
        if (com.google.firebase.analytics.connector.internal.zzb.zzf(str) && com.google.firebase.analytics.connector.internal.zzb.zza(str, str2)) {
            this.f35561a.setUserProperty(str, str2, obj);
        }
    }

    @NonNull
    @KeepForSdk
    public static AnalyticsConnector getInstance(@NonNull FirebaseApp firebaseApp) {
        return (AnalyticsConnector) firebaseApp.get(AnalyticsConnector.class);
    }

    @NonNull
    @RequiresPermission(allOf = {"android.permission.INTERNET", DefaultConnectivityMonitorFactory.f15198b, "android.permission.WAKE_LOCK"})
    @KeepForSdk
    public static AnalyticsConnector getInstance(@NonNull FirebaseApp firebaseApp, @NonNull Context context, @NonNull Subscriber subscriber) {
        Preconditions.checkNotNull(firebaseApp);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(subscriber);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (f35560c == null) {
            synchronized (AnalyticsConnectorImpl.class) {
                if (f35560c == null) {
                    Bundle bundle = new Bundle(1);
                    if (firebaseApp.isDefaultApp()) {
                        subscriber.subscribe(DataCollectionDefaultChange.class, new Executor() { // from class: com.google.firebase.analytics.connector.zza
                            @Override // java.util.concurrent.Executor
                            public final void execute(Runnable runnable) {
                                runnable.run();
                            }
                        }, new EventHandler() { // from class: com.google.firebase.analytics.connector.zzb
                            @Override // com.google.firebase.events.EventHandler
                            public final void handle(Event event) {
                                AnalyticsConnectorImpl.m27927a(event);
                            }
                        });
                        bundle.putBoolean("dataCollectionDefaultEnabled", firebaseApp.isDataCollectionDefaultEnabled());
                    }
                    f35560c = new AnalyticsConnectorImpl(zzdy.zza(context, (String) null, (String) null, (String) null, bundle).zzb());
                }
            }
        }
        return f35560c;
    }
}
