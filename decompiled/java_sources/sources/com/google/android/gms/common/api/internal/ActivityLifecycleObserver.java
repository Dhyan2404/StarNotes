package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.sunia.HTREnginev2.a9p;

@KeepForSdk
/* loaded from: classes5.dex */
public abstract class ActivityLifecycleObserver {
    @NonNull
    @KeepForSdk
    /* renamed from: of */
    public static final ActivityLifecycleObserver m21971of(@NonNull Activity activity) {
        return new zab(a9p.m52983a(activity));
    }

    @NonNull
    @KeepForSdk
    public abstract ActivityLifecycleObserver onStopCallOnce(@NonNull Runnable runnable);
}
