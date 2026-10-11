package com.miui.penengine.p011a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import com.miui.penengine.p013c.C6985b;
import com.miui.penengine.p014d.C6991e;
import com.miui.penengine.p015e.C6992a;
import com.miui.penengine.p015e.C6993b;
import com.miui.penengine.p015e.C6996e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.miui.penengine.p015e.C7000i;
import com.miui.penengine.p015e.C7001j;
import com.miui.penengine.p015e.InterfaceC6994c;
import com.miui.penengine.p017g.InterfaceC7012a;
import com.miui.penengine.p017g.InterfaceC7013b;
import dalvik.system.PathClassLoader;
import java.io.File;

/* renamed from: com.miui.penengine.a.b */
/* loaded from: classes7.dex */
public class C6982b implements IBinder.DeathRecipient {

    /* renamed from: A */
    public static final String f39546A = "stylus_pencil_engine_version";

    /* renamed from: B */
    public static final String f39547B = "com.xiaomi.touchservice";

    /* renamed from: C */
    public static final String f39548C = "/system_ext/framework/xiaomi-pencilengine-pad.jar";

    /* renamed from: D */
    public static final String f39549D = "com.xiaomi.touchservice.pencilengine.PencilEngineManagerService";

    /* renamed from: m */
    public static volatile C6982b f39550m = null;

    /* renamed from: n */
    public static final boolean f39551n;

    /* renamed from: o */
    public static boolean f39552o = false;

    /* renamed from: p */
    public static C6996e f39553p = null;

    /* renamed from: q */
    public static C6997f f39554q = null;

    /* renamed from: r */
    public static C7001j f39555r = null;

    /* renamed from: s */
    public static InterfaceC6994c f39556s = null;

    /* renamed from: t */
    public static C7000i f39557t = null;

    /* renamed from: u */
    public static PathClassLoader f39558u = null;

    /* renamed from: v */
    public static final int f39559v = 1;

    /* renamed from: w */
    public static final int f39560w = 2;

    /* renamed from: x */
    public static final int f39561x = 4;

    /* renamed from: y */
    public static final String f39562y = "MI-PencilManager";

    /* renamed from: z */
    public static final String f39563z = "0.3.2";

    /* renamed from: a */
    public Context f39564a;

    /* renamed from: c */
    public String f39566c;

    /* renamed from: d */
    public boolean f39567d = false;

    /* renamed from: h */
    public InterfaceC7012a f39571h = null;

    /* renamed from: g */
    public int f39570g = 0;

    /* renamed from: e */
    public boolean f39568e = false;

    /* renamed from: f */
    public boolean f39569f = false;

    /* renamed from: b */
    public Handler f39565b = new b(Looper.getMainLooper());

    /* renamed from: i */
    public C6992a f39572i = new C6992a();

    /* renamed from: j */
    public C6999h f39573j = new C6999h();

    /* renamed from: l */
    public final c f39575l = new c();

    /* renamed from: k */
    public final ServiceConnection f39574k = new a();

