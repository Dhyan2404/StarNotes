package com.sunia.HTREnginev2;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.internal.zabe;
import com.google.android.gms.internal.base.zau;

/* loaded from: classes5.dex */
public final class y9p extends zau {

    /* renamed from: a */
    public final /* synthetic */ zabe f90520a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y9p(zabe zabeVar, Looper looper) {
        super(looper);
        this.f90520a = zabeVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            zabe.m22070g(this.f90520a);
            return;
        }
        if (i == 2) {
            zabe.m22069f(this.f90520a);
            return;
        }
        Log.w("GoogleApiClientImpl", "Unknown message id: " + i);
    }
}
