package com.tencent.qmsp.oaid2;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.tencent.qmsp.oaid2.InterfaceC16879i0;

/* renamed from: com.tencent.qmsp.oaid2.j0 */
/* loaded from: classes10.dex */
public class C16881j0 {

    /* renamed from: e */
    public static String f93763e = "SDI";

    /* renamed from: f */
    public static String f93764f = "SI";

    /* renamed from: a */
    public b f93765a;

    /* renamed from: b */
    public ServiceConnection f93766b;

    /* renamed from: c */
    public Context f93767c;

    /* renamed from: d */
    public InterfaceC16879i0 f93768d;

    /* renamed from: com.tencent.qmsp.oaid2.j0$a */
    /* loaded from: classes10.dex */
    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (this) {
                C16881j0.this.f93768d = InterfaceC16879i0.a.m60186a(iBinder);
                C16881j0 c16881j0 = C16881j0.this;
                b bVar = c16881j0.f93765a;
                if (bVar != null) {
                    bVar.mo60196a(c16881j0);
                }
                C16866c.m60154c(C16881j0.f93764f + " Service onServiceConnected");
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C16881j0.this.f93768d = null;
            C16866c.m60154c(C16881j0.f93764f + " Service onServiceDisconnected");
        }
    }

    /* renamed from: com.tencent.qmsp.oaid2.j0$b */
    /* loaded from: classes10.dex */
    public interface b {
        /* renamed from: a */
        void mo60196a(C16881j0 c16881j0);
    }

    public C16881j0(Context context, b bVar) {
        this.f93765a = null;
        this.f93767c = null;
        if (context == null) {
            throw new NullPointerException("Context can not be null.");
        }
        this.f93767c = context;
        this.f93765a = bVar;
        this.f93766b = new a();
    }

    /* renamed from: a */
    public String m60191a() {
        Context context = this.f93767c;
        if (context == null) {
            C16866c.m60154c(f93764f + " Context is null.");
            throw new IllegalArgumentException("Context is null, must be new SxCore first");
        }
        String packageName = context.getPackageName();
        C16866c.m60152a(f93764f + "apackage：" + packageName);
        if (packageName == null || packageName.equals("")) {
            C16866c.m60154c(f93764f + " input package is null!");
            return null;
        }
        try {
            InterfaceC16879i0 interfaceC16879i0 = this.f93768d;
            if (interfaceC16879i0 == null) {
                return null;
            }
            String mo60185a = interfaceC16879i0.mo60185a(packageName);
            C16866c.m60152a(f93764f + " getAAID Package: " + packageName);
            return mo60185a;
        } catch (Exception unused) {
            C16866c.m60154c(f93764f + " geta error, RemoteException!");
            return null;
        }
    }

    /* renamed from: b */
    public String m60192b() {
        if (this.f93767c == null) {
            C16866c.m60154c(f93764f + " Context is null.");
            throw new IllegalArgumentException("Context is null, must be new SxCore first");
        }
        try {
            InterfaceC16879i0 interfaceC16879i0 = this.f93768d;
            if (interfaceC16879i0 == null) {
                return null;
            }
            String mo60184a = interfaceC16879i0.mo60184a();
            C16866c.m60154c(f93763e + " geto call");
            return mo60184a;
        } catch (Exception e) {
            C16866c.m60154c(f93764f + " geto error, RemoteException!");
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public void m60193c() {
        Intent intent = new Intent();
        intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
        if (this.f93767c.bindService(intent, this.f93766b, 1)) {
            C16866c.m60154c(f93764f + " bindService Successful!");
            return;
        }
        this.f93765a.mo60196a(this);
        C16866c.m60154c(f93764f + " bindService Failed!");
    }

    /* renamed from: d */
    public boolean m60194d() {
        try {
            if (this.f93768d == null) {
                C16866c.m60154c(f93764f + " Device not support opendeviceid");
                return false;
            }
            C16866c.m60154c(f93764f + " Device support opendeviceid");
            return true;
        } catch (Exception unused) {
            C16866c.m60154c(f93764f + " isSupport error, RemoteException!");
            return false;
        }
    }

    /* renamed from: e */
    public void m60195e() {
        try {
            this.f93767c.unbindService(this.f93766b);
            C16866c.m60154c(f93764f + " unBind Service successful");
        } catch (IllegalArgumentException unused) {
            C16866c.m60154c(f93764f + " unBind Service exception");
        }
        this.f93768d = null;
    }
}
