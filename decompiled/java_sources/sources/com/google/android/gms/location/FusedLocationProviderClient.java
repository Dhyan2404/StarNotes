package com.google.android.gms.location;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.internal.location.zzba;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnTokenCanceledListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.sunia.HTREnginev2.fgp;
import com.sunia.HTREnginev2.ggp;
import com.sunia.HTREnginev2.jgp;
import com.sunia.HTREnginev2.lgp;
import com.sunia.HTREnginev2.mgp;
import com.sunia.HTREnginev2.pgp;
import com.sunia.HTREnginev2.sfp;
import com.sunia.HTREnginev2.wrp;

/* loaded from: classes5.dex */
public class FusedLocationProviderClient extends GoogleApi<Api.ApiOptions.NoOptions> {

    @NonNull
    public static final String KEY_MOCK_LOCATION = "mockLocation";

    @NonNull
    public static final String KEY_VERTICAL_ACCURACY = "verticalAccuracy";

    @VisibleForTesting(otherwise = 3)
    public FusedLocationProviderClient(@NonNull Activity activity) {
        super(activity, LocationServices.API, Api.ApiOptions.NO_OPTIONS, (StatusExceptionMapper) new ApiExceptionMapper());
    }

    /* renamed from: c */
    public final /* synthetic */ void m22251c(com.google.android.gms.internal.location.zzba zzbaVar, PendingIntent pendingIntent, com.google.android.gms.internal.location.zzaz zzazVar, TaskCompletionSource taskCompletionSource) throws RemoteException {
        mgp mgpVar = new mgp(taskCompletionSource);
        zzbaVar.zzc(getContextAttributionTag());
        zzazVar.zzD(zzbaVar, pendingIntent, mgpVar);
    }

    /* renamed from: d */
    public final /* synthetic */ void m22252d(final pgp pgpVar, final LocationCallback locationCallback, final lgp lgpVar, com.google.android.gms.internal.location.zzba zzbaVar, ListenerHolder listenerHolder, com.google.android.gms.internal.location.zzaz zzazVar, TaskCompletionSource taskCompletionSource) throws RemoteException {
        jgp jgpVar = new jgp(taskCompletionSource, new lgp(this, pgpVar, locationCallback, lgpVar) { // from class: com.sunia.HTREnginev2.xrp

            /* renamed from: a */
            public final FusedLocationProviderClient f90002a;

            /* renamed from: b */
            public final pgp f90003b;

            /* renamed from: c */
            public final LocationCallback f90004c;

            /* renamed from: d */
            public final lgp f90005d;

            {
                this.f90002a = this;
                this.f90003b = pgpVar;
                this.f90004c = locationCallback;
                this.f90005d = lgpVar;
            }

            @Override // com.sunia.HTREnginev2.lgp
            public final void zza() {
                FusedLocationProviderClient fusedLocationProviderClient = this.f90002a;
                pgp pgpVar2 = this.f90003b;
                LocationCallback locationCallback2 = this.f90004c;
                lgp lgpVar2 = this.f90005d;
                pgpVar2.m56260b(false);
                fusedLocationProviderClient.removeLocationUpdates(locationCallback2);
                if (lgpVar2 != null) {
                    lgpVar2.zza();
                }
            }
        });
        zzbaVar.zzc(getContextAttributionTag());
        zzazVar.zzB(zzbaVar, listenerHolder, jgpVar);
    }

