package com.onegravity.colorpicker;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Locale;

/* loaded from: classes7.dex */
public class Util {

    /* renamed from: a */
    public static float f39999a = Float.MAX_VALUE;

    public static Bitmap allocateBitmap(int i, int i2) {
        try {
            return Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        } catch (Throwable unused) {
            System.gc();
            try {
                return Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            } catch (Throwable unused2) {
                return null;
            }
        }
    }

    public static String[] convertToARGB(int i) {
        String upperCase = Integer.toHexString(Color.alpha(i)).toUpperCase(Locale.getDefault());
        String upperCase2 = Integer.toHexString(Color.red(i)).toUpperCase(Locale.getDefault());
        String upperCase3 = Integer.toHexString(Color.green(i)).toUpperCase(Locale.getDefault());
        String upperCase4 = Integer.toHexString(Color.blue(i)).toUpperCase(Locale.getDefault());
        return new String[]{("00" + upperCase).substring(upperCase.length()), ("00" + upperCase2).substring(upperCase2.length()), ("00" + upperCase3).substring(upperCase3.length()), ("00" + upperCase4).substring(upperCase4.length())};
    }

    public static int convertToColorInt(String str, String str2, String str3, String str4, boolean z) throws NumberFormatException {
        int parseInt = z ? Integer.parseInt(str, 16) : 255;
        int parseInt2 = Integer.parseInt(str2, 16);
        int parseInt3 = Integer.parseInt(str3, 16);
        int parseInt4 = Integer.parseInt(str4, 16);
        if (!z) {
            parseInt = 0;
        }
        return Color.argb(parseInt, parseInt2, parseInt3, parseInt4);
    }

    public static float getDisplayDensity(Context context) {
        if (f39999a == Float.MAX_VALUE) {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            f39999a = displayMetrics.density;
        }
        return f39999a;
    }

    public static int getScreenOrientation(Context context) {
        return context.getResources().getConfiguration().orientation;
    }

    public static int convertToColorInt(String str, boolean z) throws NumberFormatException {
        int i;
        int i2;
        int i3;
        int i4;
        if (str.startsWith("#")) {
            str = str.replace("#", "");
        }
        if (str.length() == 8) {
            i2 = Integer.parseInt(str.substring(0, 2), 16);
            i4 = Integer.parseInt(str.substring(2, 4), 16);
            i3 = Integer.parseInt(str.substring(4, 6), 16);
            i = Integer.parseInt(str.substring(6, 8), 16);
        } else if (str.length() == 6) {
            int parseInt = Integer.parseInt(str.substring(0, 2), 16);
            int parseInt2 = Integer.parseInt(str.substring(2, 4), 16);
            i = Integer.parseInt(str.substring(4, 6), 16);
            i3 = parseInt2;
            i4 = parseInt;
            i2 = 255;
        } else {
            i = 255;
            i2 = 255;
            i3 = 255;
            i4 = 255;
        }
        return Color.argb(z ? i2 : 0, i4, i3, i);
    }
}
