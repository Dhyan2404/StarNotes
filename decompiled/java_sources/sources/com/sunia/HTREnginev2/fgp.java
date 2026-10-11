package com.sunia.HTREnginev2;

import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public final class fgp extends LocationCallback {

    /* renamed from: a */
    public final /* synthetic */ TaskCompletionSource f69993a;

    /* renamed from: b */
    public final /* synthetic */ FusedLocationProviderClient f69994b;

    public fgp(FusedLocationProviderClient fusedLocationProviderClient, TaskCompletionSource taskCompletionSource) {
        this.f69994b = fusedLocationProviderClient;
        this.f69993a = taskCompletionSource;
    }

    @Override // com.google.android.gms.location.LocationCallback
    public final void onLocationAvailability(LocationAvailability locationAvailability) {
    }

    @Override // com.google.android.gms.location.LocationCallback
    public final void onLocationResult(LocationResult locationResult) {
        this.f69993a.trySetResult(locationResult.getLastLocation());
        this.f69994b.removeLocationUpdates(this);
    }
}
