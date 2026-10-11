package com.google.gson.internal;

/* loaded from: classes6.dex */
public final class JavaVersion {

    /* renamed from: a */
    public static final int f36153a = m28242a();

    /* renamed from: a */
    public static int m28242a() {
        return m28245d(System.getProperty("java.version"));
    }

    /* renamed from: b */
    public static int m28243b(String str) {
        try {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (!Character.isDigit(charAt)) {
                    break;
                }
                sb.append(charAt);
            }
            return Integer.parseInt(sb.toString());
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    /* renamed from: c */
    public static int m28244c(String str) {
        try {
            String[] split = str.split("[._]", 3);
            int parseInt = Integer.parseInt(split[0]);
            return (parseInt != 1 || split.length <= 1) ? parseInt : Integer.parseInt(split[1]);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    /* renamed from: d */
    public static int m28245d(String str) {
        int m28244c = m28244c(str);
        if (m28244c == -1) {
            m28244c = m28243b(str);
        }
        if (m28244c == -1) {
            return 6;
        }
        return m28244c;
    }

    public static int getMajorJavaVersion() {
        return f36153a;
    }

    public static boolean isJava9OrLater() {
        return f36153a >= 9;
    }
}
