package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.hihonor.stylus.penengine.version.IVersionInfo;

/* loaded from: classes4.dex */
public final class z0o {

    /* renamed from: b */
    public static final String f91304b = "z0o";

    /* renamed from: c */
    public static final String f91305c = "com.hihonor.featurelayer.sharedfeature.stylus";

    /* renamed from: d */
    public static final int f91306d = 120000101;

    /* renamed from: e */
    public static final String f91307e = "12.0.0.101";

    /* renamed from: a */
    public IVersionInfo f91308a;

    public z0o(IVersionInfo iVersionInfo) {
        this.f91308a = iVersionInfo;
    }

    /* renamed from: c */
    public static boolean m58599c(Context context) {
        if (context == null) {
            Log.e(f91304b, "isKitRuntimeAvailable fail, context is null");
            return false;
        }
        try {
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(f91304b, "PenKit is NOT installed on this device!");
        }
        return context.getPackageManager().getPackageInfo(f91305c, 0) != null;
    }

    /* renamed from: a */
    public final IVersionInfo m58600a() {
        return this.f91308a;
    }

    /* renamed from: b */
    public boolean m58601b() {
        return m58602d("12.0.0.101", 120000101);
    }

    /* renamed from: d */
    public final boolean m58602d(String str, int i) {
        if (m58600a() != null) {
            return m58600a().isVersionCompatible(str, i);
        }
        Log.e(f91304b, "SDK is NOT compatible with Runtime !");
        return false;
    }
}
