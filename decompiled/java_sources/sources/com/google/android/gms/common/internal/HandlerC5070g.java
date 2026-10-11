package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* renamed from: com.google.android.gms.common.internal.g */
/* loaded from: classes5.dex */
public final class HandlerC5070g extends com.google.android.gms.internal.common.zzi {

    /* renamed from: a */
    public final /* synthetic */ BaseGmsClient f29383a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC5070g(BaseGmsClient baseGmsClient, Looper looper) {
        super(looper);
        this.f29383a = baseGmsClient;
    }

    /* renamed from: a */
    public static final void m22168a(Message message) {
        zzc zzcVar = (zzc) message.obj;
        zzcVar.zzc();
        zzcVar.zzg();
    }

    /* renamed from: b */
    public static final boolean m22169b(Message message) {
        int i = message.what;
        return i == 2 || i == 1 || i == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks;
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks2;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        boolean z;
        if (this.f29383a.zzd.get() != message.arg1) {
            if (m22169b(message)) {
                m22168a(message);
                return;
            }
            return;
        }
        int i = message.what;
        if ((i == 1 || i == 7 || ((i == 4 && !this.f29383a.enableLocalFallback()) || message.what == 5)) && !this.f29383a.isConnecting()) {
            m22168a(message);
            return;
        }
        int i2 = message.what;
        if (i2 == 4) {
            this.f29383a.zzB = new ConnectionResult(message.arg2);
            if (BaseGmsClient.zzo(this.f29383a)) {
                BaseGmsClient baseGmsClient = this.f29383a;
                z = baseGmsClient.zzC;
                if (!z) {
                    baseGmsClient.m22153a(3, null);
                    return;
                }
            }
            BaseGmsClient baseGmsClient2 = this.f29383a;
            connectionResult2 = baseGmsClient2.zzB;
            ConnectionResult connectionResult3 = connectionResult2 != null ? baseGmsClient2.zzB : new ConnectionResult(8);
            this.f29383a.zzc.onReportServiceBinding(connectionResult3);
            this.f29383a.onConnectionFailed(connectionResult3);
            return;
        }
        if (i2 == 5) {
            BaseGmsClient baseGmsClient3 = this.f29383a;
            connectionResult = baseGmsClient3.zzB;
            ConnectionResult connectionResult4 = connectionResult != null ? baseGmsClient3.zzB : new ConnectionResult(8);
            this.f29383a.zzc.onReportServiceBinding(connectionResult4);
            this.f29383a.onConnectionFailed(connectionResult4);
            return;
        }
        if (i2 == 3) {
            Object obj = message.obj;
            ConnectionResult connectionResult5 = new ConnectionResult(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null);
            this.f29383a.zzc.onReportServiceBinding(connectionResult5);
            this.f29383a.onConnectionFailed(connectionResult5);
            return;
        }
        if (i2 == 6) {
            this.f29383a.m22153a(5, null);
            BaseGmsClient baseGmsClient4 = this.f29383a;
            baseConnectionCallbacks = baseGmsClient4.zzw;
            if (baseConnectionCallbacks != null) {
                baseConnectionCallbacks2 = baseGmsClient4.zzw;
                baseConnectionCallbacks2.onConnectionSuspended(message.arg2);
            }
            this.f29383a.onConnectionSuspended(message.arg2);
            BaseGmsClient.zzn(this.f29383a, 5, 1, null);
            return;
        }
        if (i2 == 2 && !this.f29383a.isConnected()) {
            m22168a(message);
            return;
        }
        if (m22169b(message)) {
            ((zzc) message.obj).zze();
            return;
        }
        Log.wtf("GmsClient", "Don't know how to handle message: " + message.what, new Exception());
    }
}
