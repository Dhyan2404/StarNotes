package com.couchbase.lite.internal.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
public final class ClassUtils {
    private ClassUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static <T> T castOrNull(@NonNull Class<T> cls, @Nullable Object obj) {
        if (cls.isInstance(obj)) {
            return obj;
        }
        return null;
    }

    public static int hash(Object... objArr) {
        if (objArr == null) {
            return 0;
        }
        int length = objArr.length;
        int i = 1;
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = objArr[i2];
            i = (i * 31) + (obj == null ? 0 : obj.hashCode());
        }
        return i;
    }

    public static boolean isEqual(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @NonNull
    public static String objId(@NonNull Object obj) {
        return "@0x" + Integer.toHexString(System.identityHashCode(obj));
    }
}
