package com.hihonor.android.magicx.app.penengine;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import com.hihonor.penkit.impl.KitManager;
import com.hihonor.stylus.penengine.version.IVersionInfo;
import com.sunia.HTREnginev2.z0o;
import java.util.Optional;

/* loaded from: classes4.dex */
public class HnPenEngineManager {

    /* renamed from: a */
    public static final String f38894a = "HnPenEngineManager";

    /* renamed from: b */
    public static final String f38895b = "com.hihonor.penkit.impl.KitManager";

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public static Optional<z0o> m30874a(KitManager kitManager) {
        IVersionInfo versionInfo;
        if (kitManager != null && (versionInfo = kitManager.getVersionInfo()) != null) {
            return Optional.ofNullable(new z0o(versionInfo));
        }
        return Optional.empty();
    }

    @SuppressLint({"NewApi"})
    public static boolean isEngineRuntimeAvailable(Context context) {
        if (context == null || !z0o.m58599c(context)) {
            return false;
        }
        try {
            Class.forName(f38895b);
            KitManager kitManager = new KitManager(context);
            if (m30874a(kitManager).isPresent()) {
                return m30874a(kitManager).get().m58601b();
            }
            return false;
        } catch (ClassNotFoundException unused) {
            Log.i(f38894a, "KitManager is unavailable");
            return false;
        }
    }

    public static boolean isSupportDoubleClick(Context context) {
        if (context == null) {
            return false;
        }
        try {
            Class.forName(f38895b);
            return new KitManager(context).isSupportDoubleClick();
        } catch (ClassNotFoundException unused) {
            Log.i(f38894a, "KitManager is unavailable");
            return false;
        }
    }
}
