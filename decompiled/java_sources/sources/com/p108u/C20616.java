package com.p108u;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import java.io.ByteArrayOutputStream;

/* renamed from: com.u.ۣ۟ۦ۟, reason: contains not printable characters */
/* loaded from: classes17.dex */
public class C20616 {

    /* renamed from: ۣ۟۠ۨۡ, reason: not valid java name and contains not printable characters */
    public static int f116561 = 116;

    /* renamed from: ۟۟۠ۦۤ, reason: not valid java name and contains not printable characters */
    public static void m72516(Object obj, Object obj2) {
        if (C20617.m72545() > 0) {
            ((Window) obj).setAttributes((WindowManager.LayoutParams) obj2);
        }
    }

    /* renamed from: ۟۟ۡۡ, reason: not valid java name and contains not printable characters */
    public static SharedPreferences m72517(Object obj, Object obj2, int i) {
        if (C20617.m72545() > 0) {
            return ((Context) obj).getSharedPreferences((String) obj2, i);
        }
        return null;
    }

    /* renamed from: ۟۟ۤۦۢ, reason: not valid java name and contains not printable characters */
    public static int m72518(Object obj) {
        if (m72524() >= 0) {
            return ((Configuration) obj).uiMode;
        }
        return 0;
    }

    /* renamed from: ۟۟ۥۡ۟, reason: not valid java name and contains not printable characters */
    public static Typeface m72519(Object obj) {
        if (C20615.m72490() < 0) {
            return ((TextView) obj).getTypeface();
        }
        return null;
    }

    /* renamed from: ۣۣ۟۠۠, reason: not valid java name and contains not printable characters */
    public static ValueAnimator m72520(Object obj, long j) {
        if (C20615.m72490() < 0) {
            return ((ValueAnimator) obj).setDuration(j);
        }
        return null;
    }

    /* renamed from: ۣ۟۠ۤۡ, reason: not valid java name and contains not printable characters */
    public static void m72521(Object obj, Object obj2) {
        if (C20618.m72571() >= 0) {
            ((ValueAnimator) obj).setInterpolator((TimeInterpolator) obj2);
        }
    }

    /* renamed from: ۟ۡ۠ۥۡ, reason: not valid java name and contains not printable characters */
    public static String m72522() {
        if (C20618.m72571() >= 0) {
            return "";
        }
        return null;
    }

    /* renamed from: ۟ۡۥۨۦ, reason: not valid java name and contains not printable characters */
    public static void m72523(Object obj) {
        if (m72524() >= 0) {
            ((Exception) obj).printStackTrace();
        }
    }

    /* renamed from: ۟ۢ۠ۡۨ, reason: not valid java name and contains not printable characters */
    public static int m72524() {
        return (-981) ^ C20615.f116560;
    }

    /* renamed from: ۣ۟ۤۦۦ, reason: not valid java name and contains not printable characters */
    public static void m72525(Object obj, int i) {
        if (C20617.m72545() > 0) {
            ((Paint) obj).setColor(i);
        }
    }

    /* renamed from: ۣ۟ۥۣ, reason: not valid java name and contains not printable characters */
    public static PackageManager m72526(Object obj) {
        if (m72524() > 0) {
            return ((Activity) obj).getPackageManager();
        }
        return null;
    }

    /* renamed from: ۟ۥۨۨ۟, reason: not valid java name and contains not printable characters */
    public static String m72527(Object obj) {
        if (C20617.m72545() > 0) {
            return ((PackageInfo) obj).versionName;
        }
        return null;
    }

    /* renamed from: ۟ۦۧ۟ۧ, reason: not valid java name and contains not printable characters */
    public static boolean m72529(Object obj) {
        if (C20615.m72490() < 0) {
            return ((Activity) obj).isDestroyed();
        }
        return false;
    }

    /* renamed from: ۟ۦۧۨۢ, reason: not valid java name and contains not printable characters */
    public static void m72530(Object obj, Object obj2) {
        if (C20618.m72571() >= 0) {
            ((ValueAnimator) obj).addUpdateListener((ValueAnimator.AnimatorUpdateListener) obj2);
        }
    }

    /* renamed from: ۟ۧ۟ۥۡ, reason: not valid java name and contains not printable characters */
    public static Paint.Cap m72531() {
        if (C20618.m72571() >= 0) {
            return Paint.Cap.ROUND;
        }
        return null;
    }

