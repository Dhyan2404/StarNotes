package com.p108u;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.widget.TextView;
import com.p108u.C17024u;
import java.io.ByteArrayOutputStream;
import org.json.JSONObject;

/* renamed from: com.u.ۣۨۢۤ, reason: contains not printable characters */
/* loaded from: classes17.dex */
public class C20619 {

    /* renamed from: ۟ۢۦ۟ۤ, reason: not valid java name and contains not printable characters */
    public static int f116564 = -439;

    /* renamed from: ۟۟ۤۤۧ, reason: not valid java name and contains not printable characters */
    public static Uri m72581(Object obj) {
        if (C20618.m72571() > 0) {
            return Uri.parse((String) obj);
        }
        return null;
    }

    /* renamed from: ۟۟ۦ۠۟, reason: not valid java name and contains not printable characters */
    public static int m72582(Object obj) {
        return obj.hashCode();
    }

    /* renamed from: ۟۟ۦۣۡ, reason: not valid java name and contains not printable characters */
    public static ViewPropertyAnimator m72583(Object obj, float f) {
        if (C20615.m72490() < 0) {
            return ((ViewPropertyAnimator) obj).translationY(f);
        }
        return null;
    }

    /* renamed from: ۟۟ۨ۟ۧ, reason: not valid java name and contains not printable characters */
    public static void m72584(Object obj, Object obj2) {
        if (C20616.m72524() > 0) {
            ((Window) obj).setBackgroundDrawable((Drawable) obj2);
        }
    }

    /* renamed from: ۟ۡۨۥۧ, reason: not valid java name and contains not printable characters */
    public static boolean m72585(Object obj) {
        if (C20618.m72571() > 0) {
            return ((NetworkInfo) obj).isConnectedOrConnecting();
        }
        return false;
    }

    /* renamed from: ۟ۢ۠ۥ۟, reason: not valid java name and contains not printable characters */
    public static int m72586() {
        return 121 ^ C20616.f116561;
    }

    /* renamed from: ۟ۢۦۧ۟, reason: not valid java name and contains not printable characters */
    public static void m72587(Object obj, int i) {
        if (C20615.m72490() < 0) {
            ((GradientDrawable) obj).setColor(i);
        }
    }

    /* renamed from: ۟ۢۨۨ۟, reason: not valid java name and contains not printable characters */
    public static void m72588(Object obj, Object obj2) {
        if (C20618.m72571() >= 0) {
            ((TextView) obj).setOnClickListener((View.OnClickListener) obj2);
        }
    }

    /* renamed from: ۣۣ۟ۢۡ, reason: not valid java name and contains not printable characters */
    public static void m72589(Object obj) {
        if (C20616.m72524() > 0) {
            ((Path) obj).reset();
        }
    }

    /* renamed from: ۟ۤۥۨۡ, reason: not valid java name and contains not printable characters */
    public static String m72590(Object obj) {
        if (C20617.m72545() >= 0) {
            return ((String) obj).toUpperCase();
        }
        return null;
    }

    /* renamed from: ۟ۤۦۣ۠, reason: not valid java name and contains not printable characters */
    public static ViewPropertyAnimator m72591(Object obj, Object obj2) {
        if (C20615.m72490() < 0) {
            return ((ViewPropertyAnimator) obj).setInterpolator((TimeInterpolator) obj2);
        }
        return null;
    }

    /* renamed from: ۟ۥۣ۠۟, reason: not valid java name and contains not printable characters */
    public static void m72592(Object obj, Object obj2, Object obj3) {
        if (C20617.m72545() >= 0) {
            ((Canvas) obj).drawPath((Path) obj2, (Paint) obj3);
        }
    }

    /* renamed from: ۟ۥۤۥ۠, reason: not valid java name and contains not printable characters */
    public static void m72593(Object obj, float f) {
        if (C20618.m72571() >= 0) {
            ((C17024u.AnimatedDashedBorderLayout) obj).setAlpha(f);
        }
    }

    /* renamed from: ۟ۦۣۡ۠, reason: not valid java name and contains not printable characters */
    public static void m72594(Object obj, Object obj2) {
        if (C20616.m72524() >= 0) {
            ((Paint) obj).setStyle((Paint.Style) obj2);
        }
    }

    /* renamed from: ۟ۧۡۢۤ, reason: not valid java name and contains not printable characters */
    public static void m72596(Object obj, boolean z) {
        if (C20616.m72524() > 0) {
            ((TextView) obj).setFocusable(z);
        }
    }

    /* renamed from: ۟ۨۨۧ, reason: not valid java name and contains not printable characters */
    public static void m72597(Object obj, float f) {
        if (C20616.m72524() > 0) {
            ((View) obj).setTranslationY(f);
        }
    }

