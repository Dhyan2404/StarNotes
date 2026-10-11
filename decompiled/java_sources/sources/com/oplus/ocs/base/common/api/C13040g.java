package com.oplus.ocs.base.common.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import com.oplus.ocs.base.IAuthenticationListener;
import com.oplus.ocs.base.IServiceBroker;
import com.oplus.ocs.base.common.CapabilityInfo;
import com.oplus.ocs.base.utils.C13071a;
import com.oplus.ocs.base.utils.ServiceCheck;
import java.util.concurrent.Executors;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.oplus.ocs.base.common.api.g */
/* loaded from: classes9.dex */
public final class C13040g implements InterfaceC13038e {

    /* renamed from: c */
    IServiceBroker f63053c;

    /* renamed from: d */
    Context f63054d;

    /* renamed from: e */
    String f63055e;

    /* renamed from: f */
    HandlerC13036c f63056f;

    /* renamed from: g */
    InterfaceC13044k f63057g;

    /* renamed from: a */
    final String f63051a = C13034a.class.getSimpleName();

    /* renamed from: b */
    a f63052b = null;

    /* renamed from: h */
    IBinder.DeathRecipient f63058h = new IBinder.DeathRecipient() { // from class: com.oplus.ocs.base.common.api.g.4
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            IBinder asBinder;
            C13071a.m52229d(C13040g.this.f63051a, "binderDied()");
            C13040g c13040g = C13040g.this;
            c13040g.f63052b = null;
            IServiceBroker iServiceBroker = c13040g.f63053c;
            if (iServiceBroker == null || (asBinder = iServiceBroker.asBinder()) == null || !asBinder.isBinderAlive()) {
                return;
            }
            asBinder.unlinkToDeath(C13040g.this.f63058h, 0);
            C13040g.this.f63053c = null;
        }
    };

    /* renamed from: com.oplus.ocs.base.common.api.g$a */
    /* loaded from: classes9.dex */
    public class a implements ServiceConnection {
        private a() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C13071a.m52226a(C13040g.this.f63051a, "new ocs onServiceConnected");
            try {
                C13040g.this.f63053c = IServiceBroker.Stub.asInterface(iBinder);
                C13040g.this.f63053c.asBinder().linkToDeath(C13040g.this.f63058h, 0);
                C13040g.this.f63056f.sendEmptyMessage(3);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            InterfaceC13044k interfaceC13044k = C13040g.this.f63057g;
            if (interfaceC13044k != null) {
                interfaceC13044k.onStateChange(13);
            }
            C13040g c13040g = C13040g.this;
            c13040g.f63052b = null;
            c13040g.f63053c = null;
        }

        public /* synthetic */ a(C13040g c13040g, byte b) {
            this();
        }
    }

    public C13040g(Context context, String str, HandlerC13036c handlerC13036c, InterfaceC13044k interfaceC13044k) {
        this.f63054d = context;
        this.f63055e = str;
        this.f63056f = handlerC13036c;
        this.f63057g = interfaceC13044k;
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: a */
    public final boolean mo52170a() {
        InterfaceC13044k interfaceC13044k = this.f63057g;
        if (interfaceC13044k != null) {
            interfaceC13044k.onStateChange(2);
        }
        if (ServiceCheck.m52223b(this.f63054d)) {
            Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.oplus.ocs.base.common.api.g.1
                @Override // java.lang.Runnable
                public final void run() {
                    final C13040g c13040g = C13040g.this;
                    Context context = c13040g.f63054d;
                    new InternalClient(context, context.getPackageName(), c13040g.f63055e, Process.myPid(), true, true, new IAuthenticationListener.Stub() { // from class: com.oplus.ocs.base.common.api.g.2
                        @Override // com.oplus.ocs.base.IAuthenticationListener
                        public final void onFail(int i) throws RemoteException {
                            C13071a.m52228c(C13040g.this.f63051a, "handleAsyncAuthenticate, onFailed errorCode: ".concat(String.valueOf(i)));
                            C13040g.this.m52183a(i);
                        }

                        @Override // com.oplus.ocs.base.IAuthenticationListener
                        public final void onSuccess(CapabilityInfo capabilityInfo) throws RemoteException {
                            C13071a.m52227b(C13040g.this.f63051a, "handleAsyncAuthenticate, onSuccess");
                            C13040g.m52182a(C13040g.this, capabilityInfo);
                        }
                    }).connect();
                }
            });
        } else {
            try {
                if (this.f63054d.getApplicationContext() != null) {
                    this.f63052b = new a(this, (byte) 0);
                    Context applicationContext = this.f63054d.getApplicationContext();
                    Intent intent = new Intent("com.oplus.ocs.openauthenticate");
                    intent.setComponent(new ComponentName("com.oplus.ocs", "com.oplus.ocs.service.OpenAuthenticateService"));
                    boolean bindService = applicationContext.bindService(intent, this.f63052b, 1);
                    C13071a.m52227b(this.f63051a, "connect state ".concat(String.valueOf(bindService)));
                    if (!bindService) {
                        m52183a(3);
                    }
                } else {
                    InterfaceC13044k interfaceC13044k2 = this.f63057g;
                    if (interfaceC13044k2 != null) {
                        interfaceC13044k2.onStateChange(2);
                    }
                    m52183a(1009);
                }
            } catch (Exception e) {
                C13071a.m52229d(this.f63051a, String.format("out bind get an exception %s", e.getMessage()));
            }
        }
        return true;
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: b */
    public final boolean mo52171b() {
        return false;
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: c */
    public final void mo52172c() {
        if (this.f63052b == null || this.f63054d.getApplicationContext() == null) {
            return;
        }
        try {
            this.f63054d.getApplicationContext().unbindService(this.f63052b);
            this.f63053c = null;
        } catch (Exception e) {
            C13071a.m52229d(this.f63051a, String.format("out unbind get an exception %s", e.getMessage()));
        }
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: d */
    public final void mo52173d() {
        IBinder asBinder;
        try {
            IServiceBroker iServiceBroker = this.f63053c;
            if (iServiceBroker == null || (asBinder = iServiceBroker.asBinder()) == null || !asBinder.isBinderAlive()) {
                return;
            }
            this.f63053c.handleAuthentication(this.f63055e, "1.0.11", new IAuthenticationListener.Stub() { // from class: com.oplus.ocs.base.common.api.g.3
                @Override // com.oplus.ocs.base.IAuthenticationListener
                public final void onFail(int i) {
                    C13040g.this.m52183a(i);
                }

                @Override // com.oplus.ocs.base.IAuthenticationListener
                public final void onSuccess(CapabilityInfo capabilityInfo) {
                    C13040g.m52182a(C13040g.this, capabilityInfo);
                }
            });
        } catch (Exception e) {
            C13071a.m52229d(this.f63051a, "the exception that service broker authenticates is" + e.getMessage());
            m52183a(7);
        }
    }

    /* renamed from: a */
    public final void m52183a(int i) {
        C13071a.m52227b(this.f63051a, "errorCode ".concat(String.valueOf(i)));
        Message obtain = Message.obtain();
        obtain.what = 2;
        obtain.arg1 = i;
        this.f63056f.sendMessage(obtain);
    }

    /* renamed from: a */
    public static /* synthetic */ void m52182a(C13040g c13040g, CapabilityInfo capabilityInfo) {
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.obj = capabilityInfo;
        c13040g.f63056f.sendMessage(obtain);
    }
}
