package androidx.core.util;

import androidx.annotation.RestrictTo;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.io.PrintWriter;
import org.mortbay.util.MultiPartWriter;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public final class TimeUtils {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int HUNDRED_DAY_FIELD_LEN = 19;

    /* renamed from: a */
    public static final int f5775a = 60;

    /* renamed from: b */
    public static final int f5776b = 3600;

    /* renamed from: c */
    public static final int f5777c = 86400;

    /* renamed from: d */
    public static final Object f5778d = new Object();

    /* renamed from: e */
    public static char[] f5779e = new char[24];

    /* renamed from: a */
    public static int m3271a(int i, int i2, boolean z, int i3) {
        if (i > 99 || (z && i3 >= 3)) {
            return i2 + 3;
        }
        if (i > 9 || (z && i3 >= 2)) {
            return i2 + 2;
        }
        if (z || i > 0) {
            return i2 + 1;
        }
        return 0;
    }

    /* renamed from: b */
    public static int m3272b(long j, int i) {
        char c;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        long j2 = j;
        if (f5779e.length < i) {
            f5779e = new char[i];
        }
        char[] cArr = f5779e;
        if (j2 == 0) {
            int i7 = i - 1;
            while (i7 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (j2 > 0) {
            c = PhoneNumberUtil.f36455s;
        } else {
            j2 = -j2;
            c = '-';
        }
        int i8 = (int) (j2 % 1000);
        int floor = (int) Math.floor(j2 / 1000);
        if (floor > 86400) {
            i2 = floor / 86400;
            floor -= 86400 * i2;
        } else {
            i2 = 0;
        }
        if (floor > 3600) {
            i3 = floor / 3600;
            floor -= i3 * 3600;
        } else {
            i3 = 0;
        }
        if (floor > 60) {
            int i9 = floor / 60;
            i4 = floor - (i9 * 60);
            i5 = i9;
        } else {
            i4 = floor;
            i5 = 0;
        }
        if (i != 0) {
            int m3271a = m3271a(i2, 1, false, 0);
            int m3271a2 = m3271a + m3271a(i3, 1, m3271a > 0, 2);
            int m3271a3 = m3271a2 + m3271a(i5, 1, m3271a2 > 0, 2);
            int m3271a4 = m3271a3 + m3271a(i4, 1, m3271a3 > 0, 2);
            i6 = 0;
            for (int m3271a5 = m3271a4 + m3271a(i8, 2, true, m3271a4 > 0 ? 3 : 0) + 1; m3271a5 < i; m3271a5++) {
                cArr[i6] = ' ';
                i6++;
            }
        } else {
            i6 = 0;
        }
        cArr[i6] = c;
        int i10 = i6 + 1;
        boolean z = i != 0;
        int m3273c = m3273c(cArr, i2, 'd', i10, false, 0);
        int m3273c2 = m3273c(cArr, i3, 'h', m3273c, m3273c != i10, z ? 2 : 0);
        int m3273c3 = m3273c(cArr, i5, 'm', m3273c2, m3273c2 != i10, z ? 2 : 0);
        int m3273c4 = m3273c(cArr, i4, 's', m3273c3, m3273c3 != i10, z ? 2 : 0);
        int m3273c5 = m3273c(cArr, i8, 'm', m3273c4, true, (!z || m3273c4 == i10) ? 0 : 3);
        cArr[m3273c5] = 's';
        return m3273c5 + 1;
    }

    /* renamed from: c */
    public static int m3273c(char[] cArr, int i, char c, int i2, boolean z, int i3) {
        int i4;
        if (!z && i <= 0) {
            return i2;
        }
        if ((!z || i3 < 3) && i <= 99) {
            i4 = i2;
        } else {
            int i5 = i / 100;
            cArr[i2] = (char) (i5 + 48);
            i4 = i2 + 1;
            i -= i5 * 100;
        }
        if ((z && i3 >= 2) || i > 9 || i2 != i4) {
            int i6 = i / 10;
            cArr[i4] = (char) (i6 + 48);
            i4++;
            i -= i6 * 10;
        }
        cArr[i4] = (char) (i + 48);
        int i7 = i4 + 1;
        cArr[i7] = c;
        return i7 + 1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j, StringBuilder sb) {
        synchronized (f5778d) {
            sb.append(f5779e, 0, m3272b(j, 0));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j, PrintWriter printWriter, int i) {
        synchronized (f5778d) {
            printWriter.print(new String(f5779e, 0, m3272b(j, i)));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j, PrintWriter printWriter) {
        formatDuration(j, printWriter, 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void formatDuration(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print(MultiPartWriter.f115320h);
        } else {
            formatDuration(j - j2, printWriter, 0);
        }
    }
}
