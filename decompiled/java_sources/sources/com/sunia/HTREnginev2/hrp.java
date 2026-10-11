package com.sunia.HTREnginev2;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzq;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class hrp implements Handler.Callback {

    /* renamed from: e */
    public final /* synthetic */ krp f72503e;

    public /* synthetic */ hrp(krp krpVar, zzq zzqVar) {
        this.f72503e = krpVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        HashMap hashMap5;
        int i = message.what;
        if (i == 0) {
            hashMap = this.f72503e.f75777f;
            synchronized (hashMap) {
                com.google.android.gms.common.internal.zzo zzoVar = (com.google.android.gms.common.internal.zzo) message.obj;
                hashMap2 = this.f72503e.f75777f;
                brp brpVar = (brp) hashMap2.get(zzoVar);
                if (brpVar != null && brpVar.m53335i()) {
                    if (brpVar.m53336j()) {
                        brpVar.m53333g("GmsClientSupervisor");
                    }
                    hashMap3 = this.f72503e.f75777f;
                    hashMap3.remove(zzoVar);
                }
            }
            return true;
        }
        if (i != 1) {
            return false;
        }
        hashMap4 = this.f72503e.f75777f;
        synchronized (hashMap4) {
            com.google.android.gms.common.internal.zzo zzoVar2 = (com.google.android.gms.common.internal.zzo) message.obj;
            hashMap5 = this.f72503e.f75777f;
            brp brpVar2 = (brp) hashMap5.get(zzoVar2);
            if (brpVar2 != null && brpVar2.m53327a() == 3) {
                Log.e("GmsClientSupervisor", "Timeout waiting for ServiceConnection callback " + String.valueOf(zzoVar2), new Exception());
                ComponentName m53328b = brpVar2.m53328b();
                if (m53328b == null) {
                    m53328b = zzoVar2.zza();
                }
                if (m53328b == null) {
                    String zzc = zzoVar2.zzc();
                    Preconditions.checkNotNull(zzc);
                    m53328b = new ComponentName(zzc, "unknown");
                }
                brpVar2.onServiceDisconnected(m53328b);
            }
        }
        return true;
    }
}