    /* renamed from: ۣ۠ۤۤ, reason: not valid java name and contains not printable characters */
    public static void m72598(Object obj, int i) {
        if (C20616.m72524() >= 0) {
            ((C17024u.AnimatedDashedBorderLayout) obj).setGravity(i);
        }
    }

    /* renamed from: ۠ۤۦ, reason: not valid java name and contains not printable characters */
    public static void m72599(Object obj, Object obj2) {
        if (C20617.m72545() > 0) {
            ((GradientDrawable) obj).setColors((int[]) obj2);
        }
    }

    /* renamed from: ۠ۥۨ۠, reason: not valid java name and contains not printable characters */
    public static int m72600(Object obj) {
        if (C20617.m72545() >= 0) {
            return ((MotionEvent) obj).getAction();
        }
        return 0;
    }

    /* renamed from: ۠ۧ۟ۤ, reason: not valid java name and contains not printable characters */
    public static ColorStateList m72601(int i) {
        if (C20617.m72545() > 0) {
            return ColorStateList.valueOf(i);
        }
        return null;
    }

    /* renamed from: ۠ۨۢۡ, reason: not valid java name and contains not printable characters */
    public static SharedPreferences.Editor m72602(Object obj, Object obj2, Object obj3) {
        if (C20617.m72545() >= 0) {
            return ((SharedPreferences.Editor) obj).putString((String) obj2, (String) obj3);
        }
        return null;
    }

    /* renamed from: ۡ۠ۥ۠, reason: not valid java name and contains not printable characters */
    public static void m72603(Object obj) {
        if (C20618.m72571() >= 0) {
            ((ValueAnimator) obj).start();
        }
    }

    /* renamed from: ۢ۠ۦۤ, reason: not valid java name and contains not printable characters */
    public static void m72604(Object obj) {
        if (C20616.m72524() > 0) {
            ((PackageManager.NameNotFoundException) obj).printStackTrace();
        }
    }

    /* renamed from: ۢۦ۠ۤ, reason: not valid java name and contains not printable characters */
    public static void m72605(Object obj, boolean z) {
        if (C20615.m72490() < 0) {
            ((Dialog) obj).setCancelable(z);
        }
    }

    /* renamed from: ۣ۟۠۟, reason: not valid java name and contains not printable characters */
    public static void m72606(Object obj, int i) {
        if (C20618.m72571() >= 0) {
            ((ValueAnimator) obj).setRepeatCount(i);
        }
    }

    /* renamed from: ۣ۟ۢۢ, reason: not valid java name and contains not printable characters */
    public static void m72607(Object obj, Object obj2, float f, float f2, Object obj3) {
        if (C20618.m72571() > 0) {
            ((Canvas) obj).drawRoundRect((RectF) obj2, f, f2, (Paint) obj3);
        }
    }

    /* renamed from: ۣۤ۟ۦ, reason: not valid java name and contains not printable characters */
    public static NetworkInfo m72608(Object obj) {
        if (C20617.m72545() >= 0) {
            return ((ConnectivityManager) obj).getActiveNetworkInfo();
        }
        return null;
    }

    /* renamed from: ۣۧۦۤ, reason: not valid java name and contains not printable characters */
    public static boolean m72609(Object obj, Object obj2, boolean z) {
        if (C20618.m72571() > 0) {
            return ((JSONObject) obj).optBoolean((String) obj2, z);
        }
        return false;
    }

    /* renamed from: ۣۣۨ, reason: not valid java name and contains not printable characters */
    public static String m72610(String str) {
        String str2 = "";
        String str3 = "";
        for (int i = 0; i < 15; i++) {
            str2 = new StringBuffer().append(str2).append(Integer.toHexString(i)).toString();
            str3 = new StringBuffer().append(str3).append(((int) (Math.random() * 10)) ^ i).toString();
        }
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
        for (int i4 = 0; i4 < byteArray.length; i4 = "".length() + 1) {
        }
        return new String(byteArray);
    }

    /* renamed from: ۧ۠ۤ۟, reason: not valid java name and contains not printable characters */
    public static void m72611(Object obj, Object obj2) {
        if (C20616.m72524() >= 0) {
            ((Paint) obj).setStrokeCap((Paint.Cap) obj2);
        }
    }

    /* renamed from: ۨ۟۟۟, reason: not valid java name and contains not printable characters */
    public static boolean m72612(Object obj, int i) {
        if (C20616.m72524() > 0) {
            return ((Dialog) obj).requestWindowFeature(i);
        }
        return false;
    }

    /* renamed from: ۣ۟ۧ۠ۧ, reason: not valid java name and contains not printable characters */
    public static String m72595(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}
