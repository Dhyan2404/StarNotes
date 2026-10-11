package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import androidx.annotation.VisibleForTesting;

@VisibleForTesting
/* loaded from: classes5.dex */
public final class zze implements ServiceConnection {

    /* renamed from: e */
    public final int f29412e;

    /* renamed from: f */
    public final /* synthetic */ BaseGmsClient f29413f;

    public zze(BaseGmsClient baseGmsClient, int i) {
        this.f29413f = baseGmsClient;
        this.f29412e = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        if (iBinder == null) {
            BaseGmsClient.zzk(this.f29413f, 16);
            return;
        }
        obj = this.f29413f.zzq;
        synchronized (obj) {
            BaseGmsClient baseGmsClient = this.f29413f;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            baseGmsClient.zzr = (queryLocalInterface == null || !(queryLocalInterface instanceof IGmsServiceBroker)) ? new C5069f(iBinder) : (IGmsServiceBroker) queryLocalInterface;
        }
        this.f29413f.zzl(0, null, this.f29412e);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        obj = this.f29413f.zzq;
        synchronized (obj) {
            this.f29413f.zzr = null;
        }
        BaseGmsClient baseGmsClient = this.f29413f;
        int i = this.f29412e;
        Handler handler = baseGmsClient.zzb;
        handler.sendMessage(handler.obtainMessage(6, i, 1));
    }
}
