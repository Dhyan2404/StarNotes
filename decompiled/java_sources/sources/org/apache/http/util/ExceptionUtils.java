package org.apache.http.util;

import java.lang.reflect.Method;

@Deprecated
/* loaded from: classes12.dex */
public final class ExceptionUtils {

    /* renamed from: a */
    public static final Method f111164a = m68612a();

    /* renamed from: a */
    public static Method m68612a() {
        try {
            return Throwable.class.getMethod("initCause", Throwable.class);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static void initCause(Throwable th, Throwable th2) {
        Method method = f111164a;
        if (method != null) {
            try {
                method.invoke(th, th2);
            } catch (Exception unused) {
            }
        }
    }
}
