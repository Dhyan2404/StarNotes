package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.sunia.HTREnginev2.qpp;
import com.sunia.HTREnginev2.rpp;
import com.sunia.HTREnginev2.spp;
import com.sunia.HTREnginev2.tpp;
import com.sunia.HTREnginev2.upp;

/* loaded from: classes5.dex */
public final class zzmq implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: e */
    public volatile boolean f29964e;

    /* renamed from: f */
    public volatile zzgj f29965f;

    /* renamed from: g */
    public final /* synthetic */ zzls f29966g;

    public zzmq(zzls zzlsVar) {
        this.f29966g = zzlsVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    @MainThread
    public final void onConnected(Bundle bundle) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                Preconditions.checkNotNull(this.f29965f);
                this.f29966g.zzl().zzb(new rpp(this, this.f29965f.getService()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f29965f = null;
                this.f29964e = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    @MainThread
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionFailed");
        zzgo zzm = this.f29966g.zzu.zzm();
        if (zzm != null) {
            zzm.zzu().zza("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f29964e = false;
            this.f29965f = null;
        }
        this.f29966g.zzl().zzb(new tpp(this));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    @MainThread
    public final void onConnectionSuspended(int i) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionSuspended");
        this.f29966g.zzj().zzc().zza("Service connection suspended");
        this.f29966g.zzl().zzb(new upp(this));
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzmq zzmqVar;
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f29964e = false;
                this.f29966g.zzj().zzg().zza("Service connected with null binder");
                return;
            }
            zzgb zzgbVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    zzgbVar = queryLocalInterface instanceof zzgb ? (zzgb) queryLocalInterface : new zzgd(iBinder);
                    this.f29966g.zzj().zzp().zza("Bound to IMeasurementService interface");
                } else {
                    this.f29966g.zzj().zzg().zza("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.f29966g.zzj().zzg().zza("Service connect failed to get IMeasurementService");
            }
            if (zzgbVar == null) {
                this.f29964e = false;
                try {
                    ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
                    Context zza = this.f29966g.zza();
                    zzmqVar = this.f29966g.f29956b;
                    connectionTracker.unbindService(zza, zzmqVar);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.f29966g.zzl().zzb(new qpp(this, zzgbVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceDisconnected");
        this.f29966g.zzj().zzc().zza("Service disconnected");
        this.f29966g.zzl().zzb(new spp(this, componentName));
    }

    @WorkerThread
    public final void zza(Intent intent) {
        zzmq zzmqVar;
        this.f29966g.zzt();
        Context zza = this.f29966g.zza();
        ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
        synchronized (this) {
            if (this.f29964e) {
                this.f29966g.zzj().zzp().zza("Connection attempt already in progress");
                return;
            }
            this.f29966g.zzj().zzp().zza("Using local app measurement service");
            this.f29964e = true;
            zzmqVar = this.f29966g.f29956b;
            connectionTracker.bindService(zza, intent, zzmqVar, 129);
        }
    }

    @WorkerThread
    public final void zzb() {
        if (this.f29965f != null && (this.f29965f.isConnected() || this.f29965f.isConnecting())) {
            this.f29965f.disconnect();
        }
        this.f29965f = null;
    }

    @WorkerThread
    public final void zza() {
        this.f29966g.zzt();
        Context zza = this.f29966g.zza();
        synchronized (this) {
            if (this.f29964e) {
                this.f29966g.zzj().zzp().zza("Connection attempt already in progress");
                return;
            }
            if (this.f29965f != null && (this.f29965f.isConnecting() || this.f29965f.isConnected())) {
                this.f29966g.zzj().zzp().zza("Already awaiting connection attempt");
                return;
            }
            this.f29965f = new zzgj(zza, Looper.getMainLooper(), this, this);
            this.f29966g.zzj().zzp().zza("Connecting to remote service");
            this.f29964e = true;
            Preconditions.checkNotNull(this.f29965f);
            this.f29965f.checkAvailabilityAndConnect();
        }
    }
}
