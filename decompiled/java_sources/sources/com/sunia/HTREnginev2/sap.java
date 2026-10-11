package com.sunia.HTREnginev2;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zacp;
import com.google.android.gms.common.api.internal.zada;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zau;

/* loaded from: classes5.dex */
public final class sap extends zau {

    /* renamed from: a */
    public final /* synthetic */ zada f83970a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sap(zada zadaVar, Looper looper) {
        super(looper);
        this.f83970a = zadaVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object obj;
        zada zadaVar;
        int i = message.what;
        if (i != 0) {
            if (i == 1) {
                RuntimeException runtimeException = (RuntimeException) message.obj;
                Log.e("TransformedResultImpl", "Runtime exception on the transformation worker thread: ".concat(String.valueOf(runtimeException.getMessage())));
                throw runtimeException;
            }
            Log.e("TransformedResultImpl", "TransformationResultHandler received unknown message type: " + i);
            return;
        }
        PendingResult pendingResult = (PendingResult) message.obj;
        obj = this.f83970a.f29278e;
        synchronized (obj) {
            zadaVar = this.f83970a.f29275b;
            zada zadaVar2 = (zada) Preconditions.checkNotNull(zadaVar);
            if (pendingResult == null) {
                zadaVar2.m22120i(new Status(13, "Transform returned null"));
            } else if (pendingResult instanceof zacp) {
                zadaVar2.m22120i(((zacp) pendingResult).m22108a());
            } else {
                zadaVar2.zai(pendingResult);
            }
        }
    }
}
