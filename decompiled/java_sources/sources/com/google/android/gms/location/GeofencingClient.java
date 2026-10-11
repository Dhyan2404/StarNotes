package com.google.android.gms.location;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.List;

/* loaded from: classes5.dex */
public class GeofencingClient extends GoogleApi<Api.ApiOptions.NoOptions> {
    public static final /* synthetic */ int zza = 0;

    public GeofencingClient(@NonNull Activity activity) {
        super(activity, LocationServices.API, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @NonNull
    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public Task<Void> addGeofences(@NonNull GeofencingRequest geofencingRequest, @NonNull final PendingIntent pendingIntent) {
        final GeofencingRequest zza2 = geofencingRequest.zza(getContextAttributionTag());
        return doWrite(TaskApiCall.builder().run(new RemoteCall(zza2, pendingIntent) { // from class: com.sunia.HTREnginev2.rgp

            /* renamed from: a */
            public final GeofencingRequest f83083a;

            /* renamed from: b */
            public final PendingIntent f83084b;

            {
                this.f83083a = zza2;
                this.f83084b = pendingIntent;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzaz) obj).zzv(this.f83083a, this.f83084b, new xgp((TaskCompletionSource) obj2));
            }
        }).setMethodKey(2424).build());
    }

    @NonNull
    public Task<Void> removeGeofences(@NonNull final PendingIntent pendingIntent) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall(pendingIntent) { // from class: com.sunia.HTREnginev2.tgp

            /* renamed from: a */
            public final PendingIntent f85300a;

            {
                this.f85300a = pendingIntent;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzaz) obj).zzx(this.f85300a, new xgp((TaskCompletionSource) obj2));
            }
        }).setMethodKey(2425).build());
    }

    public GeofencingClient(@NonNull Context context) {
        super(context, LocationServices.API, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @NonNull
    public Task<Void> removeGeofences(@NonNull final List<String> list) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall(list) { // from class: com.sunia.HTREnginev2.ugp

            /* renamed from: a */
            public final List f86476a;

            {
                this.f86476a = list;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzaz) obj).zzy(this.f86476a, new xgp((TaskCompletionSource) obj2));
            }
        }).setMethodKey(2425).build());
    }
}