    /* renamed from: com.miui.penengine.a.b$a */
    /* loaded from: classes7.dex */
    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C6982b.this.f39571h = InterfaceC7012a.b.m31442a(iBinder);
            try {
                iBinder.linkToDeath(C6982b.this, 0);
                C6982b.this.f39565b.sendEmptyMessage(0);
                Log.i(C6982b.f39562y, "Service connected: " + C6982b.this.f39571h);
            } catch (RemoteException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C6982b.this.f39571h.asBinder().unlinkToDeath(C6982b.this, 0);
            C6982b.this.f39571h = null;
            Log.i(C6982b.f39562y, "Service disconnected");
        }
    }

    /* renamed from: com.miui.penengine.a.b$b */
    /* loaded from: classes7.dex */
    public class b extends Handler {

        /* renamed from: b */
        public static final int f39577b = 0;

        /* renamed from: c */
        public static final int f39578c = 1;

        /* renamed from: d */
        public static final int f39579d = 2;

        /* renamed from: e */
        public static final String f39580e = "color";

        /* renamed from: f */
        public static final String f39581f = "color_space";

        public b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i != 0) {
                if (i == 1) {
                    if (C6982b.this.f39572i != null) {
                        C6982b.this.f39572i.m31313a(message.getData());
                        return;
                    }
                    return;
                } else {
                    if (i != 2) {
                        return;
                    }
                    Intent intent = new Intent();
                    intent.setComponent(new ComponentName(C6982b.f39547B, C6982b.f39549D));
                    Log.i(C6982b.f39562y, "Reconnect service, is bound service = " + C6982b.this.f39564a.bindService(intent, C6982b.this.f39574k, 1));
                    return;
                }
            }
            if (C6982b.this.f39571h == null) {
                return;
            }
            try {
                C6982b c6982b = C6982b.this;
                String str = c6982b.f39566c;
                if (str != null) {
                    c6982b.f39571h.mo31441a(c6982b.f39575l, str);
                } else {
                    c6982b.f39571h.mo31440a(c6982b.f39575l);
                }
            } catch (RemoteException e) {
                Log.i(C6982b.f39562y, "Fail to register listener, " + e);
            }
            C6982b c6982b2 = C6982b.this;
            if (c6982b2.f39568e) {
                c6982b2.f39568e = false;
                C6982b.this.m31253a(true);
            }
            C6982b c6982b3 = C6982b.this;
            if (c6982b3.f39569f) {
                c6982b3.f39569f = false;
                C6982b.this.m31256b(true);
            }
        }
    }

    /* renamed from: com.miui.penengine.a.b$c */
    /* loaded from: classes7.dex */
    public class c extends InterfaceC7013b.b {

        /* renamed from: d */
        public static final int f39583d = 0;

        /* renamed from: e */
        public static final int f39584e = 1;

        /* renamed from: f */
        public static final int f39585f = 2;

        public c() {
        }

        @Override // com.miui.penengine.p017g.InterfaceC7013b
        /* renamed from: a */
        public void mo31260a(int i, int i2, int i3) {
            if (i == 0) {
                Message obtainMessage = C6982b.this.f39565b.obtainMessage(1);
                Bundle bundle = new Bundle();
                bundle.putInt("color", i3);
                bundle.putInt("color_space", i2);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }
    }

    static {
        String str;
        int i = 0;
        if (new File(f39548C).exists()) {
            f39551n = true;
            PathClassLoader pathClassLoader = new PathClassLoader(f39548C, ClassLoader.getSystemClassLoader());
            f39558u = pathClassLoader;
            int m31310a = C6991e.m31310a(pathClassLoader);
            if (m31310a != 0) {
                i = 0 | m31310a;
                C6985b.m31268b(f39562y, "LoadSysMotionEventInfo fail");
            }
            int m31340a = C6998g.m31340a(f39558u);
            if (m31340a != 0) {
                i |= m31340a;
                C6985b.m31268b(f39562y, "LoadSysStrokeEstimate fail");
            }
            int m31329a = C6996e.m31329a(f39558u);
            if (m31329a != 0) {
                i |= m31329a;
                C6985b.m31268b(f39562y, "LoadSysOneStroke fail");
            }
            int m31336a = C6997f.m31336a(f39558u);
            if (m31336a != 0) {
                i |= m31336a;
                C6985b.m31268b(f39562y, "LoadSysRecognize fail");
            }
            int m31344a = C7000i.m31344a(f39558u);
            if (m31344a != 0) {
                i |= m31344a;
                C6985b.m31268b(f39562y, "LoadPencilEngineManager fail");
            }
            if (i != 0) {
                Log.e(f39562y, "System initialization failed");
                return;
            }
            f39553p = new C6996e();
            f39554q = new C6997f();
            f39555r = new C7001j();
            f39556s = new C6998g();
            f39557t = new C7000i();
            f39552o = true;
            str = "System initialization successful";
        } else {
            f39551n = false;
            f39556s = C6993b.m31315c();
            str = "Estimate initialization successful";
        }
        Log.i(f39562y, str);
    }

    /* renamed from: j */
    public static C7001j m31252j() {
        if (f39555r == null) {
            C6985b.m31268b(f39562y, "Failed to getTouchFilmInstance");
        }
        return f39555r;
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        this.f39565b.sendEmptyMessageDelayed(2, 500L);
        Log.i(f39562y, "Service died, try to reconnect");
    }

    /* renamed from: k */
    public int m31259k() {
        InterfaceC7012a interfaceC7012a = this.f39571h;
        if (interfaceC7012a == null) {
            return -1;
        }
        try {
            return interfaceC7012a.mo31438a(0, 0);
        } catch (RemoteException e) {
            Log.i(f39562y, "Fail to trigger color picking, " + e);
            return -1;
        }
    }

    /* renamed from: c */
    public static C6982b m31239c() {
        if (f39550m == null) {
            synchronized (C6982b.class) {
                if (f39550m == null) {
                    f39550m = new C6982b();
                }
            }
        }
        return f39550m;
    }

    /* renamed from: d */
    public static C6996e m31242d() {
        return f39553p;
    }

    /* renamed from: e */
    public static C6997f m31243e() {
        if (f39554q == null) {
            C6985b.m31268b(f39562y, "Failed to getRecognizeInstance");
        }
        return f39554q;
    }

    /* renamed from: f */
    public static InterfaceC6994c m31245f() {
        if (f39556s == null) {
            C6985b.m31268b(f39562y, "Failed to getStrokeEstimateInstance");
        }
        return f39556s;
    }

    /* renamed from: h */
    public static boolean m31249h() {
        return f39552o && f39551n;
    }

    /* renamed from: i */
    public static C7000i m31251i() {
        if (f39557t == null) {
            C6985b.m31268b(f39562y, "Failed to getSysPencilEngineManager");
        }
        return f39557t;
    }

    /* renamed from: g */
    public C6999h m31258g() {
        if (this.f39567d) {
            return this.f39573j;
        }
        return null;
    }

    /* renamed from: b */
    public C6992a m31257b() {
        if (this.f39567d) {
            return this.f39572i;
        }
        return null;
    }

    /* renamed from: a */
    public void m31254a(int i) {
        synchronized (C6982b.class) {
            int i2 = (~i) & this.f39570g;
            this.f39570g = i2;
            if (i2 == 0 && this.f39567d) {
                InterfaceC7012a interfaceC7012a = this.f39571h;
                if (interfaceC7012a != null) {
                    try {
                        interfaceC7012a.mo31439a();
                        this.f39571h.asBinder().unlinkToDeath(this, 0);
                        this.f39571h = null;
                    } catch (RemoteException e) {
                        Log.i(f39562y, "Fail to unregister listener, " + e);
                    }
                }
                this.f39564a.unbindService(this.f39574k);
                this.f39567d = false;
                this.f39564a = null;
                Log.i(f39562y, "Unbound service");
            }
        }
    }

    /* renamed from: b */
    public int m31256b(boolean z) {
        InterfaceC7012a interfaceC7012a = this.f39571h;
        if (interfaceC7012a == null) {
            if (!z) {
                return 0;
            }
            this.f39569f = true;
            return 0;
        }
        try {
            return interfaceC7012a.mo31438a(2, z ? 1 : 0);
        } catch (RemoteException e) {
            Log.i(f39562y, "Fail to enable or disable touch film, " + e);
            return -1;
        }
    }

    /* renamed from: a */
    public static PathClassLoader m31235a() {
        if (!f39551n || f39558u == null) {
            C6985b.m31268b(f39562y, "Failed to getClassLoader");
        }
        return f39558u;
    }

    /* renamed from: a */
    public boolean m31255a(Context context, int i) {
        synchronized (C6982b.class) {
            this.f39570g = i | this.f39570g;
            boolean z = true;
            if (this.f39567d) {
                return true;
            }
            this.f39564a = context;
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(f39547B, f39549D));
            boolean bindService = this.f39564a.bindService(intent, this.f39574k, 1);
            String string = Settings.System.getString(this.f39564a.getContentResolver(), f39546A);
            if (string != null && string.equals(f39563z)) {
                this.f39566c = this.f39564a.getPackageName();
            }
            this.f39567d = bindService;
            StringBuilder sb = new StringBuilder("Is bound service = ");
            sb.append(bindService);
            sb.append(", is support notify system = ");
            if (this.f39566c == null) {
                z = false;
            }
            sb.append(z);
            Log.i(f39562y, sb.toString());
            return bindService;
        }
    }

    /* renamed from: a */
    public int m31253a(boolean z) {
        InterfaceC7012a interfaceC7012a = this.f39571h;
        if (interfaceC7012a == null) {
            if (!z) {
                return 0;
            }
            this.f39568e = true;
            return 0;
        }
        try {
            return interfaceC7012a.mo31438a(1, z ? 1 : 0);
        } catch (RemoteException e) {
            Log.i(f39562y, "Fail to enable or disable stylus posture, " + e);
            return -1;
        }
    }
}