    /* renamed from: e */
    public final /* synthetic */ void m22253e(CancellationToken cancellationToken, com.google.android.gms.internal.location.zzba zzbaVar, com.google.android.gms.internal.location.zzaz zzazVar, final TaskCompletionSource taskCompletionSource) throws RemoteException {
        final fgp fgpVar = new fgp(this, taskCompletionSource);
        if (cancellationToken != null) {
            cancellationToken.onCanceledRequested(new OnTokenCanceledListener(this, fgpVar) { // from class: com.sunia.HTREnginev2.csp

                /* renamed from: a */
                public final FusedLocationProviderClient f67146a;

                /* renamed from: b */
                public final LocationCallback f67147b;

                {
                    this.f67146a = this;
                    this.f67147b = fgpVar;
                }

                @Override // com.google.android.gms.tasks.OnTokenCanceledListener
                public final void onCanceled() {
                    this.f67146a.removeLocationUpdates(this.f67147b);
                }
            });
        }
        m22255g(zzbaVar, fgpVar, Looper.getMainLooper(), new lgp(taskCompletionSource) { // from class: com.sunia.HTREnginev2.vsp

            /* renamed from: a */
            public final TaskCompletionSource f87897a;

            {
                this.f87897a = taskCompletionSource;
            }

            @Override // com.sunia.HTREnginev2.lgp
            public final void zza() {
                this.f87897a.trySetResult(null);
            }
        }, 2437).continueWithTask(new Continuation(taskCompletionSource) { // from class: com.sunia.HTREnginev2.mfp

            /* renamed from: a */
            public final TaskCompletionSource f77553a;

            {
                this.f77553a = taskCompletionSource;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                TaskCompletionSource taskCompletionSource2 = this.f77553a;
                if (!task.isSuccessful()) {
                    if (task.getException() != null) {
                        Exception exception = task.getException();
                        if (exception != null) {
                            taskCompletionSource2.setException(exception);
                        }
                    } else {
                        taskCompletionSource2.trySetResult(null);
                    }
                }
                return taskCompletionSource2.getTask();
            }
        });
    }

    /* renamed from: f */
    public final /* synthetic */ void m22254f(com.google.android.gms.internal.location.zzaz zzazVar, TaskCompletionSource taskCompletionSource) throws RemoteException {
        taskCompletionSource.setResult(zzazVar.zzz(getContextAttributionTag()));
    }

    @NonNull
    public Task<Void> flushLocations() {
        return doWrite(TaskApiCall.builder().run(wrp.f88933a).setMethodKey(2422).build());
    }

    /* renamed from: g */
    public final Task<Void> m22255g(final com.google.android.gms.internal.location.zzba zzbaVar, final LocationCallback locationCallback, Looper looper, final lgp lgpVar, int i) {
        final ListenerHolder createListenerHolder = ListenerHolders.createListenerHolder(locationCallback, com.google.android.gms.internal.location.zzbj.zza(looper), LocationCallback.class.getSimpleName());
        final ggp ggpVar = new ggp(this, createListenerHolder);
        return doRegisterEventListener(RegistrationMethods.builder().register(new RemoteCall(this, ggpVar, locationCallback, lgpVar, zzbaVar, createListenerHolder) { // from class: com.sunia.HTREnginev2.ufp

            /* renamed from: a */
            public final FusedLocationProviderClient f86445a;

            /* renamed from: b */
            public final pgp f86446b;

            /* renamed from: c */
            public final LocationCallback f86447c;

            /* renamed from: d */
            public final lgp f86448d;

            /* renamed from: e */
            public final zzba f86449e;

            /* renamed from: f */
            public final ListenerHolder f86450f;

            {
                this.f86445a = this;
                this.f86446b = ggpVar;
                this.f86447c = locationCallback;
                this.f86448d = lgpVar;
                this.f86449e = zzbaVar;
                this.f86450f = createListenerHolder;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                this.f86445a.m22252d(this.f86446b, this.f86447c, this.f86448d, this.f86449e, this.f86450f, (zzaz) obj, (TaskCompletionSource) obj2);
            }
        }).unregister(ggpVar).withHolder(createListenerHolder).setMethodKey(i).build());
    }

