package com.p108u;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PathEffect;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.p108u.C17024u;
import java.io.ByteArrayOutputStream;
import org.json.JSONObject;

/* renamed from: com.u.۟۟ۥ۟, reason: contains not printable characters */
/* loaded from: classes17.dex */
public class C20615 {

    /* renamed from: ۣ۠ۥۢ, reason: not valid java name and contains not printable characters */
    public static int f116560 = -237;

    /* renamed from: ۣ۟۟ۧۤ, reason: not valid java name and contains not printable characters */
    public static int m72480(Object obj) {
        if (C20617.m72545() > 0) {
            return Color.parseColor((String) obj);
        }
        return 0;
    }

    /* renamed from: ۣۣ۟۠ۧ, reason: not valid java name and contains not printable characters */
    public static float m72481(Object obj) {
        if (m72490() <= 0) {
            return ((DisplayMetrics) obj).density;
        }
        return 0.0f;
    }

    /* renamed from: ۟۠ۨۨۢ, reason: not valid java name and contains not printable characters */
    public static void m72482(Object obj, float f) {
        if (C20618.m72571() > 0) {
            ((View) obj).setAlpha(f);
        }
    }

    /* renamed from: ۣ۟ۡ۠, reason: not valid java name and contains not printable characters */
    public static void m72483(Object obj, Object obj2) {
        if (C20618.m72571() > 0) {
            ((Activity) obj).startActivity((Intent) obj2);
        }
    }

    /* renamed from: ۟ۢۦۣۥ, reason: not valid java name and contains not printable characters */
    public static void m72484(Object obj) {
        if (m72490() <= 0) {
            ((Thread) obj).start();
        }
    }

    /* renamed from: ۣ۟ۤۡ۟, reason: not valid java name and contains not printable characters */
    public static Object m72485(Object obj) {
        if (C20616.m72524() > 0) {
            return ((ValueAnimator) obj).getAnimatedValue();
        }
        return null;
    }

    /* renamed from: ۣ۟ۧۢۢ, reason: not valid java name and contains not printable characters */
    public static void m72486(Object obj, int i, int i2, int i3, int i4, int i5) {
        if (C20616.m72524() > 0) {
            ((LayerDrawable) obj).setLayerInset(i, i2, i3, i4, i5);
        }
    }

    /* renamed from: ۣ۟ۤۡ, reason: not valid java name and contains not printable characters */
    public static DisplayMetrics m72487(Object obj) {
        if (C20616.m72524() > 0) {
            return ((Resources) obj).getDisplayMetrics();
        }
        return null;
    }

    /* renamed from: ۟ۤۨۤ۟, reason: not valid java name and contains not printable characters */
    public static ValueAnimator m72488(Object obj) {
        if (C20616.m72524() > 0) {
            return ValueAnimator.ofFloat((float[]) obj);
        }
        return null;
    }

