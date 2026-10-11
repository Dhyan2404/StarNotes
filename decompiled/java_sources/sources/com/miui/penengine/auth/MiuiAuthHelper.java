package com.miui.penengine.auth;

import android.content.Context;
import android.util.Log;
import com.miui.penengine.p011a.C6982b;
import com.miui.penengine.p015e.C7000i;

/* loaded from: classes7.dex */
public class MiuiAuthHelper {

    /* renamed from: a */
    public static final String f39587a = "MiuiAuthHelper";

    /* loaded from: classes7.dex */
    public interface AuthResultListener {
        void onAuthComplete(boolean z);
    }

    public static synchronized void destroyAuthService() {
        synchronized (MiuiAuthHelper.class) {
            C7000i m31251i = C6982b.m31251i();
            if (m31251i != null) {
                m31251i.m31346a();
            }
        }
    }

    public static synchronized boolean initAuthService(Context context, AuthResultListener authResultListener) {
        synchronized (MiuiAuthHelper.class) {
            if (!C6982b.m31249h()) {
                Log.e(f39587a, "System environment init error");
                return false;
            }
            C7000i m31251i = C6982b.m31251i();
            if (m31251i != null) {
                return m31251i.m31348a(context, authResultListener);
            }
            Log.e(f39587a, "MiuiAuthHelper, initAuthService error, pencilEngineManager is null!");
            return false;
        }
    }

    public static synchronized void runAuthConnect() {
        synchronized (MiuiAuthHelper.class) {
            C7000i m31251i = C6982b.m31251i();
            if (m31251i != null) {
                m31251i.m31349b();
            }
        }
    }
}
