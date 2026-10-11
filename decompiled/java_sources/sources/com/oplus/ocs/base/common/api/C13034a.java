package com.oplus.ocs.base.common.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import com.coloros.ocs.base.IAuthenticationListener;
import com.coloros.ocs.base.IServiceBroker;
import com.oplus.ocs.base.IAuthenticationListener;
import com.oplus.ocs.base.common.CapabilityInfo;
import com.oplus.ocs.base.utils.C13071a;
import com.oplus.ocs.base.utils.ServiceCheck;
import java.util.concurrent.Executors;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.oplus.ocs.base.common.api.a */
/* loaded from: classes9.dex */
public class C13034a implements InterfaceC13038e {

    /* renamed from: c */
    private IServiceBroker f63024c;

    /* renamed from: d */
    private Context f63025d;

    /* renamed from: e */
    private String f63026e;

    /* renamed from: f */
    private HandlerC13036c f63027f;

    /* renamed from: g */
    private InterfaceC13044k f63028g;

    /* renamed from: a */
    private final String f63022a = C13034a.class.getSimpleName();

    /* renamed from: b */
    private a f63023b = null;

    /* renamed from: h */
    private IBinder.DeathRecipient f63029h = new IBinder.DeathRecipient() { // from class: com.oplus.ocs.base.common.api.a.4
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            IBinder asBinder;
            C13071a.m52229d(C13034a.this.f63022a, "binderDied()");
            C13034a.m52169g(C13034a.this);
            if (C13034a.this.f63024c == null || (asBinder = C13034a.this.f63024c.asBinder()) == null || !asBinder.isBinderAlive()) {
                return;
            }
            asBinder.unlinkToDeath(C13034a.this.f63029h, 0);
            C13034a.this.f63024c = null;
        }
    };

    /* renamed from: com.oplus.ocs.base.common.api.a$a */
    /* loaded from: classes9.dex */
    public class a implements ServiceConnection {
        private a() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C13071a.m52226a(C13034a.this.f63022a, "onServiceConnected");
            try {
                C13034a.this.f63024c = IServiceBroker.Stub.asInterface(iBinder);
                C13034a.this.f63024c.asBinder().linkToDeath(C13034a.this.f63029h, 0);
                C13034a.this.f63027f.sendEmptyMessage(3);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            if (C13034a.this.f63028g != null) {
                C13034a.this.f63028g.onStateChange(13);
            }
            C13034a.m52169g(C13034a.this);
            C13034a.this.f63024c = null;
        }

        public /* synthetic */ a(C13034a c13034a, byte b) {
            this();
        }
    }

    public C13034a(Context context, String str, HandlerC13036c handlerC13036c, InterfaceC13044k interfaceC13044k) {
        this.f63025d = context;
        this.f63026e = str;
        this.f63027f = handlerC13036c;
        this.f63028g = interfaceC13044k;
    }

    /* renamed from: g */
    public static /* synthetic */ a m52169g(C13034a c13034a) {
        c13034a.f63023b = null;
        return null;
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: b */
    public final boolean mo52171b() {
        return false;
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: c */
    public final void mo52172c() {
        if (this.f63023b == null || this.f63025d.getApplicationContext() == null) {
            return;
        }
        try {
            this.f63025d.getApplicationContext().unbindService(this.f63023b);
            this.f63024c = null;
        } catch (Exception e) {
            C13071a.m52229d(this.f63022a, String.format("out unbind get an exception %s", e.getMessage()));
        }
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: d */
    public final void mo52173d() {
        IBinder asBinder;
        try {
            IServiceBroker iServiceBroker = this.f63024c;
            if (iServiceBroker == null || (asBinder = iServiceBroker.asBinder()) == null || !asBinder.isBinderAlive()) {
                return;
            }
            this.f63024c.handleAuthentication(this.f63026e, "1.0.11", new IAuthenticationListener.Stub() { // from class: com.oplus.ocs.base.common.api.a.3
                @Override // com.coloros.ocs.base.IAuthenticationListener
                public final void onFail(int i) {
                    C13034a.this.m52160a(i);
                }

                @Override // com.coloros.ocs.base.IAuthenticationListener
                public final void onSuccess(CapabilityInfo capabilityInfo) {
                    if (capabilityInfo == null) {
                        C13034a.this.m52160a(7);
                    } else {
                        C13034a.m52163a(C13034a.this, capabilityInfo);
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            C13071a.m52229d(this.f63022a, "the exception that service broker authenticates is" + e.getMessage());
            m52160a(7);
        }
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: a */
    public final boolean mo52170a() {
        InterfaceC13044k interfaceC13044k = this.f63028g;
        if (interfaceC13044k != null) {
            interfaceC13044k.onStateChange(2);
        }
        if (ServiceCheck.m52223b(this.f63025d)) {
            Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.oplus.ocs.base.common.api.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    C13034a.m52161a(C13034a.this);
                }
            });
        } else {
            try {
                if (this.f63025d.getApplicationContext() != null) {
                    this.f63023b = new a(this, (byte) 0);
                    Context applicationContext = this.f63025d.getApplicationContext();
                    Intent intent = new Intent("com.coloros.opencapabilityservice");
                    intent.setComponent(new ComponentName("com.coloros.ocs.opencapabilityservice", "com.coloros.ocs.opencapabilityservice.service.ColorOcsService"));
                    boolean bindService = applicationContext.bindService(intent, this.f63023b, 1);
                    C13071a.m52227b(this.f63022a, "connect state ".concat(String.valueOf(bindService)));
                    if (!bindService) {
                        m52160a(3);
                    }
                } else {
                    InterfaceC13044k interfaceC13044k2 = this.f63028g;
                    if (interfaceC13044k2 != null) {
                        interfaceC13044k2.onStateChange(2);
                    }
                    m52160a(1009);
                }
            } catch (Exception e) {
                C13071a.m52229d(this.f63022a, String.format("out bind get an exception %s", e.getMessage()));
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m52160a(int i) {
        C13071a.m52227b(this.f63022a, "errorCode ".concat(String.valueOf(i)));
        Message obtain = Message.obtain();
        obtain.what = 2;
        obtain.arg1 = i;
        this.f63027f.sendMessage(obtain);
    }

    /* renamed from: a */
    public static /* synthetic */ void m52161a(C13034a c13034a) {
        Context context = c13034a.f63025d;
        new InternalClient(context, context.getPackageName(), c13034a.f63026e, Process.myPid(), true, true, new IAuthenticationListener.Stub() { // from class: com.oplus.ocs.base.common.api.a.2
            @Override // com.oplus.ocs.base.IAuthenticationListener
            public final void onFail(int i) throws RemoteException {
                C13071a.m52228c(C13034a.this.f63022a, "handleAsyncAuthenticate, onFailed errorCode: ".concat(String.valueOf(i)));
                C13034a.this.m52160a(i);
            }

            @Override // com.oplus.ocs.base.IAuthenticationListener
            public final void onSuccess(CapabilityInfo capabilityInfo) throws RemoteException {
                C13071a.m52227b(C13034a.this.f63022a, "handleAsyncAuthenticate, onSuccess");
                C13034a.m52163a(C13034a.this, capabilityInfo);
            }
        }).connect();
    }

    /* renamed from: a */
    public static /* synthetic */ void m52163a(C13034a c13034a, CapabilityInfo capabilityInfo) {
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.obj = capabilityInfo;
        c13034a.f63027f.sendMessage(obtain);
    }
}
