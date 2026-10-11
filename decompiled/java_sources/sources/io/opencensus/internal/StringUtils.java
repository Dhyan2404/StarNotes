package io.opencensus.internal;

/* loaded from: classes10.dex */
public final class StringUtils {
    /* renamed from: a */
    public static boolean m60956a(char c) {
        return c >= ' ' && c <= '~';
    }

    public static boolean isPrintableString(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!m60956a(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }
}
