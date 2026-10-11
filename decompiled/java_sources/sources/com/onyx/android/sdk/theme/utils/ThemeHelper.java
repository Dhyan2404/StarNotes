package com.onyx.android.sdk.theme.utils;

import android.content.Context;
import com.onyx.android.sdk.data.utils.ConfigLoader;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.theme.config.ThemeConfig;
import io.reactivex.rxjava3.annotations.Nullable;
import java.io.File;

/* loaded from: classes8.dex */
public class ThemeHelper {

    /* renamed from: a */
    public static ThemeConfig f46842a;

    /* renamed from: a */
    public static String m36238a(Context context) {
        return context.getFilesDir() + File.separator + ThemeConst.THEME_DIR;
    }

    public static String getName(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "THE RETURN" : "THE THUNDER" : "THE DARK" : "THE LIGHT";
    }

    public static String getPlugPathByName(Context context, String str) {
        return m36238a(context) + str;
    }

    public static String getPlugThemeName() {
        return MMKVUtils.INSTANCE.getString(ThemeConst.PLUG_PATH_NAME_KEY, "");
    }

    public static String getPlugThemePackageName() {
        return MMKVUtils.INSTANCE.getString(ThemeConst.PLUG_PACKAGE, "");
    }

    public static String getSavedPlugThemePath(Context context) {
        return m36238a(context) + getPlugThemeName();
    }

    public static int getTheme() {
        return MMKVUtils.INSTANCE.getInt(ThemeConst.CURRENT_THEME, 8);
    }

    @Nullable
    public static ThemeConfig getThemeConfig() {
        if (f46842a == null) {
            f46842a = (ThemeConfig) ConfigLoader.INSTANCE.load(ThemeConfig.class, ThemeConst.THEME_CONFIG_RAW_NAME);
        }
        return f46842a;
    }

    public static boolean isDefaultTheme() {
        return getTheme() == 1;
    }

    public static void releasePluginTheme() {
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        mMKVUtils.putString(ThemeConst.PLUG_PATH_NAME_KEY, "");
        mMKVUtils.putString(ThemeConst.PLUG_PACKAGE, "");
    }

    public static void savePlugTheme(File file, String str) {
        setTheme(3);
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        mMKVUtils.putString(ThemeConst.PLUG_PATH_NAME_KEY, file.getName());
        mMKVUtils.putString(ThemeConst.PLUG_PACKAGE, str);
    }

    public static void setTheme(int i) {
        if (i != 3) {
            ThemeUtils.releasePlugTheme();
        }
        MMKVUtils.INSTANCE.putInt(ThemeConst.CURRENT_THEME, i);
    }
}
