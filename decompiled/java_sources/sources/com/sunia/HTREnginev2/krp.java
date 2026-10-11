package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class krp extends GmsClientSupervisor {

    /* renamed from: f */
    @GuardedBy("connectionStatus")
    public final HashMap f75777f = new HashMap();

    /* renamed from: g */
    public final Context f75778g;

    /* renamed from: h */
    public volatile Handler f75779h;

    /* renamed from: i */
    public final hrp f75780i;

    /* renamed from: j */
    public final ConnectionTracker f75781j;

    /* renamed from: k */
    public final long f75782k;

    /* renamed from: l */
    public final long f75783l;

    /* renamed from: m */
    @Nullable
    public volatile Executor f75784m;

    public krp(Context context, Looper looper, @Nullable Executor executor) {
        hrp hrpVar = new hrp(this, null);
        this.f75780i = hrpVar;
        this.f75778g = context.getApplicationContext();
        this.f75779h = new com.google.android.gms.internal.common.zzi(looper, hrpVar);
        this.f75781j = ConnectionTracker.getInstance();
        this.f75782k = 5000L;
        this.f75783l = 300000L;
        this.f75784m = executor;
    }

    /* renamed from: f */
    public final void m55313f(@Nullable Executor executor) {
        synchronized (this.f75777f) {
            this.f75784m = executor;
        }
    }

    /* renamed from: g */
    public final void m55314g(Looper looper) {
        synchronized (this.f75777f) {
            this.f75779h = new com.google.android.gms.internal.common.zzi(looper, this.f75780i);
        }
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final void zza(com.google.android.gms.common.internal.zzo zzoVar, ServiceConnection serviceConnection, String str) {
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f75777f) {
            brp brpVar = (brp) this.f75777f.get(zzoVar);
            if (brpVar == null) {
                throw new IllegalStateException("Nonexistent connection status for service config: " + zzoVar.toString());
            }
            if (!brpVar.m53334h(serviceConnection)) {
                throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + zzoVar.toString());
            }
            brpVar.m53332f(serviceConnection, str);
            if (brpVar.m53335i()) {
                this.f75779h.sendMessageDelayed(this.f75779h.obtainMessage(0, zzoVar), this.f75782k);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final boolean zzc(com.google.android.gms.common.internal.zzo zzoVar, ServiceConnection serviceConnection, String str, @Nullable Executor executor) {
        boolean m53336j;
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f75777f) {
            brp brpVar = (brp) this.f75777f.get(zzoVar);
            if (executor == null) {
                executor = this.f75784m;
            }
            if (brpVar == null) {
                brpVar = new brp(this, zzoVar);
                brpVar.m53330d(serviceConnection, serviceConnection, str);
                brpVar.m53331e(str, executor);
                this.f75777f.put(zzoVar, brpVar);
            } else {
                this.f75779h.removeMessages(0, zzoVar);
                if (brpVar.m53334h(serviceConnection)) {
                    throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + zzoVar.toString());
                }
                brpVar.m53330d(serviceConnection, serviceConnection, str);
                int m53327a = brpVar.m53327a();
                if (m53327a == 1) {
                    serviceConnection.onServiceConnected(brpVar.m53328b(), brpVar.m53329c());
                } else if (m53327a == 2) {
                    brpVar.m53331e(str, executor);
                }
            }
            m53336j = brpVar.m53336j();
        }
        return m53336j;
    }
}
