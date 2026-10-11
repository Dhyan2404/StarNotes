package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.apps.common.proguard.SideEffectFree;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes5.dex */
public final class DeviceProperties {

    /* renamed from: a */
    @Nullable
    public static Boolean f29470a;

    /* renamed from: b */
    @Nullable
    public static Boolean f29471b;

    /* renamed from: c */
    @Nullable
    public static Boolean f29472c;

    /* renamed from: d */
    @Nullable
    public static Boolean f29473d;

    /* renamed from: e */
    @Nullable
    public static Boolean f29474e;

    /* renamed from: f */
    @Nullable
    public static Boolean f29475f;

    /* renamed from: g */
    @Nullable
    public static Boolean f29476g;

    /* renamed from: h */
    @Nullable
    public static Boolean f29477h;

    /* renamed from: i */
    @Nullable
    public static Boolean f29478i;

    /* renamed from: j */
    @Nullable
    public static Boolean f29479j;

    /* renamed from: k */
    @Nullable
    public static Boolean f29480k;

    /* renamed from: l */
    @Nullable
    public static Boolean f29481l;

    /* renamed from: m */
    @Nullable
    public static Boolean f29482m;

    /* renamed from: n */
    @Nullable
    public static Boolean f29483n;

    @KeepForSdk
    public static boolean isAuto(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f29479j == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastO() && packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                z = true;
            }
            f29479j = Boolean.valueOf(z);
        }
        return f29479j.booleanValue();
    }

    @KeepForSdk
    public static boolean isBstar(@NonNull Context context) {
        if (f29482m == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastR() && context.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")) {
                z = true;
            }
            f29482m = Boolean.valueOf(z);
        }
        return f29482m.booleanValue();
    }

    @KeepForSdk
    public static boolean isFoldable(@NonNull Context context) {
        if (f29472c == null) {
            SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
            boolean z = false;
            if (PlatformVersion.isAtLeastR() && sensorManager != null && sensorManager.getDefaultSensor(36) != null) {
                z = true;
            }
            f29472c = Boolean.valueOf(z);
        }
        return f29472c.booleanValue();
    }

    @KeepForSdk
    public static boolean isLatchsky(@NonNull Context context) {
        if (f29476g == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services")) {
                z = true;
            }
            f29476g = Boolean.valueOf(z);
        }
        return f29476g.booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006c, code lost:
    
        if (isXr(r4) == false) goto L32;
     */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isPhone(@androidx.annotation.NonNull android.content.Context r4) {
        /*
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.f29470a
            if (r0 != 0) goto L76
            boolean r0 = isFoldable(r4)
            r1 = 1
            if (r0 != 0) goto L70
            boolean r0 = isTablet(r4)
            r2 = 0
            if (r0 != 0) goto L6f
            boolean r0 = isWearable(r4)
            if (r0 != 0) goto L6f
            boolean r0 = zzb(r4)
            if (r0 != 0) goto L6f
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.f29478i
            if (r0 != 0) goto L32
            android.content.pm.PackageManager r0 = r4.getPackageManager()
            java.lang.String r3 = "org.chromium.arc"
            boolean r0 = r0.hasSystemFeature(r3)
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            com.google.android.gms.common.util.DeviceProperties.f29478i = r0
        L32:
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.f29478i
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L6f
            boolean r0 = isAuto(r4)
            if (r0 != 0) goto L6f
            boolean r0 = isTv(r4)
            if (r0 != 0) goto L6f
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.f29481l
            if (r0 != 0) goto L5a
            android.content.pm.PackageManager r0 = r4.getPackageManager()
            java.lang.String r3 = "com.google.android.feature.AMATI_EXPERIENCE"
            boolean r0 = r0.hasSystemFeature(r3)
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            com.google.android.gms.common.util.DeviceProperties.f29481l = r0
        L5a:
            java.lang.Boolean r0 = com.google.android.gms.common.util.DeviceProperties.f29481l
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L6f
            boolean r0 = isBstar(r4)
            if (r0 != 0) goto L6f
            boolean r4 = isXr(r4)
            if (r4 != 0) goto L6f
            goto L70
        L6f:
            r1 = r2
        L70:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r1)
            com.google.android.gms.common.util.DeviceProperties.f29470a = r4
        L76:
            java.lang.Boolean r4 = com.google.android.gms.common.util.DeviceProperties.f29470a
            boolean r4 = r4.booleanValue()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.DeviceProperties.isPhone(android.content.Context):boolean");
    }

    @KeepForSdk
    public static boolean isSevenInchTablet(@NonNull Context context) {
        return zzc(context.getResources());
    }

    @KeepForSdk
    @TargetApi(21)
    public static boolean isSidewinder(@NonNull Context context) {
        return zza(context);
    }

    @KeepForSdk
    public static boolean isTablet(@NonNull Context context) {
        return isTablet(context.getResources());
    }

    @KeepForSdk
    public static boolean isTv(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f29480k == null) {
            boolean z = true;
            if (!packageManager.hasSystemFeature("com.google.android.tv") && !packageManager.hasSystemFeature("android.hardware.type.television") && !packageManager.hasSystemFeature("android.software.leanback")) {
                z = false;
            }
            f29480k = Boolean.valueOf(z);
        }
        return f29480k.booleanValue();
    }

    @KeepForSdk
    public static boolean isUserBuild() {
        int i = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        return "user".equals(Build.TYPE);
    }

    @SideEffectFree
    @KeepForSdk
    @TargetApi(20)
    public static boolean isWearable(@NonNull Context context) {
        return zzd(context.getPackageManager());
    }

    @KeepForSdk
    @TargetApi(26)
    public static boolean isWearableWithoutPlayStore(@NonNull Context context) {
        if (isWearable(context) && !PlatformVersion.isAtLeastN()) {
            return true;
        }
        if (zza(context)) {
            return !PlatformVersion.isAtLeastO() || PlatformVersion.isAtLeastR();
        }
        return false;
    }

    @KeepForSdk
    public static boolean isXr(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f29483n == null) {
            f29483n = Boolean.valueOf(packageManager.hasSystemFeature("android.software.xr.immersive"));
        }
        return f29483n.booleanValue();
    }

    @TargetApi(21)
    public static boolean zza(@NonNull Context context) {
        if (f29475f == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastLollipop() && context.getPackageManager().hasSystemFeature("cn.google")) {
                z = true;
            }
            f29475f = Boolean.valueOf(z);
        }
        return f29475f.booleanValue();
    }

    public static boolean zzb(@NonNull Context context) {
        if (f29477h == null) {
            boolean z = true;
            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.iot") && !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
                z = false;
            }
            f29477h = Boolean.valueOf(z);
        }
        return f29477h.booleanValue();
    }

    public static boolean zzc(@NonNull Resources resources) {
        boolean z = false;
        if (resources == null) {
            return false;
        }
        if (f29473d == null) {
            Configuration configuration = resources.getConfiguration();
            if ((configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600) {
                z = true;
            }
            f29473d = Boolean.valueOf(z);
        }
        return f29473d.booleanValue();
    }

    @SideEffectFree
    @TargetApi(20)
    public static boolean zzd(@NonNull PackageManager packageManager) {
        if (f29474e == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastKitKatWatch() && packageManager.hasSystemFeature("android.hardware.type.watch")) {
                z = true;
            }
            f29474e = Boolean.valueOf(z);
        }
        return f29474e.booleanValue();
    }

    @KeepForSdk
    public static boolean isTablet(@NonNull Resources resources) {
        if (resources == null) {
            return false;
        }
        if (f29471b == null) {
            f29471b = Boolean.valueOf((resources.getConfiguration().screenLayout & 15) > 3 || zzc(resources));
        }
        return f29471b.booleanValue();
    }
}