    /* renamed from: ۟ۧۧۦ, reason: not valid java name and contains not printable characters */
    public static Resources m72532(Object obj) {
        if (m72524() >= 0) {
            return ((Activity) obj).getResources();
        }
        return null;
    }

    /* renamed from: ۡۨۢ۟, reason: not valid java name and contains not printable characters */
    public static void m72533(Object obj, Object obj2) {
        if (m72524() >= 0) {
            ((TextView) obj).setBackground((Drawable) obj2);
        }
    }

    /* renamed from: ۡۨۧۥ, reason: not valid java name and contains not printable characters */
    public static float m72534(Object obj) {
        if (m72524() > 0) {
            return ((Paint) obj).getStrokeWidth();
        }
        return 0.0f;
    }

    /* renamed from: ۥۢۥۡ, reason: contains not printable characters */
    public static void m72535(Object obj, Object obj2, float f, float f2, Object obj3) {
        if (C20618.m72571() >= 0) {
            ((Path) obj).addRoundRect((RectF) obj2, f, f2, (Path.Direction) obj3);
        }
    }

    /* renamed from: ۥۧ۠ۥ, reason: contains not printable characters */
    public static boolean m72536(Object obj, Object obj2) {
        if (C20615.m72490() < 0) {
            return ((String) obj).equals(obj2);
        }
        return false;
    }

    /* renamed from: ۦۣ۟ۢ, reason: contains not printable characters */
    public static void m72537(Object obj, Object obj2) {
        if (m72524() > 0) {
            ((Dialog) obj).setContentView((View) obj2);
        }
    }

    /* renamed from: ۦ۟ۧۤ, reason: contains not printable characters */
    public static int m72538(Object obj) {
        return obj.hashCode();
    }

    /* renamed from: ۦۥۣۧ, reason: contains not printable characters */
    public static Configuration m72539(Object obj) {
        if (C20615.m72490() <= 0) {
            return ((Resources) obj).getConfiguration();
        }
        return null;
    }

    /* renamed from: ۣۧ۟ۧ, reason: not valid java name and contains not printable characters */
    public static void m72540(Object obj, Object obj2) {
        if (C20617.m72545() >= 0) {
            ((Activity) obj).runOnUiThread((Runnable) obj2);
        }
    }

    /* renamed from: ۣۧۨ۟, reason: not valid java name and contains not printable characters */
    public static void m72541(Object obj, int i, float f) {
        if (m72524() > 0) {
            ((TextView) obj).setTextSize(i, f);
        }
    }

    /* renamed from: ۧۥۡۧ, reason: not valid java name and contains not printable characters */
    public static String m72542(String str) {
        String str2 = "";
        String str3 = "";
        for (int i = 0; i < 15; i++) {
            str2 = new StringBuffer().append(str2).append(Integer.toHexString(i)).toString();
            str3 = new StringBuffer().append(str3).append(((int) (Math.random() * 10)) ^ i).toString();
        }
        do {
        } while (str2.length() > 0);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length() / 2);
        for (int i2 = 0; i2 < str.length(); i2 += 2) {
            byteArrayOutputStream.write((str2.indexOf(str.charAt(i2)) << 4) | str2.indexOf(str.charAt(i2 + 1)));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        int length2 = str3.length();
        for (int i3 = 0; i3 < length; i3++) {
            byteArray[i3] = (byte) (byteArray[i3] ^ str3.charAt(i3 % length2));
        }
        return new String(byteArray);
    }

    /* renamed from: ۧۧۨۧ, reason: not valid java name and contains not printable characters */
    public static void m72543(Object obj, Object obj2, int i) {
        if (C20615.m72490() < 0) {
            ((TextView) obj).setTypeface((Typeface) obj2, i);
        }
    }

    /* renamed from: ۧۨۧ۠, reason: not valid java name and contains not printable characters */
    public static ViewPropertyAnimator m72544(Object obj, float f) {
        if (C20617.m72545() >= 0) {
            return ((ViewPropertyAnimator) obj).alpha(f);
        }
        return null;
    }

    /* renamed from: ۟ۦۦۣۢ, reason: not valid java name and contains not printable characters */
    public static String m72528(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}
