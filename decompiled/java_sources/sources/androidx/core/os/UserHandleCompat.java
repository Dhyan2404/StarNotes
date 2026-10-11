package androidx.core.os;

import android.os.UserHandle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class UserHandleCompat {

    /* renamed from: a */
    @Nullable
    public static Method f5555a;

    /* renamed from: b */
    @Nullable
    public static Constructor<UserHandle> f5556b;

    @RequiresApi(24)
    /* renamed from: androidx.core.os.UserHandleCompat$a */
    /* loaded from: classes3.dex */
    public static class C0717a {
        private C0717a() {
        }

        @NonNull
        /* renamed from: a */
        public static UserHandle m3148a(int i) {
            return UserHandle.getUserHandleForUid(i);
        }
    }

    /* renamed from: a */
    public static Method m3146a() throws NoSuchMethodException {
        if (f5555a == null) {
            Method declaredMethod = UserHandle.class.getDeclaredMethod("getUserId", Integer.TYPE);
            f5555a = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        return f5555a;
    }

    /* renamed from: b */
    public static Constructor<UserHandle> m3147b() throws NoSuchMethodException {
        if (f5556b == null) {
            Constructor<UserHandle> declaredConstructor = UserHandle.class.getDeclaredConstructor(Integer.TYPE);
            f5556b = declaredConstructor;
            declaredConstructor.setAccessible(true);
        }
        return f5556b;
    }

    @NonNull
    public static UserHandle getUserHandleForUid(int i) {
        return C0717a.m3148a(i);
    }
}
