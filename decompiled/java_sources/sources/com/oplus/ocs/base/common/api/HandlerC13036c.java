package com.oplus.ocs.base.common.api;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.oplus.ocs.base.common.CapabilityInfo;
import com.oplus.ocs.base.common.HandlerC13030a;
import com.oplus.ocs.base.utils.C13071a;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.oplus.ocs.base.common.api.c */
/* loaded from: classes9.dex */
public class HandlerC13036c extends HandlerC13030a {

    /* renamed from: a */
    static volatile int f63036a;

    /* renamed from: b */
    private final String f63037b;

    /* renamed from: c */
    private BaseClient f63038c;

    private HandlerC13036c(Looper looper, BaseClient baseClient) {
        super(looper);
        this.f63037b = HandlerC13036c.class.getSimpleName();
        this.f63038c = baseClient;
    }

    /* renamed from: a */
    public static synchronized HandlerC13036c m52177a(BaseClient baseClient) {
        synchronized (HandlerC13036c.class) {
            StringBuilder sb = new StringBuilder("base_client_");
            int i = f63036a;
            f63036a = i + 1;
            sb.append(i);
            HandlerThread handlerThread = new HandlerThread(sb.toString());
            handlerThread.start();
            if (handlerThread.getLooper() != null) {
                return new HandlerC13036c(handlerThread.getLooper(), baseClient);
            }
            return new HandlerC13036c(Looper.getMainLooper(), baseClient);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        C13071a.m52226a(this.f63037b, "base client handler what ".concat(String.valueOf(i)));
        if (i == 1) {
            BaseClient baseClient = this.f63038c;
            CapabilityInfo capabilityInfo = (CapabilityInfo) message.obj;
            String str = BaseClient.f62990a;
            C13071a.m52227b(str, "onAuthenticateSucceed");
            baseClient.f62991b = 1;
            baseClient.f62992c = capabilityInfo;
            InterfaceC13042i interfaceC13042i = baseClient.f62995f;
            if (interfaceC13042i != null) {
                interfaceC13042i.mo52157a(capabilityInfo);
            }
            C13071a.m52226a(str, "handleAuthenticateSuccess");
            if (baseClient.f62996g == null) {
                baseClient.m52155a((Handler) null);
            }
            Message obtain = Message.obtain();
            obtain.what = 100;
            baseClient.f62996g.sendMessage(obtain);
            baseClient.disconnect();
            return;
        }
        if (i != 2) {
            if (i == 3) {
                this.f63038c.f62997h.mo52173d();
                return;
            }
            if (i != 5) {
                return;
            }
            BaseClient baseClient2 = this.f63038c;
            while (baseClient2.f62993d.size() > 0) {
                C13071a.m52226a(BaseClient.f62990a, "handleQue");
                baseClient2.m52156a(baseClient2.f62993d.poll());
            }
            C13071a.m52226a(BaseClient.f62990a, "task queue is end");
            return;
        }
        BaseClient baseClient3 = this.f63038c;
        int i2 = message.arg1;
        baseClient3.f62991b = 4;
        baseClient3.disconnect();
        CapabilityInfo m52153b = BaseClient.m52153b(i2);
        baseClient3.f62992c = m52153b;
        InterfaceC13042i interfaceC13042i2 = baseClient3.f62995f;
        if (interfaceC13042i2 != null) {
            interfaceC13042i2.mo52157a(m52153b);
        }
        C13071a.m52226a(BaseClient.f62990a, "connect failed , error code is ".concat(String.valueOf(i2)));
        baseClient3.m52154a(i2);
        InterfaceC13043j interfaceC13043j = baseClient3.f62994e;
        if (interfaceC13043j != null) {
            interfaceC13043j.mo52187a();
        }
    }
}
