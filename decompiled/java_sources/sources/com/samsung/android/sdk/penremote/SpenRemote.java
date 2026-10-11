package com.samsung.android.sdk.penremote;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.sdk.SsdkVendorCheck;
import com.samsung.android.sdk.penremote.ISPenRemoteService;

/* loaded from: classes9.dex */
public class SpenRemote {
    public static final int FEATURE_TYPE_AIR_MOTION = 1;
    public static final int FEATURE_TYPE_BUTTON = 0;

    /* renamed from: i */
    public static final String f63306i = "SM_SDK";

    /* renamed from: j */
    public static final String f63307j = "button";

    /* renamed from: k */
    public static final String f63308k = "airmotion";

    /* renamed from: l */
    public static final String f63309l = "com.samsung.android.service.aircommand";

    /* renamed from: m */
    public static final String f63310m = "com.samsung.android.service.aircommand.remotespen.external.RemoteSpenBindingService";

    /* renamed from: n */
    public static final String f63311n = "binderType";

    /* renamed from: o */
    public static final int f63312o = 2;

    /* renamed from: p */
    public static final String f63313p = "clientVersion";

    /* renamed from: q */
    public static final String f63314q = "clientPackageName";

    /* renamed from: r */
    public static final int f63315r = 16777217;

    /* renamed from: a */
    public boolean[] f63316a;

    /* renamed from: b */
    public boolean f63317b;

    /* renamed from: c */
    public ISPenRemoteService f63318c;

    /* renamed from: d */
    public boolean f63319d;

    /* renamed from: e */
    public Handler f63320e;

    /* renamed from: f */
    public ConnectionResultCallback f63321f;

    /* renamed from: g */
    public ConnectionStateChangeListener f63322g;

    /* renamed from: h */
    public ServiceConnection f63323h;

    /* loaded from: classes9.dex */
    public interface ConnectionResultCallback {
        void onFailure(int i);

        void onSuccess(SpenUnitManager spenUnitManager);
    }

    /* loaded from: classes9.dex */
    public interface ConnectionStateChangeListener {
        void onChange(int i);
    }

    /* loaded from: classes9.dex */
    public static class Error {
        public static final int CONNECTION_FAILED = -2;
        public static final int UNKNOWN = -100;
        public static final int UNSUPPORTED_DEVICE = -1;
    }

    /* loaded from: classes9.dex */
    public static class State {
        public static final int CONNECTED = 0;
        public static final int DISCONNECTED = -1;
        public static final int DISCONNECTED_BY_UNKNOWN_REASON = -2;
    }

