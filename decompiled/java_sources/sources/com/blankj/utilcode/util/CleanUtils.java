package com.blankj.utilcode.util;

import android.app.ActivityManager;
import android.os.Environment;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.ActivityChooserModel;
import java.io.File;

/* loaded from: classes3.dex */
public final class CleanUtils {
    public CleanUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    @RequiresApi(api = 19)
    public static void cleanAppUserData() {
        ((ActivityManager) Utils.getApp().getSystemService(ActivityChooserModel.f1429r)).clearApplicationUserData();
    }

    public static boolean cleanCustomDir(String str) {
        return C1887b.m8533u(C1887b.m8461P(str));
    }

    public static boolean cleanExternalCache() {
        return "mounted".equals(Environment.getExternalStorageState()) && C1887b.m8533u(Utils.getApp().getExternalCacheDir());
    }

    public static boolean cleanInternalCache() {
        return C1887b.m8533u(Utils.getApp().getCacheDir());
    }

    public static boolean cleanInternalDbByName(String str) {
        return Utils.getApp().deleteDatabase(str);
    }

    public static boolean cleanInternalDbs() {
        return C1887b.m8533u(new File(Utils.getApp().getFilesDir().getParent(), "databases"));
    }

    public static boolean cleanInternalFiles() {
        return C1887b.m8533u(Utils.getApp().getFilesDir());
    }

    public static boolean cleanInternalSp() {
        return C1887b.m8533u(new File(Utils.getApp().getFilesDir().getParent(), "shared_prefs"));
    }
}
