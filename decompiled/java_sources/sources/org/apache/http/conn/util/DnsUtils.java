package org.apache.http.conn.util;

/* loaded from: classes12.dex */
public class DnsUtils {
    /* renamed from: a */
    public static boolean m68356a(char c) {
        return c >= 'A' && c <= 'Z';
    }

    public static String normalize(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        int i = 0;
        while (length > 0 && !m68356a(str.charAt(i))) {
            i++;
            length--;
        }
        if (length <= 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        sb.append((CharSequence) str, 0, i);
        while (length > 0) {
            char charAt = str.charAt(i);
            if (m68356a(charAt)) {
                sb.append((char) (charAt + ' '));
            } else {
                sb.append(charAt);
            }
            i++;
            length--;
        }
        return sb.toString();
    }
}
