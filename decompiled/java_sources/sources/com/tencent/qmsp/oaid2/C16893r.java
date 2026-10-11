package com.tencent.qmsp.oaid2;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.IBinder;
import com.tencent.qmsp.oaid2.InterfaceC16892q;

/* renamed from: com.tencent.qmsp.oaid2.r */
/* loaded from: classes10.dex */
public class C16893r {

    /* renamed from: e */
    public static String f93800e = "com.mdid.msa";

    /* renamed from: a */
    public InterfaceC16894s f93801a;

    /* renamed from: b */
    public ServiceConnection f93802b;

    /* renamed from: c */
    public Context f93803c;

    /* renamed from: d */
    public InterfaceC16892q f93804d;

    /* renamed from: com.tencent.qmsp.oaid2.r$a */
    /* loaded from: classes10.dex */
    public class a implements ServiceConnection {

        /* renamed from: a */
        public InterfaceC16894s f93805a;

        public a(C16893r c16893r, InterfaceC16894s interfaceC16894s) {
            this.f93805a = interfaceC16894s;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (this) {
                C16893r.this.f93804d = InterfaceC16892q.a.m60229a(iBinder);
                new AsyncTaskC16895t(C16893r.this.f93804d, this.f93805a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C16893r.this.f93804d = null;
            C16893r.this.f93804d = null;
        }
    }

    public C16893r(Context context, InterfaceC16894s interfaceC16894s) {
        if (context == null) {
            throw new NullPointerException("Context can not be null.");
        }
        this.f93803c = context;
        this.f93801a = interfaceC16894s;
        this.f93802b = new a(this, interfaceC16894s);
    }

    /* renamed from: b */
    public String m60236b() {
        try {
            InterfaceC16892q interfaceC16892q = this.f93804d;
            return interfaceC16892q == null ? "" : interfaceC16892q.mo60224a();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: c */
    public boolean m60237c() {
        try {
            InterfaceC16892q interfaceC16892q = this.f93804d;
            if (interfaceC16892q == null) {
                return false;
            }
            return interfaceC16892q.mo60228g();
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: d */
    public void m60238d() {
        InterfaceC16892q interfaceC16892q = this.f93804d;
        if (interfaceC16892q != null) {
            try {
                interfaceC16892q.mo60227f();
                ServiceConnection serviceConnection = this.f93802b;
                if (serviceConnection != null) {
                    this.f93803c.unbindService(serviceConnection);
                }
            } catch (Exception unused) {
            }
            this.f93802b = null;
            this.f93804d = null;
        }
    }

    /* renamed from: a */
    public void m60235a(String str) {
        InterfaceC16894s interfaceC16894s;
        Intent intent = new Intent();
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
        intent.setAction("com.bun.msa.action.bindto.service");
        intent.putExtra("com.bun.msa.param.pkgname", str);
        if (this.f93803c.bindService(intent, this.f93802b, 1) || (interfaceC16894s = this.f93801a) == null) {
            return;
        }
        interfaceC16894s.mo60240b();
    }

    /* renamed from: a */
    public static boolean m60233a(Context context) {
        try {
            context.getPackageManager().getPackageInfo(f93800e, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* renamed from: a */
    public static void m60232a(Context context, String str) {
        Intent intent = new Intent();
        intent.setClassName(f93800e, "com.mdid.msa.service.MsaKlService");
        intent.setAction("com.bun.msa.action.start.service");
        intent.putExtra("com.bun.msa.param.pkgname", str);
        try {
            intent.putExtra("com.bun.msa.param.runinset", true);
            context.startService(intent);
        } catch (Exception unused) {
        }
    }

    /* renamed from: a */
    public String m60234a() {
        try {
            InterfaceC16892q interfaceC16892q = this.f93804d;
            return interfaceC16892q == null ? "" : interfaceC16892q.mo60226d();
        } catch (Exception unused) {
            return "";
        }
    }
}