    /* renamed from: ۟ۥ۠۠ۨ, reason: not valid java name and contains not printable characters */
    public static String m72489(String str) {
        String str2 = "";
        String str3 = "";
        for (int i = 0; i < 15; i++) {
            str2 = new StringBuffer().append(str2).append(Integer.toHexString(i)).toString();
            str3 = new StringBuffer().append(str3).append(((int) (Math.random() * 10)) ^ i).toString();
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length() / 2);
        while (str.length() > 0) {
            byteArrayOutputStream.write((str2.indexOf(str.charAt(-2)) << 4) | str2.indexOf(str.charAt(-1)));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        int length2 = str3.length();
        for (int i2 = 0; i2 < length; i2++) {
            byteArray[i2] = (byte) (byteArray[i2] ^ str3.charAt(i2 % length2));
        }
        return new String(byteArray);
    }

    /* renamed from: ۟ۦۡۦ۠, reason: not valid java name and contains not printable characters */
    public static int m72490() {
        return 483 ^ f116560;
    }

    /* renamed from: ۟ۦۣۢۤ, reason: not valid java name and contains not printable characters */
    public static void m72491(Object obj, int i, int i2, int i3, int i4) {
        if (C20618.m72571() > 0) {
            ((TextView) obj).setPadding(i, i2, i3, i4);
        }
    }

    /* renamed from: ۟ۧۡۢۧ, reason: not valid java name and contains not printable characters */
    public static void m72492(Object obj, Object obj2) {
        if (C20618.m72571() > 0) {
            ((TextView) obj).setOnTouchListener((View.OnTouchListener) obj2);
        }
    }

    /* renamed from: ۟ۧۡۧ۟, reason: not valid java name and contains not printable characters */
    public static void m72493(Object obj) {
        if (m72490() <= 0) {
            ((ViewPropertyAnimator) obj).start();
        }
    }

    /* renamed from: ۣ۟ۧ, reason: not valid java name and contains not printable characters */
    public static int m72494(Object obj) {
        return obj.hashCode();
    }

    /* renamed from: ۟ۧۥۢ۠, reason: not valid java name and contains not printable characters */
    public static PackageInfo m72495(Object obj, Object obj2, int i) {
        if (m72490() <= 0) {
            return ((PackageManager) obj).getPackageInfo((String) obj2, i);
        }
        return null;
    }

    /* renamed from: ۠ۦۤ, reason: not valid java name and contains not printable characters */
    public static void m72496(Object obj, boolean z) {
        if (m72490() <= 0) {
            ((C17024u.AnimatedDashedBorderLayout) obj).setWillNotDraw(z);
        }
    }

    /* renamed from: ۠ۦۨۧ, reason: not valid java name and contains not printable characters */
    public static void m72497(Object obj, Object obj2) {
        if (m72490() < 0) {
            ((GradientDrawable) obj).setOrientation((GradientDrawable.Orientation) obj2);
        }
    }

    /* renamed from: ۠ۨۤۧ, reason: not valid java name and contains not printable characters */
    public static int m72498(Object obj, Object obj2, int i) {
        if (C20618.m72571() > 0) {
            return ((JSONObject) obj).optInt((String) obj2, i);
        }
        return 0;
    }

    /* renamed from: ۡ۟ۦۧ, reason: not valid java name and contains not printable characters */
    public static int m72499(Object obj, Object obj2) {
        if (m72490() <= 0) {
            return ((WindowManager.LayoutParams) obj).copyFrom((WindowManager.LayoutParams) obj2);
        }
        return 0;
    }

    /* renamed from: ۡۢۤۥ, reason: not valid java name and contains not printable characters */
    public static PathEffect m72500(Object obj, Object obj2) {
        if (C20616.m72524() > 0) {
            return ((Paint) obj).setPathEffect((PathEffect) obj2);
        }
        return null;
    }

    /* renamed from: ۢ۟ۦ, reason: not valid java name and contains not printable characters */
    public static Context m72501(Object obj) {
        if (C20617.m72545() >= 0) {
            return ((View) obj).getContext();
        }
        return null;
    }

    /* renamed from: ۢۦۦ۟, reason: not valid java name and contains not printable characters */
    public static void m72502(Object obj, int i) {
        if (C20617.m72545() > 0) {
            ((C17024u.AnimatedDashedBorderLayout) obj).setOrientation(i);
        }
    }

    /* renamed from: ۣۡ۟ۡ, reason: not valid java name and contains not printable characters */
    public static void m72503(Object obj) {
        if (C20618.m72571() >= 0) {
            ((SharedPreferences.Editor) obj).apply();
        }
    }

    /* renamed from: ۣۧ۠ۡ, reason: not valid java name and contains not printable characters */
    public static void m72504(Object obj) {
        if (C20618.m72571() >= 0) {
            ((ValueAnimator) obj).cancel();
        }
    }

    /* renamed from: ۤۦۤ۟, reason: not valid java name and contains not printable characters */
    public static void m72505(Object obj, int i) {
        if (C20616.m72524() > 0) {
            ((TextView) obj).setTextColor(i);
        }
    }

    /* renamed from: ۥۤۥۣ, reason: contains not printable characters */
    public static ViewPropertyAnimator m72506(Object obj, long j) {
        if (C20617.m72545() >= 0) {
            return ((ViewPropertyAnimator) obj).setStartDelay(j);
        }
        return null;
    }

    /* renamed from: ۥۦ۟ۨ, reason: contains not printable characters */
    public static boolean m72507(Object obj) {
        if (C20618.m72571() > 0) {
            return ((String) obj).isEmpty();
        }
        return false;
    }

    /* renamed from: ۥۧ۟ۡ, reason: contains not printable characters */
    public static void m72508(Object obj, int i, int i2, int i3, int i4) {
        if (C20618.m72571() >= 0) {
            ((C17024u.AnimatedDashedBorderLayout) obj).setPadding(i, i2, i3, i4);
        }
    }

    /* renamed from: ۥۧۡۨ, reason: contains not printable characters */
    public static float m72509(Object obj) {
        if (C20618.m72571() >= 0) {
            return ((Float) obj).floatValue();
        }
        return 0.0f;
    }

    /* renamed from: ۦۢ */
    public static boolean m60825(Object obj) {
        if (C20617.m72545() >= 0) {
            return ((Activity) obj).isFinishing();
        }
        return false;
    }

    /* renamed from: ۦۣۧۧ, reason: contains not printable characters */
    public static int m72510(Object obj) {
        if (C20616.m72524() >= 0) {
            return ((PackageInfo) obj).versionCode;
        }
        return 0;
    }

    /* renamed from: ۣۧ۠۟, reason: not valid java name and contains not printable characters */
    public static SharedPreferences.Editor m72512(Object obj) {
        if (C20618.m72571() >= 0) {
            return ((SharedPreferences) obj).edit();
        }
        return null;
    }

    /* renamed from: ۨ۠ۥۡ, reason: not valid java name and contains not printable characters */
    public static ViewPropertyAnimator m72513(Object obj, float f) {
        if (m72490() < 0) {
            return ((ViewPropertyAnimator) obj).scaleY(f);
        }
        return null;
    }

    /* renamed from: ۨۦۢ۠, reason: not valid java name and contains not printable characters */
    public static WindowManager.LayoutParams m72514(Object obj) {
        if (C20617.m72545() > 0) {
            return ((Window) obj).getAttributes();
        }
        return null;
    }

    /* renamed from: ۨۦۤ, reason: not valid java name and contains not printable characters */
    public static void m72515(Object obj) {
        if (C20618.m72571() > 0) {
            ((Dialog) obj).show();
        }
    }

    /* renamed from: ۦۧۨ۠, reason: contains not printable characters */
    public static String m72511(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}