    @NonNull
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public Task<Location> getCurrentLocation(int i, @NonNull final CancellationToken cancellationToken) {
        LocationRequest create = LocationRequest.create();
        create.setPriority(i);
        create.setInterval(0L);
        create.setFastestInterval(0L);
        create.setExpirationDuration(30000L);
        final com.google.android.gms.internal.location.zzba zza = com.google.android.gms.internal.location.zzba.zza(null, create);
        zza.zzd(true);
        zza.zzb(10000L);
        Task doRead = doRead(TaskApiCall.builder().run(new RemoteCall(this, cancellationToken, zza) { // from class: com.sunia.HTREnginev2.nfp

            /* renamed from: a */
            public final FusedLocationProviderClient f78607a;

            /* renamed from: b */
            public final CancellationToken f78608b;

            /* renamed from: c */
            public final zzba f78609c;

            {
                this.f78607a = this;
                this.f78608b = cancellationToken;
                this.f78609c = zza;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                this.f78607a.m22253e(this.f78608b, this.f78609c, (zzaz) obj, (TaskCompletionSource) obj2);
            }
        }).setFeatures(zzu.zzd).setMethodKey(2415).build());
        if (cancellationToken == null) {
            return doRead;
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource(cancellationToken);
        doRead.continueWithTask(new Continuation(taskCompletionSource) { // from class: com.sunia.HTREnginev2.qfp

            /* renamed from: a */
            public final TaskCompletionSource f82010a;

            {
                this.f82010a = taskCompletionSource;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                TaskCompletionSource taskCompletionSource2 = this.f82010a;
                if (task.isSuccessful()) {
                    taskCompletionSource2.trySetResult((Location) task.getResult());
                } else {
                    Exception exception = task.getException();
                    if (exception != null) {
                        taskCompletionSource2.setException(exception);
                    }
                }
                return taskCompletionSource2.getTask();
            }
        });
        return taskCompletionSource.getTask();
    }

    @NonNull
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public Task<Location> getLastLocation() {
        return doRead(TaskApiCall.builder().run(new RemoteCall(this) { // from class: com.sunia.HTREnginev2.rrp

            /* renamed from: a */
            public final FusedLocationProviderClient f83417a;

            {
                this.f83417a = this;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                this.f83417a.m22254f((zzaz) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(2414).build());
    }

    @NonNull
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public Task<LocationAvailability> getLocationAvailability() {
        return doRead(TaskApiCall.builder().run(sfp.f84105a).setMethodKey(2416).build());
    }

    @NonNull
    public Task<Void> removeLocationUpdates(@NonNull final PendingIntent pendingIntent) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall(pendingIntent) { // from class: com.sunia.HTREnginev2.xfp

            /* renamed from: a */
            public final PendingIntent f89619a;

            {
                this.f89619a = pendingIntent;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzaz) obj).zzG(this.f89619a, new mgp((TaskCompletionSource) obj2));
            }
        }).setMethodKey(2418).build());
    }

    @NonNull
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public Task<Void> requestLocationUpdates(@NonNull LocationRequest locationRequest, @NonNull final PendingIntent pendingIntent) {
        final com.google.android.gms.internal.location.zzba zza = com.google.android.gms.internal.location.zzba.zza(null, locationRequest);
        return doWrite(TaskApiCall.builder().run(new RemoteCall(this, zza, pendingIntent) { // from class: com.sunia.HTREnginev2.wfp

            /* renamed from: a */
            public final FusedLocationProviderClient f88592a;

            /* renamed from: b */
            public final zzba f88593b;

            /* renamed from: c */
            public final PendingIntent f88594c;

            {
                this.f88592a = this;
                this.f88593b = zza;
                this.f88594c = pendingIntent;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                this.f88592a.m22251c(this.f88593b, this.f88594c, (zzaz) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(2417).build());
    }

    @NonNull
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public Task<Void> setMockLocation(@NonNull final Location location) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall(location) { // from class: com.sunia.HTREnginev2.dgp

            /* renamed from: a */
            public final Location f67856a;

            {
                this.f67856a = location;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzaz) obj).zzJ(this.f67856a);
                ((TaskCompletionSource) obj2).setResult(null);
            }
        }).setMethodKey(2421).build());
    }

    @NonNull
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public Task<Void> setMockMode(final boolean z) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall(z) { // from class: com.sunia.HTREnginev2.agp

            /* renamed from: a */
            public final boolean f64684a;

            {
                this.f64684a = z;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzaz) obj).zzI(this.f64684a);
                ((TaskCompletionSource) obj2).setResult(null);
            }
        }).setMethodKey(2420).build());
    }

    @VisibleForTesting(otherwise = 3)
    public FusedLocationProviderClient(@NonNull Context context) {
        super(context, LocationServices.API, Api.ApiOptions.NO_OPTIONS, new ApiExceptionMapper());
    }

    @NonNull
    public Task<Void> removeLocationUpdates(@NonNull LocationCallback locationCallback) {
        return TaskUtil.toVoidTaskThatFailsOnFalse(doUnregisterEventListener(ListenerHolders.createListenerKey(locationCallback, LocationCallback.class.getSimpleName())));
    }

    @NonNull
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public Task<Void> requestLocationUpdates(@NonNull LocationRequest locationRequest, @NonNull LocationCallback locationCallback, @NonNull Looper looper) {
        return m22255g(com.google.android.gms.internal.location.zzba.zza(null, locationRequest), locationCallback, looper, null, 2436);
    }
}
