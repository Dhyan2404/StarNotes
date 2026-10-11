package com.google.zxing.oned;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes4.dex */
public final class CodaBarWriter extends OneDimensionalCodeWriter {

    /* renamed from: a */
    public static final char[] f38534a;

    /* renamed from: b */
    public static final char[] f38535b = {'T', 'N', '*', 'E'};

    /* renamed from: c */
    public static final char[] f38536c = {'/', ':', PhoneNumberUtil.f36455s, '.'};

    /* renamed from: d */
    public static final char f38537d;

    static {
        char[] cArr = {'A', 'B', 'C', 'D'};
        f38534a = cArr;
        f38537d = cArr[0];
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int i;
        if (str.length() < 2) {
            StringBuilder sb = new StringBuilder();
            char c = f38537d;
            sb.append(c);
            sb.append(str);
            sb.append(c);
            str = sb.toString();
        } else {
            char upperCase = Character.toUpperCase(str.charAt(0));
            char upperCase2 = Character.toUpperCase(str.charAt(str.length() - 1));
            char[] cArr = f38534a;
            boolean m30606b = CodaBarReader.m30606b(cArr, upperCase);
            boolean m30606b2 = CodaBarReader.m30606b(cArr, upperCase2);
            char[] cArr2 = f38535b;
            boolean m30606b3 = CodaBarReader.m30606b(cArr2, upperCase);
            boolean m30606b4 = CodaBarReader.m30606b(cArr2, upperCase2);
            if (m30606b) {
                if (!m30606b2) {
                    throw new IllegalArgumentException("Invalid start/end guards: " + str);
                }
            } else if (!m30606b3) {
                if (m30606b2 || m30606b4) {
                    throw new IllegalArgumentException("Invalid start/end guards: " + str);
                }
                StringBuilder sb2 = new StringBuilder();
                char c2 = f38537d;
                sb2.append(c2);
                sb2.append(str);
                sb2.append(c2);
                str = sb2.toString();
            } else if (!m30606b4) {
                throw new IllegalArgumentException("Invalid start/end guards: " + str);
            }
        }
        int i2 = 20;
        for (int i3 = 1; i3 < str.length() - 1; i3++) {
            if (Character.isDigit(str.charAt(i3)) || str.charAt(i3) == '-' || str.charAt(i3) == '$') {
                i2 += 9;
            } else {
                if (!CodaBarReader.m30606b(f38536c, str.charAt(i3))) {
                    throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i3) + Chars.QUOTE);
                }
                i2 += 10;
            }
        }
        boolean[] zArr = new boolean[i2 + (str.length() - 1)];
        int i4 = 0;
        for (int i5 = 0; i5 < str.length(); i5++) {
            char upperCase3 = Character.toUpperCase(str.charAt(i5));
            if (i5 == 0 || i5 == str.length() - 1) {
                if (upperCase3 == '*') {
                    upperCase3 = 'C';
                } else if (upperCase3 == 'E') {
                    upperCase3 = 'D';
                } else if (upperCase3 == 'N') {
                    upperCase3 = 'B';
                } else if (upperCase3 == 'T') {
                    upperCase3 = 'A';
                }
            }
            int i6 = 0;
            while (true) {
                char[] cArr3 = CodaBarReader.f38527g;
                if (i6 >= cArr3.length) {
                    i = 0;
                    break;
                }
                if (upperCase3 == cArr3[i6]) {
                    i = CodaBarReader.f38528h[i6];
                    break;
                }
                i6++;
            }
            int i7 = 0;
            int i8 = 0;
            boolean z = true;
            while (i7 < 7) {
                zArr[i4] = z;
                i4++;
                if (((i >> (6 - i7)) & 1) == 0 || i8 == 1) {
                    z = !z;
                    i7++;
                    i8 = 0;
                } else {
                    i8++;
                }
            }
            if (i5 < str.length() - 1) {
                zArr[i4] = false;
                i4++;
            }
        }
        return zArr;
    }
}
