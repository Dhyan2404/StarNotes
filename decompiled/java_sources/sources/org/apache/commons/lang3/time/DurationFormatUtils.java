package org.apache.commons.lang3.time;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public class DurationFormatUtils {
    public static final String ISO_EXTENDED_FORMAT_PATTERN = "'P'yyyy'Y'M'M'd'DT'H'H'm'M's.SSS'S'";

    /* renamed from: a */
    public static final Object f107626a = "y";

    /* renamed from: b */
    public static final Object f107627b = "M";

    /* renamed from: c */
    public static final Object f107628c = "d";

    /* renamed from: d */
    public static final Object f107629d = "H";

    /* renamed from: e */
    public static final Object f107630e = "m";

    /* renamed from: f */
    public static final Object f107631f = "s";

    /* renamed from: g */
    public static final Object f107632g = "S";

    /* renamed from: a */
    public static String m67390a(C18973a[] c18973aArr, long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z) {
        int i;
        int i2;
        long j8;
        C18973a[] c18973aArr2 = c18973aArr;
        long j9 = j7;
        StringBuilder sb = new StringBuilder();
        int length = c18973aArr2.length;
        int i3 = 0;
        boolean z2 = false;
        while (i3 < length) {
            C18973a c18973a = c18973aArr2[i3];
            Object m67395c = c18973a.m67395c();
            int m67394b = c18973a.m67394b();
            if (m67395c instanceof StringBuilder) {
                sb.append(m67395c.toString());
                j8 = j9;
                i2 = length;
                i = i3;
            } else {
                if (m67395c.equals(f107626a)) {
                    sb.append(m67392c(j, z, m67394b));
                } else if (m67395c.equals(f107627b)) {
                    sb.append(m67392c(j2, z, m67394b));
                } else if (m67395c.equals(f107628c)) {
                    i = i3;
                    sb.append(m67392c(j3, z, m67394b));
                    j8 = j9;
                    i2 = length;
                    z2 = false;
                } else {
                    i = i3;
                    if (m67395c.equals(f107629d)) {
                        i2 = length;
                        sb.append(m67392c(j4, z, m67394b));
                    } else {
                        i2 = length;
                        if (m67395c.equals(f107630e)) {
                            sb.append(m67392c(j5, z, m67394b));
                        } else {
                            if (m67395c.equals(f107631f)) {
                                sb.append(m67392c(j6, z, m67394b));
                                j8 = j7;
                                z2 = true;
                            } else if (m67395c.equals(f107632g)) {
                                if (z2) {
                                    j8 = j7;
                                    sb.append(m67392c(j8, true, z ? Math.max(3, m67394b) : 3));
                                } else {
                                    j8 = j7;
                                    sb.append(m67392c(j8, z, m67394b));
                                }
                                z2 = false;
                            } else {
                                j8 = j7;
                            }
                            i3 = i + 1;
                            j9 = j8;
                            length = i2;
                            c18973aArr2 = c18973aArr;
                        }
                    }
                    j8 = j9;
                    z2 = false;
                    i3 = i + 1;
                    j9 = j8;
                    length = i2;
                    c18973aArr2 = c18973aArr;
                }
                j8 = j9;
                i2 = length;
                i = i3;
                z2 = false;
            }
            i3 = i + 1;
            j9 = j8;
            length = i2;
            c18973aArr2 = c18973aArr;
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009b A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.commons.lang3.time.DurationFormatUtils.C18973a[] m67391b(java.lang.String r9) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r9.length()
            r0.<init>(r1)
            r1 = 0
            r2 = 0
            r3 = r1
            r4 = r3
            r5 = r2
            r6 = r5
        Lf:
            int r7 = r9.length()
            if (r3 >= r7) goto L9f
            char r7 = r9.charAt(r3)
            r8 = 39
            if (r4 == 0) goto L24
            if (r7 == r8) goto L24
            r5.append(r7)
            goto L9b
        L24:
            if (r7 == r8) goto L6a
            r8 = 72
            if (r7 == r8) goto L67
            r8 = 77
            if (r7 == r8) goto L64
            r8 = 83
            if (r7 == r8) goto L61
            r8 = 100
            if (r7 == r8) goto L5e
            r8 = 109(0x6d, float:1.53E-43)
            if (r7 == r8) goto L5b
            r8 = 115(0x73, float:1.61E-43)
            if (r7 == r8) goto L58
            r8 = 121(0x79, float:1.7E-43)
            if (r7 == r8) goto L55
            if (r5 != 0) goto L51
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            org.apache.commons.lang3.time.DurationFormatUtils$a r8 = new org.apache.commons.lang3.time.DurationFormatUtils$a
            r8.<init>(r5)
            r0.add(r8)
        L51:
            r5.append(r7)
            goto L7e
        L55:
            java.lang.Object r7 = org.apache.commons.lang3.time.DurationFormatUtils.f107626a
            goto L7f
        L58:
            java.lang.Object r7 = org.apache.commons.lang3.time.DurationFormatUtils.f107631f
            goto L7f
        L5b:
            java.lang.Object r7 = org.apache.commons.lang3.time.DurationFormatUtils.f107630e
            goto L7f
        L5e:
            java.lang.Object r7 = org.apache.commons.lang3.time.DurationFormatUtils.f107628c
            goto L7f
        L61:
            java.lang.Object r7 = org.apache.commons.lang3.time.DurationFormatUtils.f107632g
            goto L7f
        L64:
            java.lang.Object r7 = org.apache.commons.lang3.time.DurationFormatUtils.f107627b
            goto L7f
        L67:
            java.lang.Object r7 = org.apache.commons.lang3.time.DurationFormatUtils.f107629d
            goto L7f
        L6a:
            if (r4 == 0) goto L70
            r4 = r1
            r5 = r2
            r7 = r5
            goto L7f
        L70:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            org.apache.commons.lang3.time.DurationFormatUtils$a r4 = new org.apache.commons.lang3.time.DurationFormatUtils$a
            r4.<init>(r5)
            r0.add(r4)
            r4 = 1
        L7e:
            r7 = r2
        L7f:
            if (r7 == 0) goto L9b
            if (r6 == 0) goto L91
            java.lang.Object r5 = r6.m67395c()
            boolean r5 = r5.equals(r7)
            if (r5 == 0) goto L91
            r6.m67396d()
            goto L9a
        L91:
            org.apache.commons.lang3.time.DurationFormatUtils$a r5 = new org.apache.commons.lang3.time.DurationFormatUtils$a
            r5.<init>(r7)
            r0.add(r5)
            r6 = r5
        L9a:
            r5 = r2
        L9b:
            int r3 = r3 + 1
            goto Lf
        L9f:
            if (r4 != 0) goto Lae
            int r9 = r0.size()
            org.apache.commons.lang3.time.DurationFormatUtils$a[] r9 = new org.apache.commons.lang3.time.DurationFormatUtils.C18973a[r9]
            java.lang.Object[] r9 = r0.toArray(r9)
            org.apache.commons.lang3.time.DurationFormatUtils$a[] r9 = (org.apache.commons.lang3.time.DurationFormatUtils.C18973a[]) r9
            return r9
        Lae:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unmatched quote in format: "
            r1.append(r2)
            r1.append(r9)
            java.lang.String r9 = r1.toString()
            r0.<init>(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.time.DurationFormatUtils.m67391b(java.lang.String):org.apache.commons.lang3.time.DurationFormatUtils$a[]");
    }

    /* renamed from: c */
    public static String m67392c(long j, boolean z, int i) {
        String l = Long.toString(j);
        return z ? StringUtils.leftPad(l, i, '0') : l;
    }

    public static String formatDuration(long j, String str) {
        return formatDuration(j, str, true);
    }

    public static String formatDurationHMS(long j) {
        return formatDuration(j, "HH:mm:ss.SSS");
    }

    public static String formatDurationISO(long j) {
        return formatDuration(j, ISO_EXTENDED_FORMAT_PATTERN, false);
    }

    public static String formatDurationWords(long j, boolean z, boolean z2) {
        String formatDuration = formatDuration(j, "d' days 'H' hours 'm' minutes 's' seconds'");
        if (z) {
            formatDuration = " " + formatDuration;
            String replaceOnce = StringUtils.replaceOnce(formatDuration, " 0 days", "");
            if (replaceOnce.length() != formatDuration.length()) {
                String replaceOnce2 = StringUtils.replaceOnce(replaceOnce, " 0 hours", "");
                if (replaceOnce2.length() != replaceOnce.length()) {
                    formatDuration = StringUtils.replaceOnce(replaceOnce2, " 0 minutes", "");
                    if (formatDuration.length() != formatDuration.length()) {
                        formatDuration = StringUtils.replaceOnce(formatDuration, " 0 seconds", "");
                    }
                } else {
                    formatDuration = replaceOnce;
                }
            }
            if (formatDuration.length() != 0) {
                formatDuration = formatDuration.substring(1);
            }
        }
        if (z2) {
            String replaceOnce3 = StringUtils.replaceOnce(formatDuration, " 0 seconds", "");
            if (replaceOnce3.length() != formatDuration.length()) {
                formatDuration = StringUtils.replaceOnce(replaceOnce3, " 0 minutes", "");
                if (formatDuration.length() != replaceOnce3.length()) {
                    String replaceOnce4 = StringUtils.replaceOnce(formatDuration, " 0 hours", "");
                    if (replaceOnce4.length() != formatDuration.length()) {
                        formatDuration = StringUtils.replaceOnce(replaceOnce4, " 0 days", "");
                    }
                } else {
                    formatDuration = replaceOnce3;
                }
            }
        }
        return StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(" " + formatDuration, " 1 seconds", " 1 second"), " 1 minutes", " 1 minute"), " 1 hours", " 1 hour"), " 1 days", " 1 day").trim();
    }

    public static String formatPeriod(long j, long j2, String str) {
        return formatPeriod(j, j2, str, true, TimeZone.getDefault());
    }

    public static String formatPeriodISO(long j, long j2) {
        return formatPeriod(j, j2, ISO_EXTENDED_FORMAT_PATTERN, false, TimeZone.getDefault());
    }

    public static String formatDuration(long j, String str, boolean z) {
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        Validate.inclusiveBetween(0L, Long.MAX_VALUE, j, "durationMillis must not be negative");
        C18973a[] m67391b = m67391b(str);
        if (C18973a.m67393a(m67391b, f107628c)) {
            long j8 = j / 86400000;
            j2 = j - (86400000 * j8);
            j3 = j8;
        } else {
            j2 = j;
            j3 = 0;
        }
        if (C18973a.m67393a(m67391b, f107629d)) {
            long j9 = j2 / 3600000;
            j2 -= 3600000 * j9;
            j4 = j9;
        } else {
            j4 = 0;
        }
        if (C18973a.m67393a(m67391b, f107630e)) {
            long j10 = j2 / 60000;
            j2 -= 60000 * j10;
            j5 = j10;
        } else {
            j5 = 0;
        }
        if (C18973a.m67393a(m67391b, f107631f)) {
            long j11 = j2 / 1000;
            j7 = j2 - (1000 * j11);
            j6 = j11;
        } else {
            j6 = 0;
            j7 = j2;
        }
        return m67390a(m67391b, 0L, 0L, j3, j4, j5, j6, j7, z);
    }

    public static String formatPeriod(long j, long j2, String str, boolean z, TimeZone timeZone) {
        int i = 0;
        Validate.isTrue(j <= j2, "startMillis must not be greater than endMillis", new Object[0]);
        C18973a[] m67391b = m67391b(str);
        Calendar calendar = Calendar.getInstance(timeZone);
        calendar.setTime(new Date(j));
        Calendar calendar2 = Calendar.getInstance(timeZone);
        calendar2.setTime(new Date(j2));
        int i2 = calendar2.get(14) - calendar.get(14);
        int i3 = calendar2.get(13) - calendar.get(13);
        int i4 = calendar2.get(12) - calendar.get(12);
        int i5 = calendar2.get(11) - calendar.get(11);
        int i6 = calendar2.get(5) - calendar.get(5);
        int i7 = calendar2.get(2) - calendar.get(2);
        int i8 = calendar2.get(1) - calendar.get(1);
        while (i2 < 0) {
            i2 += 1000;
            i3--;
        }
        while (i3 < 0) {
            i3 += 60;
            i4--;
        }
        while (i4 < 0) {
            i4 += 60;
            i5--;
        }
        while (i5 < 0) {
            i5 += 24;
            i6--;
        }
        if (C18973a.m67393a(m67391b, f107627b)) {
            while (i6 < 0) {
                i6 += calendar.getActualMaximum(5);
                i7--;
                calendar.add(2, 1);
            }
            while (i7 < 0) {
                i7 += 12;
                i8--;
            }
            if (!C18973a.m67393a(m67391b, f107626a) && i8 != 0) {
                while (i8 != 0) {
                    i7 += i8 * 12;
                    i8 = 0;
                }
            }
        } else {
            if (!C18973a.m67393a(m67391b, f107626a)) {
                int i9 = calendar2.get(1);
                if (i7 < 0) {
                    i9--;
                }
                while (calendar.get(1) != i9) {
                    int actualMaximum = i6 + (calendar.getActualMaximum(6) - calendar.get(6));
                    if ((calendar instanceof GregorianCalendar) && calendar.get(2) == 1 && calendar.get(5) == 29) {
                        actualMaximum++;
                    }
                    calendar.add(1, 1);
                    i6 = actualMaximum + calendar.get(6);
                }
                i8 = 0;
            }
            while (calendar.get(2) != calendar2.get(2)) {
                i6 += calendar.getActualMaximum(5);
                calendar.add(2, 1);
            }
            i7 = 0;
            while (i6 < 0) {
                i6 += calendar.getActualMaximum(5);
                i7--;
                calendar.add(2, 1);
            }
        }
        if (!C18973a.m67393a(m67391b, f107628c)) {
            i5 += i6 * 24;
            i6 = 0;
        }
        if (!C18973a.m67393a(m67391b, f107629d)) {
            i4 += i5 * 60;
            i5 = 0;
        }
        if (!C18973a.m67393a(m67391b, f107630e)) {
            i3 += i4 * 60;
            i4 = 0;
        }
        if (C18973a.m67393a(m67391b, f107631f)) {
            i = i3;
        } else {
            i2 += i3 * 1000;
        }
        return m67390a(m67391b, i8, i7, i6, i5, i4, i, i2, z);
    }

    /* renamed from: org.apache.commons.lang3.time.DurationFormatUtils$a */
    /* loaded from: classes12.dex */
    public static class C18973a {

        /* renamed from: a */
        public final Object f107633a;

        /* renamed from: b */
        public int f107634b;

        public C18973a(Object obj) {
            this.f107633a = obj;
            this.f107634b = 1;
        }

        /* renamed from: a */
        public static boolean m67393a(C18973a[] c18973aArr, Object obj) {
            for (C18973a c18973a : c18973aArr) {
                if (c18973a.m67395c() == obj) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: b */
        public int m67394b() {
            return this.f107634b;
        }

        /* renamed from: c */
        public Object m67395c() {
            return this.f107633a;
        }

        /* renamed from: d */
        public void m67396d() {
            this.f107634b++;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C18973a)) {
                return false;
            }
            C18973a c18973a = (C18973a) obj;
            if (this.f107633a.getClass() != c18973a.f107633a.getClass() || this.f107634b != c18973a.f107634b) {
                return false;
            }
            Object obj2 = this.f107633a;
            return obj2 instanceof StringBuilder ? obj2.toString().equals(c18973a.f107633a.toString()) : obj2 instanceof Number ? obj2.equals(c18973a.f107633a) : obj2 == c18973a.f107633a;
        }

        public int hashCode() {
            return this.f107633a.hashCode();
        }

        public String toString() {
            return StringUtils.repeat(this.f107633a.toString(), this.f107634b);
        }

        public C18973a(Object obj, int i) {
            this.f107633a = obj;
            this.f107634b = i;
        }
    }
}
