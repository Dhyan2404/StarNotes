package com.oplus.ocs.base.common.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import com.oplus.ocs.base.IAuthenticationListener;
import com.oplus.ocs.base.utils.C13071a;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.oplus.ocs.base.common.api.h */
/* loaded from: classes9.dex */
public class C13041h implements InterfaceC13038e {

    /* renamed from: a */
    private final String f63064a = C13041h.class.getSimpleName();

    /* renamed from: b */
    private Context f63065b;

    /* renamed from: c */
    private ServiceConnection f63066c;

    /* renamed from: d */
    private IAuthenticationListener f63067d;

    /* renamed from: e */
    private InternalClient f63068e;

    /* renamed from: com.oplus.ocs.base.common.api.h$a */
    /* loaded from: classes9.dex */
    public class a implements ServiceConnection {
        private a() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                if (C13041h.this.f63068e != null) {
                    C13041h.this.f63068e.serviceUnbind();
                }
            } catch (Exception unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            C13071a.m52227b(C13041h.this.f63064a, "onServiceDisconnected()");
            C13041h.m52186c(C13041h.this);
        }

        public /* synthetic */ a(C13041h c13041h, byte b) {
            this();
        }
    }

    public C13041h(Context context, InternalClient internalClient, IAuthenticationListener iAuthenticationListener) {
        this.f63065b = context;
        this.f63068e = internalClient;
        this.f63067d = iAuthenticationListener;
    }

    /* renamed from: c */
    public static /* synthetic */ ServiceConnection m52186c(C13041h c13041h) {
        c13041h.f63066c = null;
        return null;
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: d */
    public final void mo52173d() {
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: a */
    public final boolean mo52170a() {
        IAuthenticationListener iAuthenticationListener;
        boolean z = false;
        z = false;
        z = false;
        try {
            if (this.f63065b.getApplicationContext() != null) {
                this.f63066c = new a(this, z ? (byte) 1 : (byte) 0);
                Context applicationContext = this.f63065b.getApplicationContext();
                IAuthenticationListener iAuthenticationListener2 = this.f63067d;
                Intent serviceIntent = this.f63068e.getServiceIntent("com.oplus.ocs.openauthenticate", "com.oplus.ocs", "com.oplus.ocs.service.OpenAuthenticateService");
                if (iAuthenticationListener2 != null) {
                    Bundle bundle = new Bundle();
                    bundle.putBinder("internal_binder", iAuthenticationListener2.asBinder());
                    serviceIntent.putExtra("internal_bundle", bundle);
                }
                z = applicationContext.bindService(serviceIntent, this.f63066c, 1);
                C13071a.m52229d(this.f63064a, "connect state - ".concat(String.valueOf(z)));
                if (!z && (iAuthenticationListener = this.f63067d) != null) {
                    try {
                        iAuthenticationListener.onFail(3);
                    } catch (Exception unused) {
                    }
                }
            } else {
                IAuthenticationListener iAuthenticationListener3 = this.f63067d;
                if (iAuthenticationListener3 != null) {
                    iAuthenticationListener3.onFail(1009);
                }
            }
        } catch (Exception e) {
            C13071a.m52229d(this.f63064a, String.format("in bind get an exception %s", e.getMessage()));
        }
        return z;
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: b */
    public final boolean mo52171b() {
        IAuthenticationListener iAuthenticationListener;
        boolean z = false;
        z = false;
        z = false;
        try {
            if (this.f63065b.getApplicationContext() != null) {
                this.f63066c = new a(this, z ? (byte) 1 : (byte) 0);
                z = this.f63065b.getApplicationContext().bindService(this.f63068e.getServiceIntent4Stat("com.oplus.ocs.openauthenticate", "com.oplus.ocs", "com.oplus.ocs.service.OpenAuthenticateService"), this.f63066c, 1);
                C13071a.m52229d(this.f63064a, "connect stat state - ".concat(String.valueOf(z)));
                if (!z && (iAuthenticationListener = this.f63067d) != null) {
                    iAuthenticationListener.onFail(3);
                }
            } else {
                IAuthenticationListener iAuthenticationListener2 = this.f63067d;
                if (iAuthenticationListener2 != null) {
                    iAuthenticationListener2.onFail(1009);
                }
            }
        } catch (Exception e) {
            C13071a.m52229d(this.f63064a, String.format("in bind get an exception %s", e.getMessage()));
        }
        return z;
    }

    @Override // com.oplus.ocs.base.common.api.InterfaceC13038e
    /* renamed from: c */
    public final void mo52172c() {
        if (this.f63066c == null) {
            C13071a.m52229d(this.f63064a, "mServiceConnectionImpl is null");
        } else if (this.f63065b.getApplicationContext() != null) {
            try {
                this.f63065b.getApplicationContext().unbindService(this.f63066c);
            } catch (Exception e) {
                C13071a.m52229d(this.f63064a, String.format("in unbind get an exception %s", e.getMessage()));
            }
        }
    }
}
