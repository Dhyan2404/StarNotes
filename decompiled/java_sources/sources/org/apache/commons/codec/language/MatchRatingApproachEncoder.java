package org.apache.commons.codec.language;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

/* loaded from: classes9.dex */
public class MatchRatingApproachEncoder implements StringEncoder {

    /* renamed from: a */
    public static final String f104768a = " ";

    /* renamed from: b */
    public static final String f104769b = "";

    /* renamed from: c */
    public static final int f104770c = 1;

    /* renamed from: d */
    public static final int f104771d = 2;

    /* renamed from: e */
    public static final int f104772e = 3;

    /* renamed from: f */
    public static final int f104773f = 4;

    /* renamed from: g */
    public static final int f104774g = 5;

    /* renamed from: h */
    public static final int f104775h = 6;

    /* renamed from: i */
    public static final int f104776i = 7;

    /* renamed from: j */
    public static final int f104777j = 11;

    /* renamed from: k */
    public static final int f104778k = 12;

    /* renamed from: l */
    public static final String f104779l = "AaEeIiOoUuAaEeIiOoUuYyAaEeIiOoUuYyAaOoNnAaEeIiOoUuYyAaCcOoUu";

    /* renamed from: m */
    public static final String f104780m = "ÀàÈèÌìÒòÙùÁáÉéÍíÓóÚúÝýÂâÊêÎîÔôÛûŶŷÃãÕõÑñÄäËëÏïÖöÜüŸÿÅåÇçŐőŰű";

    /* renamed from: n */
    public static final String[] f104781n = {"BB", "CC", "DD", "FF", "GG", "HH", "JJ", "KK", "LL", "MM", "NN", "PP", "QQ", "RR", "SS", "TT", "VV", "WW", "XX", "YY", PhoneNumberUtil.f36450n};

    /* renamed from: a */
    public String m65804a(String str) {
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        String[] strArr = {"\\-", "[&]", "\\'", "\\.", "[\\,]"};
        for (int i = 0; i < 5; i++) {
            upperCase = upperCase.replaceAll(strArr[i], "");
        }
        return m65809f(upperCase).replaceAll("\\s+", "");
    }

    /* renamed from: b */
    public String m65805b(String str) {
        int length = str.length();
        if (length <= 6) {
            return str;
        }
        return str.substring(0, 3) + str.substring(length - 3, length);
    }

    /* renamed from: c */
    public int m65806c(int i) {
        if (i <= 4) {
            return 5;
        }
        if (i <= 7) {
            return 4;
        }
        if (i <= 11) {
            return 3;
        }
        return i == 12 ? 2 : 1;
    }

    /* renamed from: d */
    public boolean m65807d(String str) {
        return str.equalsIgnoreCase("E") || str.equalsIgnoreCase("A") || str.equalsIgnoreCase(BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION) || str.equalsIgnoreCase("I") || str.equalsIgnoreCase("U");
    }

    /* renamed from: e */
    public int m65808e(String str, String str2) {
        char[] charArray = str.toCharArray();
        char[] charArray2 = str2.toCharArray();
        int length = str.length() - 1;
        int length2 = str2.length() - 1;
        int i = 0;
        while (i < charArray.length && i <= length2) {
            int i2 = i + 1;
            String substring = str.substring(i, i2);
            int i3 = length - i;
            String substring2 = str.substring(i3, i3 + 1);
            String substring3 = str2.substring(i, i2);
            int i4 = length2 - i;
            String substring4 = str2.substring(i4, i4 + 1);
            if (substring.equals(substring3)) {
                charArray[i] = ' ';
                charArray2[i] = ' ';
            }
            if (substring2.equals(substring4)) {
                charArray[i3] = ' ';
                charArray2[i4] = ' ';
            }
            i = i2;
        }
        String replaceAll = new String(charArray).replaceAll("\\s+", "");
        String replaceAll2 = new String(charArray2).replaceAll("\\s+", "");
        return replaceAll.length() > replaceAll2.length() ? Math.abs(6 - replaceAll.length()) : Math.abs(6 - replaceAll2.length());
    }

    @Override // org.apache.commons.codec.Encoder
    public final Object encode(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return encode((String) obj);
        }
        throw new EncoderException("Parameter supplied to Match Rating Approach encoder is not of type java.lang.String");
    }

    /* renamed from: f */
    public String m65809f(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            int indexOf = f104780m.indexOf(charAt);
            if (indexOf > -1) {
                sb.append(f104779l.charAt(indexOf));
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    /* renamed from: g */
    public String m65810g(String str) {
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        for (String str2 : f104781n) {
            if (upperCase.contains(str2)) {
                upperCase = upperCase.replace(str2, str2.substring(0, 1));
            }
        }
        return upperCase;
    }

    /* renamed from: h */
    public String m65811h(String str) {
        String substring = str.substring(0, 1);
        String replaceAll = str.replaceAll("A", "").replaceAll("E", "").replaceAll("I", "").replaceAll(BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "").replaceAll("U", "").replaceAll("\\s{2,}\\b", " ");
        if (!m65807d(substring)) {
            return replaceAll;
        }
        return substring + replaceAll;
    }

    public boolean isEncodeEquals(String str, String str2) {
        if (str == null || "".equalsIgnoreCase(str) || " ".equalsIgnoreCase(str) || str2 == null || "".equalsIgnoreCase(str2) || " ".equalsIgnoreCase(str2) || str.length() == 1 || str2.length() == 1) {
            return false;
        }
        if (str.equalsIgnoreCase(str2)) {
            return true;
        }
        String m65804a = m65804a(str);
        String m65804a2 = m65804a(str2);
        String m65811h = m65811h(m65804a);
        String m65811h2 = m65811h(m65804a2);
        String m65810g = m65810g(m65811h);
        String m65810g2 = m65810g(m65811h2);
        String m65805b = m65805b(m65810g);
        String m65805b2 = m65805b(m65810g2);
        if (Math.abs(m65805b.length() - m65805b2.length()) >= 3) {
            return false;
        }
        return m65808e(m65805b, m65805b2) >= m65806c(Math.abs(m65805b.length() + m65805b2.length()));
    }

    @Override // org.apache.commons.codec.StringEncoder
    public final String encode(String str) {
        return (str == null || "".equalsIgnoreCase(str) || " ".equalsIgnoreCase(str) || str.length() == 1) ? "" : m65805b(m65810g(m65811h(m65804a(str))));
    }
}
