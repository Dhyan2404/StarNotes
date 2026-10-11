package com.sunia.HTREnginev2;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.play.integrity.internal.C5544aa;
import com.google.android.play.integrity.internal.C5545ac;
import com.google.android.play.integrity.internal.C5569q;

/* loaded from: classes6.dex */
public final class zxo implements ServiceConnection {

    /* renamed from: e */
    public final /* synthetic */ C5545ac f92298e;

    public /* synthetic */ zxo(C5545ac c5545ac, C5544aa c5544aa) {
        this.f92298e = c5545ac;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C5569q c5569q;
        c5569q = this.f92298e.f33462b;
        c5569q.m25748c("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        C5545ac c5545ac = this.f92298e;
        c5545ac.m25718c().post(new u8p(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C5569q c5569q;
        c5569q = this.f92298e.f33462b;
        c5569q.m25748c("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        C5545ac c5545ac = this.f92298e;
        c5545ac.m25718c().post(new w8p(this));
    }
}
