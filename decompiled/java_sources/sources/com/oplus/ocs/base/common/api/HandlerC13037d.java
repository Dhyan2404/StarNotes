package com.oplus.ocs.base.common.api;

import android.os.Looper;
import android.os.Message;
import com.oplus.ocs.base.common.ConnectionResult;
import com.oplus.ocs.base.common.HandlerC13030a;
import com.oplus.ocs.base.utils.C13071a;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.oplus.ocs.base.common.api.d */
/* loaded from: classes9.dex */
public class HandlerC13037d extends HandlerC13030a {

    /* renamed from: a */
    OnConnectionSucceedListener f63039a;

    /* renamed from: b */
    OnConnectionFailedListener f63040b;

    /* renamed from: c */
    private final String f63041c;

    /* renamed from: d */
    private HandlerC13036c f63042d;

    public HandlerC13037d(Looper looper, HandlerC13036c handlerC13036c) {
        super(looper);
        this.f63041c = HandlerC13037d.class.getSimpleName();
        this.f63042d = handlerC13036c;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        C13071a.m52226a(this.f63041c, "business handler what ".concat(String.valueOf(i)));
        if (i == 100) {
            OnConnectionSucceedListener onConnectionSucceedListener = this.f63039a;
            if (onConnectionSucceedListener != null) {
                onConnectionSucceedListener.onConnectionSucceed();
            }
            Message obtain = Message.obtain();
            obtain.what = 5;
            this.f63042d.sendMessage(obtain);
            return;
        }
        if (i != 101) {
            return;
        }
        int i2 = message.arg1;
        OnConnectionFailedListener onConnectionFailedListener = this.f63040b;
        if (onConnectionFailedListener != null) {
            onConnectionFailedListener.onConnectionFailed(new ConnectionResult(i2));
            return;
        }
        Message obtain2 = Message.obtain();
        obtain2.what = 5;
        this.f63042d.sendMessage(obtain2);
    }
}
