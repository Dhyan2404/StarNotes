package com.sagittarius.p050v6.p052b;

import android.os.Build;
import com.sagittarius.p050v6.p051a.C13091a;
import java.lang.reflect.Method;

/* renamed from: com.sagittarius.v6.b.r */
/* loaded from: classes18.dex */
public final class C13109r {

    /* renamed from: a */
    private static Method f63281a;

    /* renamed from: b */
    private static Object f63282b;

    /* renamed from: c */
    private static final String[] f63283c = null;

    static {
        m52373b();
        f63282b = null;
        f63281a = null;
        if (Build.VERSION.SDK_INT > 27) {
            try {
                Method declaredMethod = Class.class.getDeclaredMethod(f63283c[0], String.class, Class[].class);
                Class<?> cls = Class.forName(f63283c[1]);
                Method method = (Method) declaredMethod.invoke(cls, f63283c[2], null);
                f63281a = (Method) declaredMethod.invoke(cls, f63283c[3], new Class[]{String[].class});
                f63282b = method.invoke(null, new Object[0]);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    private static String m52370a(String str, String str2) {
        byte[] m52319a = C13091a.m52319a(str);
        StringBuilder sb = new StringBuilder();
        char[] charArray = str2.toCharArray();
        int i = 0;
        for (byte b : m52319a) {
            sb.append((char) (b ^ charArray[i % charArray.length]));
            i++;
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m52371a() {
        m52372a(f63283c[4]);
    }

    /* renamed from: a */
    private static boolean m52372a(String... strArr) {
        Method method;
        Object obj = f63282b;
        if (obj == null || (method = f63281a) == null) {
            return false;
        }
        try {
            method.invoke(obj, strArr);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: b */
    private static void m52373b() {
        String[] strArr = new String[5];
        f63283c = strArr;
        strArr[0] = m52370a("DDcHCAcIPhI+Bw8fFjgKBDY=", "kRsLb");
        f63283c[1] = m52370a("NCw+MQo7YyE+ECQoP2k1HR8nKRc5IDc=", "PMRGc");
        f63283c[2] = m52370a("FSEQBSUcMA06NQ==", "rDdWP");
        f63283c[3] = m52370a("HCM1GQoLIiQ/Ih8vBCkGAjY1OAwBNQ==", "oFAQc");
        f63283c[4] = m52370a("Ig==", "nMFLR");
    }
}
