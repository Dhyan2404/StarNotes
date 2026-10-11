package com.sunia.HTREnginev2;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.AccountChangeEventsResponse;
import com.google.android.gms.auth.GoogleAuthException;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class wlp implements jnp {

    /* renamed from: a */
    public final /* synthetic */ AccountChangeEventsRequest f88753a;

    public wlp(AccountChangeEventsRequest accountChangeEventsRequest) {
        this.f88753a = accountChangeEventsRequest;
    }

    @Override // com.sunia.HTREnginev2.jnp
    public final /* bridge */ /* synthetic */ Object zza(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        AccountChangeEventsResponse zzh = com.google.android.gms.internal.auth.zze.zzb(iBinder).zzh(this.f88753a);
        com.google.android.gms.auth.zzl.m21907c(zzh);
        return zzh.getEvents();
    }
}
