package com.sagittarius.p050v6.p052b;

import android.os.Build;
import java.io.File;

/* renamed from: com.sagittarius.v6.b.b */
/* loaded from: classes18.dex */
public class C13093b {
    /* renamed from: a */
    private static int m52320a() {
        try {
            return Build.VERSION.PREVIEW_SDK_INT;
        } catch (Throwable th) {
            return 1;
        }
    }

    /* renamed from: a */
    public static void m52321a(ClassLoader classLoader, File file) {
        synchronized (C13093b.class) {
            try {
            } catch (Throwable th) {
                throw th;
            }
            if (file.exists()) {
                if ((Build.VERSION.SDK_INT != 25 || m52320a() == 0) && Build.VERSION.SDK_INT <= 25) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        try {
                            C13095d.m52327a(classLoader, file);
                        } catch (Throwable th2) {
                            C13110s.m52378a(C13110s.m52375a(classLoader, C13094c.f63256a[0]).get(classLoader), C13094c.f63256a[1], new File[]{file});
                        }
                    } else if (Build.VERSION.SDK_INT >= 14) {
                        C13110s.m52378a(C13110s.m52375a(classLoader, C13094c.f63256a[0]).get(classLoader), C13094c.f63256a[1], new File[]{file});
                    }
                    return;
                }
                try {
                    C13096e.m52330a(classLoader, file);
                    return;
                } catch (Throwable th3) {
                    C13095d.m52327a(classLoader, file);
                }
                throw th;
            }
        }
    }
}
