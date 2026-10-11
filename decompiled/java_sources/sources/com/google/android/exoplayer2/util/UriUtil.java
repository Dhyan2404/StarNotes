package com.google.android.exoplayer2.util;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class UriUtil {

    /* renamed from: a */
    public static final int f28467a = 4;

    /* renamed from: b */
    public static final int f28468b = 0;

    /* renamed from: c */
    public static final int f28469c = 1;

    /* renamed from: d */
    public static final int f28470d = 2;

    /* renamed from: e */
    public static final int f28471e = 3;

    /* renamed from: a */
    public static int[] m21540a(String str) {
        int i;
        int[] iArr = new int[4];
        if (TextUtils.isEmpty(str)) {
            iArr[0] = -1;
            return iArr;
        }
        int length = str.length();
        int indexOf = str.indexOf(35);
        if (indexOf != -1) {
            length = indexOf;
        }
        int indexOf2 = str.indexOf(63);
        if (indexOf2 == -1 || indexOf2 > length) {
            indexOf2 = length;
        }
        int indexOf3 = str.indexOf(47);
        if (indexOf3 == -1 || indexOf3 > indexOf2) {
            indexOf3 = indexOf2;
        }
        int indexOf4 = str.indexOf(58);
        if (indexOf4 > indexOf3) {
            indexOf4 = -1;
        }
        int i2 = indexOf4 + 2;
        if (i2 < indexOf2 && str.charAt(indexOf4 + 1) == '/' && str.charAt(i2) == '/') {
            i = str.indexOf(47, indexOf4 + 3);
            if (i == -1 || i > indexOf2) {
                i = indexOf2;
            }
        } else {
            i = indexOf4 + 1;
        }
        iArr[0] = indexOf4;
        iArr[1] = i;
        iArr[2] = indexOf2;
        iArr[3] = length;
        return iArr;
    }

    /* renamed from: b */
    public static String m21541b(StringBuilder sb, int i, int i2) {
        int i3;
        int i4;
        if (i >= i2) {
            return sb.toString();
        }
        if (sb.charAt(i) == '/') {
            i++;
        }
        int i5 = i;
        int i6 = i5;
        while (i5 <= i2) {
            if (i5 == i2) {
                i3 = i5;
            } else if (sb.charAt(i5) == '/') {
                i3 = i5 + 1;
            } else {
                i5++;
            }
            int i7 = i6 + 1;
            if (i5 == i7 && sb.charAt(i6) == '.') {
                sb.delete(i6, i3);
                i2 -= i3 - i6;
            } else {
                if (i5 == i6 + 2 && sb.charAt(i6) == '.' && sb.charAt(i7) == '.') {
                    i4 = sb.lastIndexOf("/", i6 - 2) + 1;
                    int i8 = i4 > i ? i4 : i;
                    sb.delete(i8, i3);
                    i2 -= i3 - i8;
                } else {
                    i4 = i5 + 1;
                }
                i6 = i4;
            }
            i5 = i6;
        }
        return sb.toString();
    }

    public static boolean isAbsolute(@Nullable String str) {
        return (str == null || m21540a(str)[0] == -1) ? false : true;
    }

    public static Uri removeQueryParameter(Uri uri, String str) {
        Uri.Builder buildUpon = uri.buildUpon();
        buildUpon.clearQuery();
        for (String str2 : uri.getQueryParameterNames()) {
            if (!str2.equals(str)) {
                Iterator<String> it2 = uri.getQueryParameters(str2).iterator();
                while (it2.hasNext()) {
                    buildUpon.appendQueryParameter(str2, it2.next());
                }
            }
        }
        return buildUpon.build();
    }

    public static String resolve(@Nullable String str, @Nullable String str2) {
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        int[] m21540a = m21540a(str2);
        if (m21540a[0] != -1) {
            sb.append(str2);
            m21541b(sb, m21540a[1], m21540a[2]);
            return sb.toString();
        }
        int[] m21540a2 = m21540a(str);
        if (m21540a[3] == 0) {
            sb.append((CharSequence) str, 0, m21540a2[3]);
            sb.append(str2);
            return sb.toString();
        }
        if (m21540a[2] == 0) {
            sb.append((CharSequence) str, 0, m21540a2[2]);
            sb.append(str2);
            return sb.toString();
        }
        int i = m21540a[1];
        if (i != 0) {
            int i2 = m21540a2[0] + 1;
            sb.append((CharSequence) str, 0, i2);
            sb.append(str2);
            return m21541b(sb, m21540a[1] + i2, i2 + m21540a[2]);
        }
        if (str2.charAt(i) == '/') {
            sb.append((CharSequence) str, 0, m21540a2[1]);
            sb.append(str2);
            int i3 = m21540a2[1];
            return m21541b(sb, i3, m21540a[2] + i3);
        }
        int i4 = m21540a2[0] + 2;
        int i5 = m21540a2[1];
        if (i4 >= i5 || i5 != m21540a2[2]) {
            int lastIndexOf = str.lastIndexOf(47, m21540a2[2] - 1);
            int i6 = lastIndexOf == -1 ? m21540a2[1] : lastIndexOf + 1;
            sb.append((CharSequence) str, 0, i6);
            sb.append(str2);
            return m21541b(sb, m21540a2[1], i6 + m21540a[2]);
        }
        sb.append((CharSequence) str, 0, i5);
        sb.append('/');
        sb.append(str2);
        int i7 = m21540a2[1];
        return m21541b(sb, i7, m21540a[2] + i7 + 1);
    }

    public static Uri resolveToUri(@Nullable String str, @Nullable String str2) {
        return Uri.parse(resolve(str, str2));
    }
}
