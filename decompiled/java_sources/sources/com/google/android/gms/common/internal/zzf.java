package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.sunia.HTREnginev2.ffp;

/* loaded from: classes5.dex */
public final class zzf extends ffp {

    /* renamed from: e */
    public final /* synthetic */ BaseGmsClient f29414e;

    @Nullable
    public final IBinder zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public zzf(BaseGmsClient baseGmsClient, @Nullable int i, @Nullable IBinder iBinder, Bundle bundle) {
        super(baseGmsClient, i, bundle);
        this.f29414e = baseGmsClient;
        this.zze = iBinder;
    }

    @Override // com.sunia.HTREnginev2.ffp
    public final void zzb(ConnectionResult connectionResult) {
        if (this.f29414e.zzx != null) {
            this.f29414e.zzx.onConnectionFailed(connectionResult);
        }
        this.f29414e.onConnectionFailed(connectionResult);
    }

    @Override // com.sunia.HTREnginev2.ffp
    public final boolean zzd() {
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks;
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks2;
        try {
            IBinder iBinder = this.zze;
            Preconditions.checkNotNull(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if (!this.f29414e.getServiceDescriptor().equals(interfaceDescriptor)) {
                Log.w("GmsClient", "service descriptor mismatch: " + this.f29414e.getServiceDescriptor() + " vs. " + interfaceDescriptor);
                return false;
            }
            IInterface createServiceInterface = this.f29414e.createServiceInterface(this.zze);
            if (createServiceInterface == null || !(BaseGmsClient.zzn(this.f29414e, 2, 4, createServiceInterface) || BaseGmsClient.zzn(this.f29414e, 3, 4, createServiceInterface))) {
                return false;
            }
            this.f29414e.zzB = null;
            BaseGmsClient baseGmsClient = this.f29414e;
            Bundle connectionHint = baseGmsClient.getConnectionHint();
            baseConnectionCallbacks = baseGmsClient.zzw;
            if (baseConnectionCallbacks == null) {
                return true;
            }
            baseConnectionCallbacks2 = this.f29414e.zzw;
            baseConnectionCallbacks2.onConnected(connectionHint);
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
