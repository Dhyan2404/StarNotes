package com.blankj.utilcode.util;

import android.graphics.drawable.Drawable;
import androidx.annotation.DrawableRes;
import androidx.annotation.RawRes;
import androidx.core.content.ContextCompat;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class ResourceUtils {

    /* renamed from: a */
    public static final int f13924a = 8192;

    public ResourceUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static boolean copyFileFromAssets(String str, String str2) {
        try {
            String[] list = Utils.getApp().getAssets().list(str);
            if (list == null || list.length <= 0) {
                return C1887b.m8509i1(str2, Utils.getApp().getAssets().open(str));
            }
            boolean z = true;
            for (String str3 : list) {
                z &= copyFileFromAssets(str + "/" + str3, str2 + "/" + str3);
            }
            return z;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean copyFileFromRaw(@RawRes int i, String str) {
        return C1887b.m8509i1(str, Utils.getApp().getResources().openRawResource(i));
    }

    public static int getAnimIdByName(String str) {
        return Utils.getApp().getResources().getIdentifier(str, "anim", Utils.getApp().getPackageName());
    }

    public static int getColorIdByName(String str) {
        return Utils.getApp().getResources().getIdentifier(str, "color", Utils.getApp().getPackageName());
    }

    public static int getDimenIdByName(String str) {
        return Utils.getApp().getResources().getIdentifier(str, "dimen", Utils.getApp().getPackageName());
    }

    public static Drawable getDrawable(@DrawableRes int i) {
        return ContextCompat.getDrawable(Utils.getApp(), i);
    }

    public static int getDrawableIdByName(String str) {
        return Utils.getApp().getResources().getIdentifier(str, ResourceManager.f46830c, Utils.getApp().getPackageName());
    }

    public static int getIdByName(String str) {
        return Utils.getApp().getResources().getIdentifier(str, "id", Utils.getApp().getPackageName());
    }

    public static int getLayoutIdByName(String str) {
        return Utils.getApp().getResources().getIdentifier(str, gon.f71305w, Utils.getApp().getPackageName());
    }

    public static int getMenuIdByName(String str) {
        return Utils.getApp().getResources().getIdentifier(str, "menu", Utils.getApp().getPackageName());
    }

    public static int getMipmapIdByName(String str) {
        return Utils.getApp().getResources().getIdentifier(str, "mipmap", Utils.getApp().getPackageName());
    }

    public static int getStringIdByName(String str) {
        return Utils.getApp().getResources().getIdentifier(str, "string", Utils.getApp().getPackageName());
    }

    public static int getStyleIdByName(String str) {
        return Utils.getApp().getResources().getIdentifier(str, "style", Utils.getApp().getPackageName());
    }

    public static List<String> readAssets2List(String str) {
        return readAssets2List(str, "");
    }

    public static String readAssets2String(String str) {
        return readAssets2String(str, null);
    }

    public static List<String> readRaw2List(@RawRes int i) {
        return readRaw2List(i, "");
    }

    public static String readRaw2String(@RawRes int i) {
        return readRaw2String(i, null);
    }

    public static List<String> readAssets2List(String str, String str2) {
        try {
            return C1887b.m8522o0(Utils.getApp().getResources().getAssets().open(str), str2);
        } catch (IOException e) {
            e.printStackTrace();
            return Collections.emptyList();
        }
    }

    public static String readAssets2String(String str, String str2) {
        try {
            byte[] m8520n0 = C1887b.m8520n0(Utils.getApp().getAssets().open(str));
            if (m8520n0 == null) {
                return "";
            }
            if (C1887b.m8438D0(str2)) {
                return new String(m8520n0);
            }
            try {
                return new String(m8520n0, str2);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                return "";
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static List<String> readRaw2List(@RawRes int i, String str) {
        return C1887b.m8522o0(Utils.getApp().getResources().openRawResource(i), str);
    }

    public static String readRaw2String(@RawRes int i, String str) {
        byte[] m8520n0 = C1887b.m8520n0(Utils.getApp().getResources().openRawResource(i));
        if (m8520n0 == null) {
            return null;
        }
        if (C1887b.m8438D0(str)) {
            return new String(m8520n0);
        }
        try {
            return new String(m8520n0, str);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }
}