    /* renamed from: com.samsung.android.sdk.penremote.SpenRemote$a */
    /* loaded from: classes9.dex */
    public class ServiceConnectionC13116a implements ServiceConnection {
        public ServiceConnectionC13116a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d("SM_SDK", "SpenRemoteService : Connected!");
            if (iBinder == null) {
                if (SpenRemote.this.f63321f != null) {
                    SpenRemote.this.f63321f.onFailure(-2);
                    return;
                }
                return;
            }
            SpenRemote.this.f63318c = ISPenRemoteService.Stub.asInterface(iBinder);
            SpenUnitManager m52414c = SpenUnitManager.m52414c();
            m52414c.m52417d(SpenRemote.this.f63318c);
            if (SpenRemote.this.f63321f != null) {
                SpenRemote.this.f63321f.onSuccess(m52414c);
            }
            SpenRemote.this.m52407j(0);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            SpenRemote.this.f63318c = null;
            SpenUnitManager.m52414c().m52417d(null);
            Log.d("SM_SDK", "SpenRemoteService : Disconnected!");
            SpenRemote.this.m52407j(-2);
        }
    }

    /* renamed from: com.samsung.android.sdk.penremote.SpenRemote$b */
    /* loaded from: classes9.dex */
    public class RunnableC13117b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ int f63325e;

        public RunnableC13117b(int i) {
            this.f63325e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SpenRemote.this.f63321f != null) {
                SpenRemote.this.f63321f.onFailure(this.f63325e);
            }
        }
    }

    /* renamed from: com.samsung.android.sdk.penremote.SpenRemote$c */
    /* loaded from: classes9.dex */
    public class RunnableC13118c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ int f63327e;

        public RunnableC13118c(int i) {
            this.f63327e = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SpenRemote.this.f63322g != null) {
                SpenRemote.this.f63322g.onChange(this.f63327e);
            }
        }
    }

    /* renamed from: com.samsung.android.sdk.penremote.SpenRemote$d */
    /* loaded from: classes9.dex */
    public static class C13119d {

        /* renamed from: a */
        public static final SpenRemote f63329a = new SpenRemote(null);
    }

    public /* synthetic */ SpenRemote(ServiceConnectionC13116a serviceConnectionC13116a) {
        this();
    }

    public static SpenRemote getInstance() {
        return C13119d.f63329a;
    }

    public void connect(Context context, ConnectionResultCallback connectionResultCallback) {
        Log.d("SM_SDK", "SPen Remote SDK version : " + getVersionName());
        if (context == null) {
            throw new IllegalArgumentException("context is null.");
        }
        if (!(context instanceof Activity)) {
            throw new IllegalArgumentException("Activity context is only allowed.");
        }
        if (!SsdkVendorCheck.isSamsungDevice()) {
            Log.e("SM_SDK", "This is not Samsung device.");
            m52406i(-1);
        }
        if (!m52403f(context)) {
            Log.e("SM_SDK", "This device does not support S Pen.");
            m52406i(-1);
        }
        if (!SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN")) {
            Log.e("SM_SDK", "This device does not support SPen Remote.");
            m52406i(-1);
            return;
        }
        m52405h();
        if (this.f63316a == null) {
            Log.e("SM_SDK", "This device does not support SPen Remote features.");
            m52406i(-1);
        } else {
            this.f63321f = connectionResultCallback;
            m52408k(context);
        }
    }

    public void disconnect(Context context) {
        m52409l(context);
    }

    /* renamed from: f */
    public final boolean m52403f(Context context) {
        try {
            context.getPackageManager().getPackageInfo(f63309l, 128);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.d("SM_SDK", "Could not find S Pen Framework");
            return false;
        }
    }

    /* renamed from: g */
    public final boolean m52404g(int i) {
        m52405h();
        boolean[] zArr = this.f63316a;
        if (zArr != null && i < zArr.length) {
            return zArr[i];
        }
        return false;
    }

    public int getVersionCode() {
        return f63315r;
    }

    public String getVersionName() {
        return String.format("%d.%d.%d", 1, 0, 1);
    }

    /* renamed from: h */
    public final void m52405h() {
        if (this.f63317b) {
            return;
        }
        this.f63317b = true;
        String[] split = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_COMMON_CONFIG_BLE_SPEN_SPEC", "").split(",");
        if (split.length == 0) {
            this.f63316a = null;
            return;
        }
        this.f63316a = new boolean[split.length - 1];
        for (String str : split) {
            if ("button".equals(str)) {
                this.f63316a[0] = true;
            } else if (f63308k.equals(str)) {
                this.f63316a[1] = true;
            }
        }
    }

    /* renamed from: i */
    public final void m52406i(int i) {
        this.f63320e.post(new RunnableC13117b(i));
    }

    public boolean isConnected() {
        return this.f63319d;
    }

    public boolean isFeatureEnabled(int i) {
        return m52404g(i);
    }

    /* renamed from: j */
    public final void m52407j(int i) {
        this.f63320e.post(new RunnableC13118c(i));
    }

    /* renamed from: k */
    public final void m52408k(Context context) {
        Log.d("SM_SDK", "bind SpenRemoteService");
        try {
            Intent intent = new Intent();
            intent.setClassName(f63309l, f63310m);
            intent.putExtra(f63311n, 2);
            intent.putExtra(f63313p, f63315r);
            intent.putExtra(f63314q, context.getPackageName());
            context.bindService(intent, this.f63323h, 1);
            this.f63319d = true;
        } catch (SecurityException unused) {
            Log.e("SM_SDK", "Add com.samsung.android.sdk.penremote.BIND_SPEN_REMOTE permission");
        }
    }

    /* renamed from: l */
    public final void m52409l(Context context) {
        if (this.f63319d) {
            Log.d("SM_SDK", "unbind SpenRemoteService");
            SpenUnitManager.m52414c().m52418e();
            context.unbindService(this.f63323h);
            this.f63319d = false;
            m52407j(-1);
        }
    }

    public void setConnectionStateChangeListener(ConnectionStateChangeListener connectionStateChangeListener) {
        this.f63322g = connectionStateChangeListener;
    }

    public SpenRemote() {
        this.f63317b = false;
        this.f63319d = false;
        this.f63320e = new Handler();
        this.f63323h = new ServiceConnectionC13116a();
    }
}
