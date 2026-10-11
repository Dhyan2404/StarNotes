package org.apache.http.client.utils;

import java.util.StringTokenizer;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
@Deprecated
/* loaded from: classes12.dex */
public class Rfc3492Idn implements Idn {

    /* renamed from: a */
    public static final int f110204a = 36;

    /* renamed from: b */
    public static final int f110205b = 1;

    /* renamed from: c */
    public static final int f110206c = 26;

    /* renamed from: d */
    public static final int f110207d = 38;

    /* renamed from: e */
    public static final int f110208e = 700;

    /* renamed from: f */
    public static final int f110209f = 72;

    /* renamed from: g */
    public static final int f110210g = 128;

    /* renamed from: h */
    public static final char f110211h = '-';

    /* renamed from: i */
    public static final String f110212i = "xn--";

    /* renamed from: a */
    public final int m68303a(int i, int i2, boolean z) {
        int i3 = z ? i / 700 : i / 2;
        int i4 = i3 + (i3 / i2);
        int i5 = 0;
        while (i4 > 455) {
            i4 /= 35;
            i5 += 36;
        }
        return i5 + ((i4 * 36) / (i4 + 38));
    }

    /* renamed from: b */
    public final int m68304b(char c) {
        if (c >= 'A' && c <= 'Z') {
            return c - 'A';
        }
        if (c >= 'a' && c <= 'z') {
            return c - 'a';
        }
        if (c >= '0' && c <= '9') {
            return (c - '0') + 26;
        }
        throw new IllegalArgumentException("illegal digit: " + c);
    }

    public String decode(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        int lastIndexOf = str.lastIndexOf(45);
        int i = 128;
        int i2 = 72;
        if (lastIndexOf != -1) {
            sb.append(str.subSequence(0, lastIndexOf));
            str = str.substring(lastIndexOf + 1);
        }
        int i3 = 0;
        while (!str.isEmpty()) {
            int i4 = 36;
            int i5 = i3;
            int i6 = 1;
            while (!str.isEmpty()) {
                char charAt = str.charAt(0);
                str = str.substring(1);
                int m68304b = m68304b(charAt);
                i5 += m68304b * i6;
                int i7 = i4 <= i2 + 1 ? 1 : i4 >= i2 + 26 ? 26 : i4 - i2;
                if (m68304b < i7) {
                    break;
                }
                i6 *= 36 - i7;
                i4 += 36;
            }
            i2 = m68303a(i5 - i3, sb.length() + 1, i3 == 0);
            i += i5 / (sb.length() + 1);
            int length = i5 % (sb.length() + 1);
            sb.insert(length, (char) i);
            i3 = length + 1;
        }
        return sb.toString();
    }

    @Override // org.apache.http.client.utils.Idn
    public String toUnicode(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (sb.length() > 0) {
                sb.append('.');
            }
            if (nextToken.startsWith(f110212i)) {
                nextToken = decode(nextToken.substring(4));
            }
            sb.append(nextToken);
        }
        return sb.toString();
    }
}
