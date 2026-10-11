package com.oplus.ocs.base.common.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.coloros.ocs.base.IAuthenticationListener;
import com.oplus.ocs.base.IAuthenticationListener;
import com.oplus.ocs.base.common.CapabilityInfo;
import com.oplus.ocs.base.utils.C13071a;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.oplus.ocs.base.common.api.f */
/* loaded from: classes9.dex */
public class C13039f implements InterfaceC13038e {

    /* renamed from: b */
    private Context f63044b;

    /* renamed from: c */
    private ServiceConnection f63045c;

    /* renamed from: d */
    private IAuthenticationListener f63046d;

    /* renamed from: e */
    private InternalClient f63047e;

    /* renamed from: a */
    private final String f63043a = C13039f.class.getSimpleName();

    /* renamed from: f */
    private com.coloros.ocs.base.IAuthenticationListener f63048f = new IAuthenticationListener.Stub() { // from class: com.oplus.ocs.base.common.api.f.1
        @Override // com.coloros.ocs.base.IAuthenticationListener
        public final void onFail(int i) throws RemoteException {
            if (C13039f.this.f63046d != null) {
                C13039f.this.f63046d.onFail(i);
            }
        }

        @Override // com.coloros.ocs.base.IAuthenticationListener
        public final void onSuccess(CapabilityInfo capabilityInfo) throws RemoteException {
            if (C13039f.this.f63046d != null) {
                if (capabilityInfo == null) {
                    C13039f.this.f63046d.onFail(7);
                } else {
                    C13039f.this.f63046d.onSuccess(capabilityInfo);
                }
            }
        }
    };

    /* renamed from: com.oplus.ocs.base.common.api.f$a */
    /* loaded from: classes9.dex */
    public class a implements ServiceConnection {
        private a() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                if (C13039f.this.f63047e != null) {
                    C13039f.this.f63047e.serviceUnbind();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            C13071a.m52227b(C13039f.this.f63043a, "onServiceDisconnected()");
            C13039f.m52181d(C13039f.this);
        }

        public /* synthetic */ a(C13039f c13039f, byte b) {
            this();
        }
    }

    public C13039f(Context context, InternalClient internalClient, com.oplus.ocs.base.IAuthenticationListener iAuthenticationListener) {
        this.f63044b = context;
        this.f63047e = internalClient;
        this.f63046d = iAuthenticationListener;
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: d */
    public final void mo52173d() {
    }

    /* renamed from: d */
    public static /* synthetic */ ServiceConnection m52181d(C13039f c13039f) {
        c13039f.f63045c = null;
        return null;
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: a */
    public final boolean mo52170a() {
        com.oplus.ocs.base.IAuthenticationListener iAuthenticationListener;
        boolean z = false;
        z = false;
        z = false;
        try {
            if (this.f63044b.getApplicationContext() != null) {
                this.f63045c = new a(this, z ? (byte) 1 : (byte) 0);
                Context applicationContext = this.f63044b.getApplicationContext();
                com.coloros.ocs.base.IAuthenticationListener iAuthenticationListener2 = this.f63048f;
                Intent serviceIntent = this.f63047e.getServiceIntent("com.coloros.opencapabilityservice", "com.coloros.ocs.opencapabilityservice", "com.coloros.ocs.opencapabilityservice.service.ColorOcsService");
                if (iAuthenticationListener2 != null) {
                    Bundle bundle = new Bundle();
                    bundle.putBinder("internal_binder", iAuthenticationListener2.asBinder());
                    serviceIntent.putExtra("internal_bundle", bundle);
                }
                z = applicationContext.bindService(serviceIntent, this.f63045c, 1);
                C13071a.m52229d(this.f63043a, "connect state - ".concat(String.valueOf(z)));
                if (!z && (iAuthenticationListener = this.f63046d) != null) {
                    iAuthenticationListener.onFail(3);
                }
            } else {
                com.oplus.ocs.base.IAuthenticationListener iAuthenticationListener3 = this.f63046d;
                if (iAuthenticationListener3 != null) {
                    iAuthenticationListener3.onFail(1009);
                }
            }
        } catch (Exception e) {
            C13071a.m52229d(this.f63043a, String.format("in bind get an exception %s", e.getMessage()));
        }
        return z;
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: b */
    public final boolean mo52171b() {
        com.oplus.ocs.base.IAuthenticationListener iAuthenticationListener;
        boolean z = false;
        z = false;
        z = false;
        try {
            if (this.f63044b.getApplicationContext() != null) {
                this.f63045c = new a(this, z ? (byte) 1 : (byte) 0);
                z = this.f63044b.getApplicationContext().bindService(this.f63047e.getServiceIntent4Stat("com.coloros.opencapabilityservice", "com.coloros.ocs.opencapabilityservice", "com.coloros.ocs.opencapabilityservice.service.ColorOcsService"), this.f63045c, 1);
                C13071a.m52229d(this.f63043a, "connect stat state - ".concat(String.valueOf(z)));
                if (!z && (iAuthenticationListener = this.f63046d) != null) {
                    iAuthenticationListener.onFail(3);
                }
            } else {
                com.oplus.ocs.base.IAuthenticationListener iAuthenticationListener2 = this.f63046d;
                if (iAuthenticationListener2 != null) {
                    iAuthenticationListener2.onFail(1009);
                }
            }
        } catch (Exception e) {
            C13071a.m52229d(this.f63043a, String.format("in bind get an exception %s", e.getMessage()));
        }
        return z;
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: c */
    public final void mo52172c() {
        if (this.f63045c == null) {
            C13071a.m52229d(this.f63043a, "mServiceConnectionImpl is null");
        } else if (this.f63044b.getApplicationContext() != null) {
            try {
                this.f63044b.getApplicationContext().unbindService(this.f63045c);
            } catch (Exception e) {
                C13071a.m52229d(this.f63043a, String.format("in unbind get an exception %s", e.getMessage()));
            }
        }
    }
}
