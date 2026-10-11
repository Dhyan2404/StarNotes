package androidx.core.os;

import android.annotation.SuppressLint;
import android.os.Process;
import android.os.UserHandle;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class ProcessCompat {

    /* renamed from: androidx.core.os.ProcessCompat$a */
    /* loaded from: classes3.dex */
    public static class C0714a {

        /* renamed from: a */
        public static final Object f5546a = new Object();

        /* renamed from: b */
        public static Method f5547b;

        /* renamed from: c */
        public static boolean f5548c;

        @SuppressLint({"DiscouragedPrivateApi"})
        /* renamed from: a */
        public static boolean m3140a(int i) {
            try {
                synchronized (f5546a) {
                    if (!f5548c) {
                        f5548c = true;
                        f5547b = UserHandle.class.getDeclaredMethod("isApp", Integer.TYPE);
                    }
                }
                Method method = f5547b;
                if (method != null) {
                    Boolean bool = (Boolean) method.invoke(null, Integer.valueOf(i));
                    if (bool != null) {
                        return bool.booleanValue();
                    }
                    throw new NullPointerException();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return true;
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.os.ProcessCompat$b */
    /* loaded from: classes3.dex */
    public static class C0715b {
        /* renamed from: a */
        public static boolean m3141a(int i) {
            return Process.isApplicationUid(i);
        }
    }

    public static boolean isApplicationUid(int i) {
        return C0715b.m3141a(i);
    }
}
