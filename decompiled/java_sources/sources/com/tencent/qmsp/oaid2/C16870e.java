package com.tencent.qmsp.oaid2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;

/* renamed from: com.tencent.qmsp.oaid2.e */
/* loaded from: classes10.dex */
public class C16870e {

    /* renamed from: a */
    public static Context f93735a;

    /* renamed from: a */
    public static Context m60160a() {
        Context context;
        synchronized (C16870e.class) {
            if (f93735a == null) {
                f93735a = m60162b();
            }
            context = f93735a;
        }
        return context;
    }

    /* renamed from: b */
    public static Context m60162b() {
        try {
            return (Context) Class.forName("android.app.ActivityThread").getDeclaredMethod("currentApplication", new Class[0]).invoke(null, new Object[0]);
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | SecurityException | InvocationTargetException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static String m60161a(Context context) {
        String packageName;
        if (context == null) {
            return "";
        }
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo != null && !TextUtils.isEmpty(applicationInfo.packageName)) {
                packageName = applicationInfo.packageName;
                return packageName;
            }
            packageName = m60160a().getPackageName();
            return packageName;
        } catch (Exception unused) {
            return "";
        }
    }
}
