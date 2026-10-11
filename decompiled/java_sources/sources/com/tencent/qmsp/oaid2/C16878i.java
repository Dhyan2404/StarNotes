package com.tencent.qmsp.oaid2;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.tencent.qmsp.oaid2.InterfaceC16872f;

/* renamed from: com.tencent.qmsp.oaid2.i */
/* loaded from: classes10.dex */
public class C16878i {

    /* renamed from: b */
    public Context f93755b;

    /* renamed from: c */
    public InterfaceC16872f f93756c;

    /* renamed from: d */
    public InterfaceC16874g f93757d;

    /* renamed from: a */
    public boolean f93754a = false;

    /* renamed from: e */
    public ServiceConnection f93758e = new a();

    /* renamed from: com.tencent.qmsp.oaid2.i$a */
    /* loaded from: classes10.dex */
    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C16866c.m60152a("HSDID did service binded");
            C16878i.this.f93756c = InterfaceC16872f.a.m60170a(iBinder);
            C16878i.this.m60183a(true);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C16878i.this.m60183a(false);
        }
    }

    public C16878i(Context context) {
        this.f93755b = context;
    }

    /* renamed from: a */
    public void m60181a() {
        try {
            if (!this.f93754a || this.f93758e == null || this.f93755b == null) {
                return;
            }
            C16866c.m60152a("HSDID start to unbind did service");
            this.f93754a = false;
            this.f93755b.unbindService(this.f93758e);
        } catch (Exception e) {
            C16866c.m60153b("HSDID error:" + e.getMessage());
        }
    }

    /* renamed from: a */
    public void m60182a(InterfaceC16874g interfaceC16874g) {
        try {
            this.f93757d = interfaceC16874g;
            Intent intent = new Intent("com.asus.msa.action.ACCESS_DID");
            ComponentName componentName = new ComponentName("com.asus.msa.SupplementaryDID", "com.asus.msa.SupplementaryDID.SupplementaryDIDService");
            Intent intent2 = new Intent(intent);
            intent2.setComponent(componentName);
            C16866c.m60152a("HSDID start to bind did service");
            boolean bindService = this.f93755b.bindService(intent2, this.f93758e, 1);
            this.f93754a = bindService;
            if (bindService) {
                return;
            }
            this.f93757d.mo60174b();
        } catch (Exception unused) {
            m60183a(false);
        }
    }

    /* renamed from: a */
    public final void m60183a(boolean z) {
        if (z) {
            try {
                this.f93757d.mo60173a(this.f93756c);
                return;
            } catch (Exception e) {
                C16866c.m60153b("HSDID notify did bind status error :" + e.getMessage());
                return;
            }
        }
        this.f93757d.mo60174b();
    }
}
