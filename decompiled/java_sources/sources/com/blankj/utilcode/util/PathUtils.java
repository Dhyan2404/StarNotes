package com.blankj.utilcode.util;

import android.os.Environment;
import android.text.TextUtils;
import java.io.File;

/* loaded from: classes3.dex */
public final class PathUtils {

    /* renamed from: a */
    public static final char f13893a = File.separatorChar;

    public PathUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static String m8233a(File file) {
        return file == null ? "" : file.getAbsolutePath();
    }

    /* renamed from: b */
    public static String m8234b(String str) {
        char[] charArray = str.toCharArray();
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < charArray.length; i3++) {
            if (charArray[i3] != f13893a) {
                if (i == -1) {
                    i = i3;
                }
                i2 = i3;
            }
        }
        if (i >= 0 && i2 >= i) {
            return str.substring(i, i2 + 1);
        }
        throw new IllegalArgumentException("segment of <" + str + "> is illegal");
    }

    public static String getAppDataPathExternalFirst() {
        String externalAppDataPath = getExternalAppDataPath();
        return TextUtils.isEmpty(externalAppDataPath) ? getInternalAppDataPath() : externalAppDataPath;
    }

    public static String getCachePathExternalFirst() {
        String externalAppCachePath = getExternalAppCachePath();
        return TextUtils.isEmpty(externalAppCachePath) ? getInternalAppCachePath() : externalAppCachePath;
    }

    public static String getDataPath() {
        return m8233a(Environment.getDataDirectory());
    }

    public static String getDownloadCachePath() {
        return m8233a(Environment.getDownloadCacheDirectory());
    }

    public static String getExternalAlarmsPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_ALARMS));
    }

    public static String getExternalAppAlarmsPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Utils.getApp().getExternalFilesDir(Environment.DIRECTORY_ALARMS));
    }

    public static String getExternalAppCachePath() {
        return !C1887b.m8432A0() ? "" : m8233a(Utils.getApp().getExternalCacheDir());
    }

    public static String getExternalAppDataPath() {
        File externalCacheDir;
        return (C1887b.m8432A0() && (externalCacheDir = Utils.getApp().getExternalCacheDir()) != null) ? m8233a(externalCacheDir.getParentFile()) : "";
    }

    public static String getExternalAppDcimPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Utils.getApp().getExternalFilesDir(Environment.DIRECTORY_DCIM));
    }

    public static String getExternalAppDocumentsPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Utils.getApp().getExternalFilesDir(Environment.DIRECTORY_DOCUMENTS));
    }

    public static String getExternalAppDownloadPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Utils.getApp().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS));
    }

    public static String getExternalAppFilesPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Utils.getApp().getExternalFilesDir(null));
    }

    public static String getExternalAppMoviesPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Utils.getApp().getExternalFilesDir(Environment.DIRECTORY_MOVIES));
    }

    public static String getExternalAppMusicPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Utils.getApp().getExternalFilesDir(Environment.DIRECTORY_MUSIC));
    }

    public static String getExternalAppNotificationsPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Utils.getApp().getExternalFilesDir(Environment.DIRECTORY_NOTIFICATIONS));
    }

    public static String getExternalAppObbPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Utils.getApp().getObbDir());
    }

    public static String getExternalAppPicturesPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Utils.getApp().getExternalFilesDir(Environment.DIRECTORY_PICTURES));
    }

    public static String getExternalAppPodcastsPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Utils.getApp().getExternalFilesDir(Environment.DIRECTORY_PODCASTS));
    }

    public static String getExternalAppRingtonesPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Utils.getApp().getExternalFilesDir(Environment.DIRECTORY_RINGTONES));
    }

    public static String getExternalDcimPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM));
    }

    public static String getExternalDocumentsPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS));
    }

    public static String getExternalDownloadsPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS));
    }

    public static String getExternalMoviesPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES));
    }

    public static String getExternalMusicPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MUSIC));
    }

    public static String getExternalNotificationsPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_NOTIFICATIONS));
    }

    public static String getExternalPicturesPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES));
    }

    public static String getExternalPodcastsPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PODCASTS));
    }

    public static String getExternalRingtonesPath() {
        return !C1887b.m8432A0() ? "" : m8233a(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_RINGTONES));
    }

    public static String getExternalStoragePath() {
        return !C1887b.m8432A0() ? "" : m8233a(Environment.getExternalStorageDirectory());
    }

    public static String getFilesPathExternalFirst() {
        String externalAppFilesPath = getExternalAppFilesPath();
        return TextUtils.isEmpty(externalAppFilesPath) ? getInternalAppFilesPath() : externalAppFilesPath;
    }

    public static String getInternalAppCachePath() {
        return m8233a(Utils.getApp().getCacheDir());
    }

    public static String getInternalAppCodeCacheDir() {
        return m8233a(Utils.getApp().getCodeCacheDir());
    }

    public static String getInternalAppDataPath() {
        return m8233a(Utils.getApp().getDataDir());
    }

    public static String getInternalAppDbPath(String str) {
        return m8233a(Utils.getApp().getDatabasePath(str));
    }

    public static String getInternalAppDbsPath() {
        return Utils.getApp().getApplicationInfo().dataDir + "/databases";
    }

    public static String getInternalAppFilesPath() {
        return m8233a(Utils.getApp().getFilesDir());
    }

    public static String getInternalAppNoBackupFilesPath() {
        return m8233a(Utils.getApp().getNoBackupFilesDir());
    }

    public static String getInternalAppSpPath() {
        return Utils.getApp().getApplicationInfo().dataDir + "/shared_prefs";
    }

    public static String getRootPath() {
        return m8233a(Environment.getRootDirectory());
    }

    public static String getRootPathExternalFirst() {
        String externalStoragePath = getExternalStoragePath();
        return TextUtils.isEmpty(externalStoragePath) ? getRootPath() : externalStoragePath;
    }

    public static String join(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        if (str == null) {
            str = "";
        }
        int length = str.length();
        String m8234b = m8234b(str2);
        if (length == 0) {
            return f13893a + m8234b;
        }
        char charAt = str.charAt(length - 1);
        char c = f13893a;
        if (charAt == c) {
            return str + m8234b;
        }
        return str + c + m8234b;
    }
}
