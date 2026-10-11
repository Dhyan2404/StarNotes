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
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.location.zzam;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.location.ActivityRecognitionClient;
import com.google.android.gms.location.ActivityTransitionRequest;
import com.google.android.gms.location.SleepSegmentRequest;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public class ActivityRecognitionClient extends GoogleApi<Api.ApiOptions.NoOptions> {
    public static final /* synthetic */ int zza = 0;

    public ActivityRecognitionClient(@NonNull Activity activity) {
        super(activity, LocationServices.API, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @NonNull
    @RequiresPermission("com.google.android.gms.permission.ACTIVITY_RECOGNITION")
    public Task<Void> removeActivityTransitionUpdates(@NonNull final PendingIntent pendingIntent) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall(pendingIntent) { // from class: com.sunia.HTREnginev2.nkp

            /* renamed from: a */
            public final PendingIntent f78744a;

            {
                this.f78744a = pendingIntent;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzaz) obj).zzs(this.f78744a, new ump((TaskCompletionSource) obj2));
            }
        }).setMethodKey(2406).build());
    }

    @NonNull
    @RequiresPermission("com.google.android.gms.permission.ACTIVITY_RECOGNITION")
    public Task<Void> removeActivityUpdates(@NonNull final PendingIntent pendingIntent) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall(pendingIntent) { // from class: com.sunia.HTREnginev2.wjp

            /* renamed from: a */
            public final PendingIntent f88690a;

            {
                this.f88690a = pendingIntent;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzaz) obj).zzt(this.f88690a);
                ((TaskCompletionSource) obj2).setResult(null);
            }
        }).setMethodKey(2402).build());
    }

    @NonNull
    public Task<Void> removeSleepSegmentUpdates(@NonNull final PendingIntent pendingIntent) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall(pendingIntent) { // from class: com.sunia.HTREnginev2.dlp

            /* renamed from: a */
            public final PendingIntent f67994a;

            {
                this.f67994a = pendingIntent;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzaz) obj).zzu(this.f67994a, new ump((TaskCompletionSource) obj2));
            }
        }).setMethodKey(2411).build());
    }

    @NonNull
    @RequiresPermission("com.google.android.gms.permission.ACTIVITY_RECOGNITION")
    public Task<Void> requestActivityTransitionUpdates(@NonNull final ActivityTransitionRequest activityTransitionRequest, @NonNull final PendingIntent pendingIntent) {
        activityTransitionRequest.zza(getContextAttributionTag());
        return doWrite(TaskApiCall.builder().run(new RemoteCall(activityTransitionRequest, pendingIntent) { // from class: com.sunia.HTREnginev2.fkp

            /* renamed from: a */
            public final ActivityTransitionRequest f70101a;

            /* renamed from: b */
            public final PendingIntent f70102b;

            {
                this.f70101a = activityTransitionRequest;
                this.f70102b = pendingIntent;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzaz) obj).zzr(this.f70101a, this.f70102b, new ump((TaskCompletionSource) obj2));
            }
        }).setMethodKey(2405).build());
    }

    @NonNull
    @RequiresPermission("com.google.android.gms.permission.ACTIVITY_RECOGNITION")
    public Task<Void> requestActivityUpdates(final long j, @NonNull final PendingIntent pendingIntent) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall(j, pendingIntent) { // from class: com.sunia.HTREnginev2.bjp

            /* renamed from: a */
            public final long f65826a;

            /* renamed from: b */
            public final PendingIntent f65827b;

            {
                this.f65826a = j;
                this.f65827b = pendingIntent;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzaz) obj).zzq(this.f65826a, this.f65827b);
                ((TaskCompletionSource) obj2).setResult(null);
            }
        }).setMethodKey(2401).build());
    }

    @NonNull
    @RequiresPermission("com.google.android.gms.permission.ACTIVITY_RECOGNITION")
    public Task<Void> requestSleepSegmentUpdates(@NonNull final PendingIntent pendingIntent, @NonNull final SleepSegmentRequest sleepSegmentRequest) {
        Preconditions.checkNotNull(pendingIntent, "PendingIntent must be specified.");
        return doRead(TaskApiCall.builder().run(new RemoteCall(this, pendingIntent, sleepSegmentRequest) { // from class: com.sunia.HTREnginev2.njp

            /* renamed from: a */
            public final ActivityRecognitionClient f78718a;

            /* renamed from: b */
            public final PendingIntent f78719b;

            /* renamed from: c */
            public final SleepSegmentRequest f78720c;

            {
                this.f78718a = this;
                this.f78719b = pendingIntent;
                this.f78720c = sleepSegmentRequest;
            }

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ActivityRecognitionClient activityRecognitionClient = this.f78718a;
                ((zzam) ((zzaz) obj).getService()).zzv(this.f78719b, this.f78720c, new slp(activityRecognitionClient, (TaskCompletionSource) obj2));
            }
        }).setFeatures(zzu.zzb).setMethodKey(2410).build());
    }

    public ActivityRecognitionClient(@NonNull Context context) {
        super(context, LocationServices.API, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }
}
