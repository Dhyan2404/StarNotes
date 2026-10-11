package com.blankj.utilcode.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Process;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserModel;
import com.blankj.utilcode.util.Utils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class AppUtils {

    /* loaded from: classes3.dex */
    public static class AppInfo {

        /* renamed from: a */
        public String f13622a;

        /* renamed from: b */
        public String f13623b;

        /* renamed from: c */
        public Drawable f13624c;

        /* renamed from: d */
        public String f13625d;

        /* renamed from: e */
        public String f13626e;

        /* renamed from: f */
        public int f13627f;

        /* renamed from: g */
        public boolean f13628g;

        public AppInfo(String str, String str2, Drawable drawable, String str3, String str4, int i, boolean z) {
            setName(str2);
            setIcon(drawable);
            setPackageName(str);
            setPackagePath(str3);
            setVersionName(str4);
            setVersionCode(i);
            setSystem(z);
        }

        public Drawable getIcon() {
            return this.f13624c;
        }

        public String getName() {
            return this.f13623b;
        }

        public String getPackageName() {
            return this.f13622a;
        }

        public String getPackagePath() {
            return this.f13625d;
        }

        public int getVersionCode() {
            return this.f13627f;
        }

        public String getVersionName() {
            return this.f13626e;
        }

        public boolean isSystem() {
            return this.f13628g;
        }

        public void setIcon(Drawable drawable) {
            this.f13624c = drawable;
        }

        public void setName(String str) {
            this.f13623b = str;
        }

        public void setPackageName(String str) {
            this.f13622a = str;
        }

        public void setPackagePath(String str) {
            this.f13625d = str;
        }

        public void setSystem(boolean z) {
            this.f13628g = z;
        }

        public void setVersionCode(int i) {
            this.f13627f = i;
        }

        public void setVersionName(String str) {
            this.f13626e = str;
        }

        @NonNull
        public String toString() {
            return "{\n    pkg name: " + getPackageName() + "\n    app icon: " + getIcon() + "\n    app name: " + getName() + "\n    app path: " + getPackagePath() + "\n    app v name: " + getVersionName() + "\n    app v code: " + getVersionCode() + "\n    is system: " + isSystem() + "\n}";
        }
    }

    public AppUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static List<String> m7958a(String str, String str2) {
        Signature[] appSignatures;
        ArrayList arrayList = new ArrayList();
        if (!C1887b.m8438D0(str) && (appSignatures = getAppSignatures(str)) != null && appSignatures.length > 0) {
            for (Signature signature : appSignatures) {
                arrayList.add(C1887b.m8515l(C1887b.m8511j0(signature.toByteArray(), str2)).replaceAll("(?<=[0-9A-F]{2})[0-9A-F]{2}", ":$0"));
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static AppInfo m7959b(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo == null) {
            return null;
        }
        String str = packageInfo.versionName;
        int i = packageInfo.versionCode;
        String str2 = packageInfo.packageName;
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        if (applicationInfo == null) {
            return new AppInfo(str2, "", null, "", str, i, false);
        }
        return new AppInfo(str2, applicationInfo.loadLabel(packageManager).toString(), applicationInfo.loadIcon(packageManager), applicationInfo.sourceDir, str, i, (applicationInfo.flags & 1) != 0);
    }

    public static void exitApp() {
        C1887b.m8437D();
        System.exit(0);
    }

    @Nullable
    public static AppInfo getApkInfo(File file) {
        if (file != null && file.isFile() && file.exists()) {
            return getApkInfo(file.getAbsolutePath());
        }
        return null;
    }

    @Nullable
    public static Drawable getAppIcon() {
        return getAppIcon(Utils.getApp().getPackageName());
    }

    public static int getAppIconId() {
        return getAppIconId(Utils.getApp().getPackageName());
    }

    @Nullable
    public static AppInfo getAppInfo() {
        return getAppInfo(Utils.getApp().getPackageName());
    }

    @NonNull
    public static String getAppName() {
        return getAppName(Utils.getApp().getPackageName());
    }

    @NonNull
    public static String getAppPackageName() {
        return Utils.getApp().getPackageName();
    }

    @NonNull
    public static String getAppPath() {
        return getAppPath(Utils.getApp().getPackageName());
    }

    @Nullable
    public static Signature[] getAppSignatures() {
        return getAppSignatures(Utils.getApp().getPackageName());
    }

    @NonNull
    public static List<String> getAppSignaturesMD5() {
        return getAppSignaturesMD5(Utils.getApp().getPackageName());
    }

    @NonNull
    public static List<String> getAppSignaturesSHA1() {
        return getAppSignaturesSHA1(Utils.getApp().getPackageName());
    }

    @NonNull
    public static List<String> getAppSignaturesSHA256() {
        return getAppSignaturesSHA256(Utils.getApp().getPackageName());
    }

    public static int getAppUid() {
        return getAppUid(Utils.getApp().getPackageName());
    }

    public static int getAppVersionCode() {
        return getAppVersionCode(Utils.getApp().getPackageName());
    }

    @NonNull
    public static String getAppVersionName() {
        return getAppVersionName(Utils.getApp().getPackageName());
    }

    @NonNull
    public static List<AppInfo> getAppsInfo() {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = Utils.getApp().getPackageManager();
        if (packageManager == null) {
            return arrayList;
        }
        Iterator<PackageInfo> it2 = packageManager.getInstalledPackages(0).iterator();
        while (it2.hasNext()) {
            AppInfo m7959b = m7959b(packageManager, it2.next());
            if (m7959b != null) {
                arrayList.add(m7959b);
            }
        }
        return arrayList;
    }

    public static void installApp(String str) {
        installApp(C1887b.m8461P(str));
    }

    public static boolean isAppDebug() {
        return isAppDebug(Utils.getApp().getPackageName());
    }

    public static boolean isAppForeground() {
        return C1887b.m8528r0();
    }

    public static boolean isAppInstalled(String str) {
        if (C1887b.m8438D0(str)) {
            return false;
        }
        try {
            return Utils.getApp().getPackageManager().getApplicationInfo(str, 0).enabled;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean isAppRoot() {
        return C1887b.m8433B("echo root", true).result == 0;
    }

    public static boolean isAppRunning(String str) {
        ActivityManager activityManager;
        if (!C1887b.m8438D0(str) && (activityManager = (ActivityManager) Utils.getApp().getSystemService(ActivityChooserModel.f1429r)) != null) {
            List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(Integer.MAX_VALUE);
            if (runningTasks != null && runningTasks.size() > 0) {
                Iterator<ActivityManager.RunningTaskInfo> it2 = runningTasks.iterator();
                while (it2.hasNext()) {
                    ComponentName componentName = it2.next().baseActivity;
                    if (componentName != null && str.equals(componentName.getPackageName())) {
                        return true;
                    }
                }
            }
            List<ActivityManager.RunningServiceInfo> runningServices = activityManager.getRunningServices(Integer.MAX_VALUE);
            if (runningServices != null && runningServices.size() > 0) {
                Iterator<ActivityManager.RunningServiceInfo> it3 = runningServices.iterator();
                while (it3.hasNext()) {
                    if (str.equals(it3.next().service.getPackageName())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean isAppSystem() {
        return isAppSystem(Utils.getApp().getPackageName());
    }

    public static boolean isAppUpgraded() {
        try {
            return Utils.getApp().getPackageManager().getPackageInfo(getAppPackageName(), 0).firstInstallTime != Utils.getApp().getPackageManager().getPackageInfo(getAppPackageName(), 0).lastUpdateTime;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isFirstTimeInstall() {
        try {
            return Utils.getApp().getPackageManager().getPackageInfo(getAppPackageName(), 0).firstInstallTime == Utils.getApp().getPackageManager().getPackageInfo(getAppPackageName(), 0).lastUpdateTime;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isFirstTimeInstalled() {
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(Utils.getApp().getPackageName(), 0);
            return packageInfo.firstInstallTime == packageInfo.lastUpdateTime;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return true;
        }
    }

    public static void launchApp(String str) {
        if (C1887b.m8438D0(str)) {
            return;
        }
        Intent m8479Y = C1887b.m8479Y(str);
        if (m8479Y == null) {
            Log.e("AppUtils", "Didn't exist launcher activity.");
        } else {
            Utils.getApp().startActivity(m8479Y);
        }
    }

    public static void launchAppDetailsSettings() {
        launchAppDetailsSettings(Utils.getApp().getPackageName());
    }

    public static void registerAppStatusChangedListener(@NonNull Utils.OnAppStatusChangedListener onAppStatusChangedListener) {
        C1887b.m8489c(onAppStatusChangedListener);
    }

    public static void relaunchApp() {
        relaunchApp(false);
    }

    public static void uninstallApp(String str) {
        if (C1887b.m8438D0(str)) {
            return;
        }
        Utils.getApp().startActivity(C1887b.m8508i0(str));
    }

    public static void unregisterAppStatusChangedListener(@NonNull Utils.OnAppStatusChangedListener onAppStatusChangedListener) {
        C1887b.m8472U0(onAppStatusChangedListener);
    }

    @Nullable
    public static Drawable getAppIcon(String str) {
        if (C1887b.m8438D0(str)) {
            return null;
        }
        try {
            PackageManager packageManager = Utils.getApp().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.applicationInfo.loadIcon(packageManager);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int getAppIconId(String str) {
        if (C1887b.m8438D0(str)) {
            return 0;
        }
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return 0;
            }
            return packageInfo.applicationInfo.icon;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Nullable
    public static AppInfo getAppInfo(String str) {
        try {
            PackageManager packageManager = Utils.getApp().getPackageManager();
            if (packageManager == null) {
                return null;
            }
            return m7959b(packageManager, packageManager.getPackageInfo(str, 0));
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    @NonNull
    public static String getAppName(String str) {
        if (C1887b.m8438D0(str)) {
            return "";
        }
        try {
            PackageManager packageManager = Utils.getApp().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            return packageInfo == null ? "" : packageInfo.applicationInfo.loadLabel(packageManager).toString();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    @NonNull
    public static String getAppPath(String str) {
        if (C1887b.m8438D0(str)) {
            return "";
        }
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(str, 0);
            return packageInfo == null ? "" : packageInfo.applicationInfo.sourceDir;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    @Nullable
    public static Signature[] getAppSignatures(String str) {
        if (C1887b.m8438D0(str)) {
            return null;
        }
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(str, 134217728);
            if (packageInfo == null) {
                return null;
            }
            SigningInfo signingInfo = packageInfo.signingInfo;
            if (signingInfo.hasMultipleSigners()) {
                return signingInfo.getApkContentsSigners();
            }
            return signingInfo.getSigningCertificateHistory();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    @NonNull
    public static List<String> getAppSignaturesMD5(String str) {
        return m7958a(str, "MD5");
    }

    @NonNull
    public static List<String> getAppSignaturesSHA1(String str) {
        return m7958a(str, "SHA1");
    }

    @NonNull
    public static List<String> getAppSignaturesSHA256(String str) {
        return m7958a(str, "SHA256");
    }

    public static int getAppUid(String str) {
        try {
            return Utils.getApp().getPackageManager().getApplicationInfo(str, 0).uid;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static int getAppVersionCode(String str) {
        if (C1887b.m8438D0(str)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return -1;
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @NonNull
    public static String getAppVersionName(String str) {
        if (C1887b.m8438D0(str)) {
            return "";
        }
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(str, 0);
            return packageInfo == null ? "" : packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static void installApp(File file) {
        Intent m8475W = C1887b.m8475W(file);
        if (m8475W == null) {
            return;
        }
        Utils.getApp().startActivity(m8475W);
    }

    public static boolean isAppDebug(String str) {
        if (C1887b.m8438D0(str)) {
            return false;
        }
        try {
            return (Utils.getApp().getPackageManager().getApplicationInfo(str, 0).flags & 2) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean isAppForeground(@NonNull String str) {
        return !C1887b.m8438D0(str) && str.equals(C1887b.m8463Q());
    }

    public static boolean isAppSystem(String str) {
        if (C1887b.m8438D0(str)) {
            return false;
        }
        try {
            return (Utils.getApp().getPackageManager().getApplicationInfo(str, 0).flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void launchAppDetailsSettings(String str) {
        if (C1887b.m8438D0(str)) {
            return;
        }
        Intent m8477X = C1887b.m8477X(str, true);
        if (C1887b.m8540x0(m8477X)) {
            Utils.getApp().startActivity(m8477X);
        }
    }

    public static void relaunchApp(boolean z) {
        Intent m8479Y = C1887b.m8479Y(Utils.getApp().getPackageName());
        if (m8479Y == null) {
            Log.e("AppUtils", "Didn't exist launcher activity.");
            return;
        }
        m8479Y.addFlags(335577088);
        Utils.getApp().startActivity(m8479Y);
        if (z) {
            Process.killProcess(Process.myPid());
            System.exit(0);
        }
    }

    @Nullable
    public static AppInfo getApkInfo(String str) {
        PackageManager packageManager;
        PackageInfo packageArchiveInfo;
        if (C1887b.m8438D0(str) || (packageManager = Utils.getApp().getPackageManager()) == null || (packageArchiveInfo = packageManager.getPackageArchiveInfo(str, 0)) == null) {
            return null;
        }
        ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
        applicationInfo.sourceDir = str;
        applicationInfo.publicSourceDir = str;
        return m7959b(packageManager, packageArchiveInfo);
    }

    public static void installApp(Uri uri) {
        Intent m8473V = C1887b.m8473V(uri);
        if (m8473V == null) {
            return;
        }
        Utils.getApp().startActivity(m8473V);
    }

    public static void launchAppDetailsSettings(Activity activity, int i) {
        launchAppDetailsSettings(activity, i, Utils.getApp().getPackageName());
    }

    public static void launchAppDetailsSettings(Activity activity, int i, String str) {
        if (activity == null || C1887b.m8438D0(str)) {
            return;
        }
        Intent m8477X = C1887b.m8477X(str, false);
        if (C1887b.m8540x0(m8477X)) {
            activity.startActivityForResult(m8477X, i);
        }
    }

    @Nullable
    public static Signature[] getAppSignatures(File file) {
        PackageInfo packageArchiveInfo;
        if (file == null || (packageArchiveInfo = Utils.getApp().getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 134217728)) == null) {
            return null;
        }
        SigningInfo signingInfo = packageArchiveInfo.signingInfo;
        if (signingInfo.hasMultipleSigners()) {
            return signingInfo.getApkContentsSigners();
        }
        return signingInfo.getSigningCertificateHistory();
    }
}
