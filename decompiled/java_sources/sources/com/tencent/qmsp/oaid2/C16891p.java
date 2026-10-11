package com.tencent.qmsp.oaid2;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.tencent.qmsp.oaid2.InterfaceC16888n;

/* renamed from: com.tencent.qmsp.oaid2.p */
/* loaded from: classes10.dex */
public class C16891p {

    /* renamed from: e */
    public static String f93793e = "LXOP";

    /* renamed from: a */
    public Context f93794a;

    /* renamed from: b */
    public InterfaceC16888n f93795b;

    /* renamed from: c */
    public ServiceConnection f93796c;

    /* renamed from: d */
    public b f93797d;

    /* renamed from: com.tencent.qmsp.oaid2.p$a */
    /* loaded from: classes10.dex */
    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (this) {
                C16891p.this.f93795b = InterfaceC16888n.a.m60214a(iBinder);
                C16891p c16891p = C16891p.this;
                b bVar = c16891p.f93797d;
                if (bVar != null) {
                    bVar.mo60216a(c16891p);
                }
                C16891p.this.m60220b("Service onServiceConnected");
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C16891p c16891p = C16891p.this;
            c16891p.f93795b = null;
            c16891p.m60220b("Service onServiceDisconnected");
        }
    }

    /* renamed from: com.tencent.qmsp.oaid2.p$b */
    /* loaded from: classes10.dex */
    public interface b {
        /* renamed from: a */
        void mo60216a(C16891p c16891p);
    }

    public C16891p(Context context, b bVar) {
        this.f93794a = null;
        this.f93797d = null;
        if (context == null) {
            throw new NullPointerException("Context can not be null.");
        }
        this.f93794a = context;
        this.f93797d = bVar;
        this.f93796c = new a();
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        if (this.f93794a.bindService(intent, this.f93796c, 1)) {
            m60220b("bindService Successful!");
            return;
        }
        b bVar2 = this.f93797d;
        if (bVar2 != null) {
            bVar2.mo60216a(this);
        }
        m60220b("bindService Failed!!!");
    }

    /* renamed from: b */
    public final void m60220b(String str) {
        C16866c.m60152a(f93793e + " " + str);
    }

    /* renamed from: c */
    public String m60222c() {
        Context context = this.f93794a;
        if (context == null) {
            m60220b("Context is null.");
            throw new IllegalArgumentException("Context is null, must be new OpenDeviceId first");
        }
        String packageName = context.getPackageName();
        m60220b("liufeng, getAAID package：" + packageName);
        if (packageName == null || packageName.equals("")) {
            m60220b("input package is null!");
            return null;
        }
        try {
            InterfaceC16888n interfaceC16888n = this.f93795b;
            if (interfaceC16888n != null) {
                return interfaceC16888n.mo60212b(packageName);
            }
            return null;
        } catch (Exception unused) {
            this.m60219a("getAAID error, RemoteException!");
            return null;
        }
    }

    /* renamed from: d */
    public void m60223d() {
        try {
            this.f93794a.unbindService(this.f93796c);
            m60220b("unBind Service successful");
        } catch (IllegalArgumentException unused) {
            m60219a("unBind Service exception");
        }
        this.f93795b = null;
    }

    /* renamed from: a */
    public final void m60219a(String str) {
        C16866c.m60153b(f93793e + " " + str);
    }

    /* renamed from: b */
    public boolean m60221b() {
        try {
            if (this.f93795b == null) {
                return false;
            }
            m60220b("Device support opendeviceid");
            return this.f93795b.mo60213c();
        } catch (Exception unused) {
            this.m60219a("isSupport error, RemoteException!");
            return false;
        }
    }

    /* renamed from: a */
    public String m60218a() {
        if (this.f93794a != null) {
            try {
                InterfaceC16888n interfaceC16888n = this.f93795b;
                if (interfaceC16888n != null) {
                    return interfaceC16888n.mo60211b();
                }
                return null;
            } catch (Exception e) {
                this.m60219a("getOAID error, RemoteException!");
                e.printStackTrace();
                return null;
            }
        }
        m60219a("Context is null.");
        throw new IllegalArgumentException("Context is null, must be new OpenDeviceId first");
    }
}
