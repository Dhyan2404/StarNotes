package com.tencent.qmsp.oaid2;

import android.content.Context;
import android.util.Log;
import java.lang.reflect.Method;

/* renamed from: com.tencent.qmsp.oaid2.y */
/* loaded from: classes10.dex */
public class C16900y {
    /* renamed from: a */
    public static final boolean m60256a() {
        Context context = null;
        try {
            Method method = Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]);
            method.setAccessible(true);
            context = (Context) method.invoke(null, new Object[0]);
        } catch (Exception e) {
            Log.e("OpenIdHelper", "ActivityThread:currentApplication --> " + e.toString());
        }
        if (context == null) {
            return false;
        }
        return C16899x.m60248a().m60254a(context, false);
    }

    /* renamed from: b */
    public static String m60257b(Context context) {
        C16899x m60248a = C16899x.m60248a();
        return m60248a.m60252a(context.getApplicationContext(), m60248a.f93818b);
    }

    /* renamed from: a */
    public static String m60255a(Context context) {
        C16899x m60248a = C16899x.m60248a();
        return m60248a.m60252a(context.getApplicationContext(), m60248a.f93819c);
    }
}
