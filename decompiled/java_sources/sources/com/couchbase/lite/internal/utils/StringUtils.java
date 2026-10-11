package com.couchbase.lite.internal.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Locale;
import java.util.Map;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes4.dex */
public final class StringUtils {
    public static final String ALPHA = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    public static final String ALPHANUMERIC;
    private static final char[] CHARS;
    public static final String NUMERIC = "0123456789";

    static {
        String str = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ" + ALPHA.toLowerCase(Locale.ROOT);
        ALPHANUMERIC = str;
        CHARS = str.toCharArray();
    }

    private StringUtils() {
    }

    @NonNull
    public static String getArrayString(@Nullable String[] strArr, int i) {
        return (strArr == null || i < 0 || i >= strArr.length) ? "" : strArr[i];
    }

    @NonNull
    public static String getUniqueName(@NonNull String str, int i) {
        return str + NameUtil.USCORE + randomString(i);
    }

    public static boolean isEmpty(@Nullable String str) {
        return str == null || str.isEmpty();
    }

    @NonNull
    public static String join(@NonNull CharSequence charSequence, @NonNull Iterable<?> iterable) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object obj : iterable) {
            if (z) {
                z = false;
            } else {
                sb.append(charSequence);
            }
            sb.append(obj);
        }
        return sb.toString();
    }

    @NonNull
    public static String randomString(int i) {
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < i; i2++) {
            char[] cArr2 = CHARS;
            cArr[i2] = cArr2[MathUtils.RANDOM.get().nextInt(cArr2.length)];
        }
        return new String(cArr);
    }

    @NonNull
    public static String toString(@Nullable Map<?, ?> map) {
        StringBuilder sb = new StringBuilder();
        if (map != null) {
            int i = 0;
            for (Map.Entry<?, ?> entry : map.entrySet()) {
                int i2 = i + 1;
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(entry.getKey());
                sb.append("=>");
                sb.append(entry.getValue());
                i = i2;
            }
        }
        return sb.toString();
    }
}
