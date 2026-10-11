package com.sunia.HTREnginev2;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.internal.zabi;
import com.google.android.gms.internal.base.zau;

/* loaded from: classes5.dex */
public final class bap extends zau {

    /* renamed from: a */
    public final /* synthetic */ zabi f65589a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bap(zabi zabiVar, Looper looper) {
        super(looper);
        this.f65589a = zabiVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            ((aap) message.obj).m52987b(this.f65589a);
        } else {
            if (i == 2) {
                throw ((RuntimeException) message.obj);
            }
            Log.w("GACStateManager", "Unknown message id: " + i);
        }
    }
}
