package com.p108u;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.p108u.C17024u;
import java.io.ByteArrayOutputStream;
import org.json.JSONObject;

/* renamed from: com.u.۟ۦۧۡۢ, reason: contains not printable characters */
/* loaded from: classes17.dex */
public class C20618 {

    /* renamed from: ۣۢۦۣ, reason: not valid java name and contains not printable characters */
    public static int f116563 = -947;

    /* renamed from: ۟۟ۢۨ, reason: not valid java name and contains not printable characters */
    public static String m72549(Object obj) {
        if (m72571() >= 0) {
            return ((Activity) obj).getPackageName();
        }
        return null;
    }

    /* renamed from: ۟۟ۧ۟۟, reason: not valid java name and contains not printable characters */
    public static String m72550(String str) {
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

    /* renamed from: ۟۠ۥۡ۠, reason: not valid java name and contains not printable characters */
    public static int m72551(Object obj) {
        return obj.hashCode();
    }

    /* renamed from: ۟۠ۨۧۤ, reason: not valid java name and contains not printable characters */
    public static Path.Direction m72552() {
        if (m72571() >= 0) {
            return Path.Direction.CW;
        }
        return null;
    }

    /* renamed from: ۟ۡۡۥ, reason: not valid java name and contains not printable characters */
    public static Paint.Style m72553() {
        if (C20616.m72524() >= 0) {
            return Paint.Style.FILL;
        }
        return null;
    }

    /* renamed from: ۟ۡۡۨۨ, reason: not valid java name and contains not printable characters */
    public static void m72554(Object obj, float f) {
        if (m72571() >= 0) {
            ((C17024u.AnimatedDashedBorderLayout) obj).setScaleX(f);
        }
    }

    /* renamed from: ۣ۟ۡۤۡ, reason: not valid java name and contains not printable characters */
    public static ViewPropertyAnimator m72555(Object obj) {
        if (C20617.m72545() > 0) {
            return ((View) obj).animate();
        }
        return null;
    }

    /* renamed from: ۟ۢۦ۟ۡ, reason: not valid java name and contains not printable characters */
    public static void m72556(Object obj, float f) {
        if (C20617.m72545() > 0) {
            ((GradientDrawable) obj).setCornerRadius(f);
        }
    }

    /* renamed from: ۣ۟۠ۢۥ, reason: not valid java name and contains not printable characters */
    public static void m72557(Object obj) {
        if (m72571() > 0) {
            ((C17024u.AnimatedDashedBorderLayout) obj).invalidate();
        }
    }

    /* renamed from: ۣ۟۠ۦۣ, reason: not valid java name and contains not printable characters */
    public static void m72558(Object obj, Object obj2) {
        if (C20616.m72524() > 0) {
            ((TextView) obj).setLayoutParams((ViewGroup.LayoutParams) obj2);
        }
    }

    /* renamed from: ۟ۥۣۨ۠, reason: not valid java name and contains not printable characters */
    public static String m72559(Object obj, Object obj2, Object obj3) {
        if (C20616.m72524() > 0) {
            return ((SharedPreferences) obj).getString((String) obj2, (String) obj3);
        }
        return null;
    }

    /* renamed from: ۟ۦۨۧۤ, reason: not valid java name and contains not printable characters */
    public static boolean m72560(Object obj) {
        if (C20616.m72524() >= 0) {
            return ((ValueAnimator) obj).isRunning();
        }
        return false;
    }

    /* renamed from: ۟ۧ۟ۥۧ, reason: not valid java name and contains not printable characters */
    public static void m72561(Object obj, int i, int i2, int i3, int i4) {
        if (m72571() >= 0) {
            ((LinearLayout.LayoutParams) obj).setMargins(i, i2, i3, i4);
        }
    }

    /* renamed from: ۟ۧۡۦۤ, reason: not valid java name and contains not printable characters */
    public static String m72562(Object obj, Object obj2, Object obj3) {
        if (m72571() > 0) {
            return ((JSONObject) obj).optString((String) obj2, (String) obj3);
        }
        return null;
    }

    /* renamed from: ۟ۧۦۦۡ, reason: not valid java name and contains not printable characters */
    public static Window m72563(Object obj) {
        if (C20616.m72524() >= 0) {
            return ((Dialog) obj).getWindow();
        }
        return null;
    }

    /* renamed from: ۟ۧۧ۟, reason: not valid java name and contains not printable characters */
    public static ViewPropertyAnimator m72564(Object obj, long j) {
        if (m72571() >= 0) {
            return ((ViewPropertyAnimator) obj).setDuration(j);
        }
        return null;
    }

    /* renamed from: ۟ۧۨۥ, reason: not valid java name and contains not printable characters */
    public static Object m72565(Object obj, Object obj2) {
        if (C20616.m72524() >= 0) {
            return ((Context) obj).getSystemService((String) obj2);
        }
        return null;
    }

    /* renamed from: ۠ۦ۠, reason: not valid java name and contains not printable characters */
    public static void m72567(Object obj, Object obj2) {
        if (C20616.m72524() > 0) {
            ((TextView) obj).setText((CharSequence) obj2);
        }
    }

    /* renamed from: ۠ۦۢۨ, reason: not valid java name and contains not printable characters */
    public static int m72568(Object obj) {
        if (m72571() >= 0) {
            return ((DisplayMetrics) obj).widthPixels;
        }
        return 0;
    }

    /* renamed from: ۢۡۦۢ, reason: not valid java name and contains not printable characters */
    public static void m72569(Object obj, float f) {
        if (C20616.m72524() > 0) {
            ((C17024u.AnimatedDashedBorderLayout) obj).setScaleY(f);
        }
    }

    /* renamed from: ۣۣ۟۟, reason: not valid java name and contains not printable characters */
    public static void m72570(Object obj, float f, float f2, float f3, float f4) {
        if (C20616.m72524() > 0) {
            ((RectF) obj).set(f, f2, f3, f4);
        }
    }

    /* renamed from: ۣۦۤۢ, reason: not valid java name and contains not printable characters */
    public static int m72571() {
        return (-410) ^ C20615.f116560;
    }

    /* renamed from: ۥۣ۟۟, reason: contains not printable characters */
    public static void m72572(Object obj, boolean z) {
        if (C20617.m72545() > 0) {
            ((TextView) obj).setClickable(z);
        }
    }

    /* renamed from: ۥۢۡ۠, reason: contains not printable characters */
    public static void m72573(Object obj, float f) {
        if (C20615.m72490() <= 0) {
            ((Paint) obj).setStrokeWidth(f);
        }
    }

    /* renamed from: ۦۣ۠, reason: contains not printable characters */
    public static GradientDrawable.Orientation m72574() {
        if (m72571() >= 0) {
            return GradientDrawable.Orientation.TOP_BOTTOM;
        }
        return null;
    }

    /* renamed from: ۦۣۦۦ, reason: contains not printable characters */
    public static ViewPropertyAnimator m72575(Object obj, float f) {
        if (m72571() >= 0) {
            return ((ViewPropertyAnimator) obj).scaleX(f);
        }
        return null;
    }

    /* renamed from: ۦۣۧۦ, reason: contains not printable characters */
    public static void m72576(Object obj, Object obj2) {
        if (C20617.m72545() > 0) {
            ((C17024u.AnimatedDashedBorderLayout) obj).addView((View) obj2);
        }
    }

    /* renamed from: ۦۤ۠, reason: contains not printable characters */
    public static Paint.Style m72577() {
        if (C20615.m72490() <= 0) {
            return Paint.Style.STROKE;
        }
        return null;
    }

    /* renamed from: ۧۥۨۦ, reason: not valid java name and contains not printable characters */
    public static void m72578(Object obj, int i) {
        if (C20615.m72490() <= 0) {
            ((TextView) obj).setGravity(i);
        }
    }

    /* renamed from: ۣۨۤۦ, reason: not valid java name and contains not printable characters */
    public static Resources m72579(Object obj) {
        if (C20616.m72524() >= 0) {
            return ((Context) obj).getResources();
        }
        return null;
    }

    /* renamed from: ۨۥۧۨ, reason: not valid java name and contains not printable characters */
    public static ViewPropertyAnimator m72580(Object obj) {
        if (C20615.m72490() < 0) {
            return ((C17024u.AnimatedDashedBorderLayout) obj).animate();
        }
        return null;
    }

    /* renamed from: ۠ۤۨۦ, reason: not valid java name and contains not printable characters */
    public static String m72566(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}
