package com.huawei.stylus.penengine;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import com.huawei.penkit.impl.KitManager;
import com.huawei.stylus.penengine.version.IVersionInfo;
import java.util.NoSuchElementException;
import java.util.Optional;

/* loaded from: classes4.dex */
public class HwPenEngineManager {

    /* renamed from: a */
    public static final String f38971a = "HwPenEngineManager";

    /* renamed from: b */
    public static final String f38972b = "com.huawei.penkit.impl.KitManager";

    /* renamed from: c */
    public static int f38973c = -1;

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public static Optional<VersionInfo> m30906a(KitManager kitManager) {
        IVersionInfo versionInfo;
        if (kitManager != null && (versionInfo = kitManager.getVersionInfo()) != null) {
            return Optional.ofNullable(new VersionInfo(versionInfo));
        }
        return Optional.empty();
    }

    public static int getApiLevel() {
        return f38973c;
    }

    public static boolean isApiLevelCompatible(int i) {
        return i >= 1 && getApiLevel() >= i;
    }

    @SuppressLint({"NewApi"})
    public static boolean isEngineRuntimeAvailable(Context context) {
        if (context == null || !VersionInfo.isKitRuntimeAvailable(context)) {
            return false;
        }
        try {
            Class.forName(f38972b);
            try {
                VersionInfo versionInfo = m30906a(new KitManager(context)).get();
                f38973c = versionInfo.getApiLevel();
                return versionInfo.isAllCompatible();
            } catch (NoSuchElementException unused) {
                Log.e(f38971a, "KitManager NoSuchElement");
                return false;
            }
        } catch (ClassNotFoundException unused2) {
            Log.i(f38971a, "KitManager is unavailable");
            return false;
        }
    }

    public static boolean isSupportEink(Context context) {
        if (isEngineRuntimeAvailable(context) && isApiLevelCompatible(3)) {
            try {
                Class.forName(f38972b);
                return new KitManager(context).isSupportEink();
            } catch (ClassNotFoundException unused) {
                Log.i(f38971a, "KitManager is unavailable");
            }
        }
        return false;
    }

    public static boolean isSupportFeature(Context context, int i) {
        if (isEngineRuntimeAvailable(context)) {
            return isApiLevelCompatible(i);
        }
        return false;
    }
}
