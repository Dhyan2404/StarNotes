package com.sunia.HTREnginev2;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public final class ggp extends pgp {

    /* renamed from: b */
    public final /* synthetic */ ListenerHolder f71024b;

    /* renamed from: c */
    public final /* synthetic */ FusedLocationProviderClient f71025c;

    public ggp(FusedLocationProviderClient fusedLocationProviderClient, ListenerHolder listenerHolder) {
        this.f71025c = fusedLocationProviderClient;
        this.f71024b = listenerHolder;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final /* bridge */ /* synthetic */ void accept(zzaz zzazVar, TaskCompletionSource<Boolean> taskCompletionSource) throws RemoteException {
        zzaz zzazVar2 = zzazVar;
        TaskCompletionSource<Boolean> taskCompletionSource2 = taskCompletionSource;
        if (m56259a()) {
            igp igpVar = new igp(this.f71025c, taskCompletionSource2);
            try {
                ListenerHolder.ListenerKey<LocationCallback> listenerKey = this.f71024b.getListenerKey();
                if (listenerKey != null) {
                    zzazVar2.zzH(listenerKey, igpVar);
                }
            } catch (RuntimeException e) {
                taskCompletionSource2.trySetException(e);
            }
        }
    }
}
