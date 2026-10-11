package com.huawei.stylus.penengine;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.huawei.stylus.penengine.version.IVersionInfo;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class VersionInfo {
    public static final int API_LEVEL_1 = 1;
    public static final int API_LEVEL_2 = 2;
    public static final int API_LEVEL_3 = 3;

    /* renamed from: b */
    public static final String f38974b = "VersionInfo";

    /* renamed from: c */
    public static final String f38975c = "com.huawei.featurelayer.sharedfeature.stylus";

    /* renamed from: d */
    public static final int f38976d = 110101300;

    /* renamed from: e */
    public static final String f38977e = "11.1.1.300";

    /* renamed from: f */
    public static final Pattern f38978f = Pattern.compile("(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:\\.(\\d+))");

    /* renamed from: a */
    public IVersionInfo f38979a;

    public VersionInfo(IVersionInfo iVersionInfo) {
        this.f38979a = iVersionInfo;
    }

    public static boolean isKitRuntimeAvailable(Context context) {
        if (context == null) {
            Log.e(f38974b, "isKitRuntimeAvailable fail, context is null");
            return false;
        }
        try {
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(f38974b, "PenKit is NOT installed on this device!");
        }
        return context.getPackageManager().getPackageInfo(f38975c, 0) != null;
    }

    /* renamed from: a */
    public final IVersionInfo m30907a() {
        return this.f38979a;
    }

    /* renamed from: b */
    public final boolean m30908b(String str, int i) {
        if (m30907a() == null) {
            Log.e(f38974b, "SDK is NOT compatible with Runtime !");
            return false;
        }
        String versionName = m30907a().getVersionName();
        if (versionName != null && versionName.length() != 0) {
            Pattern pattern = f38978f;
            Matcher matcher = pattern.matcher(versionName);
            Matcher matcher2 = pattern.matcher(str);
            if (matcher.matches() && matcher2.matches()) {
                try {
                    return Integer.parseInt(matcher.group(1)) == Integer.parseInt(matcher2.group(1));
                } catch (NumberFormatException unused) {
                    Log.e(f38974b, "NumberFormatException err!");
                }
            }
        }
        return false;
    }

    public int getApiLevel() {
        if (m30907a() != null) {
            return m30907a().getApiLevel();
        }
        return -1;
    }

    public boolean isAllCompatible() {
        return m30908b(f38977e, f38976d);
    }
}
