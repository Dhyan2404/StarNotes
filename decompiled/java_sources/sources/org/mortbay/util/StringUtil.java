package org.mortbay.util;

import com.google.common.base.Ascii;
import com.google.common.xml.XmlEscapers;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.zxing.common.StringUtils;
import com.sunia.HTREnginev2.rve;
import java.io.UnsupportedEncodingException;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.logging.log4j.util.Chars;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes13.dex */
public class StringUtil {
    public static final String CRLF = "\r\n";
    public static final String __ISO_8859_1;
    public static final String __LINE_SEPARATOR = System.getProperty("line.separator", "\n");
    public static final String __UTF16 = "UTF-16";
    public static final String __UTF8 = "UTF-8";
    public static final String __UTF8Alt = "UTF8";

    /* renamed from: a */
    public static char[] f115366a;

    static {
        String str = "ISO-8859-1";
        String property = System.getProperty("ISO_8859_1");
        if (property == null) {
            try {
                new String(new byte[]{20}, "ISO-8859-1");
            } catch (UnsupportedEncodingException unused) {
                str = StringUtils.f38416d;
            }
        } else {
            str = property;
        }
        __ISO_8859_1 = str;
        f115366a = new char[]{0, 1, 2, 3, 4, 5, 6, 7, '\b', '\t', '\n', 11, '\f', '\r', 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, rve.f83545n, rve.f83546o, rve.f83547p, XmlEscapers.f35498b, ' ', PublicSuffixDatabase.f103895g, '\"', '#', '$', '%', '&', Chars.QUOTE, '(', ')', '*', PhoneNumberUtil.f36455s, ',', '-', '.', '/', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ':', ';', '<', '=', '>', '?', '@', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '[', '\\', ']', '^', NameUtil.USCORE, '`', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '{', '|', '}', '~', Ascii.MAX};
    }

    public static void append(StringBuffer stringBuffer, String str, int i, int i2) {
        synchronized (stringBuffer) {
            int i3 = i2 + i;
            while (i < i3) {
                if (i >= str.length()) {
                    break;
                }
                stringBuffer.append(str.charAt(i));
                i++;
            }
        }
    }

    public static void append2digits(StringBuffer stringBuffer, int i) {
        if (i < 100) {
            stringBuffer.append((char) ((i / 10) + 48));
            stringBuffer.append((char) ((i % 10) + 48));
        }
    }

    public static String asciiToLowerCase(String str) {
        int i;
        char[] cArr;
        char c;
        int length = str.length();
        while (true) {
            i = length - 1;
            if (length <= 0) {
                cArr = null;
                break;
            }
            char charAt = str.charAt(i);
            if (charAt <= 127 && charAt != (c = f115366a[charAt])) {
                cArr = str.toCharArray();
                cArr[i] = c;
                break;
            }
            length = i;
        }
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                break;
            }
            char c2 = cArr[i2];
            if (c2 <= 127) {
                cArr[i2] = f115366a[c2];
            }
            i = i2;
        }
        return cArr == null ? str : new String(cArr);
    }

    public static boolean endsWithIgnoreCase(String str, String str2) {
        int length;
        if (str2 == null) {
            return true;
        }
        if (str == null || (r2 = str.length()) < (length = str2.length())) {
            return false;
        }
        while (true) {
            int i = length - 1;
            if (length <= 0) {
                return true;
            }
            int length2 = length2 - 1;
            char charAt = str.charAt(length2);
            char charAt2 = str2.charAt(i);
            if (charAt != charAt2) {
                if (charAt <= 127) {
                    charAt = f115366a[charAt];
                }
                if (charAt2 <= 127) {
                    charAt2 = f115366a[charAt2];
                }
                if (charAt != charAt2) {
                    return false;
                }
            }
            length = i;
        }
    }

    public static boolean equals(String str, char[] cArr, int i, int i2) {
        if (str.length() != i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (cArr[i + i3] != str.charAt(i3)) {
                return false;
            }
        }
        return true;
    }

    public static int indexFrom(String str, String str2) {
        for (int i = 0; i < str.length(); i++) {
            if (str2.indexOf(str.charAt(i)) >= 0) {
                return i;
            }
        }
        return -1;
    }

    public static boolean isUTF8(String str) {
        return str == "UTF-8" || "UTF-8".equalsIgnoreCase(str) || "UTF8".equalsIgnoreCase(str);
    }

    public static String nonNull(String str) {
        return str == null ? "" : str;
    }

    public static String printable(String str) {
        if (str == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (!Character.isISOControl(charAt)) {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    public static String replace(String str, String str2, String str3) {
        String stringBuffer;
        int i = 0;
        int indexOf = str.indexOf(str2, 0);
        if (indexOf == -1) {
            return str;
        }
        StringBuffer stringBuffer2 = new StringBuffer(str.length() + str3.length());
        synchronized (stringBuffer2) {
            do {
                stringBuffer2.append(str.substring(i, indexOf));
                stringBuffer2.append(str3);
                i = str2.length() + indexOf;
                indexOf = str.indexOf(str2, i);
            } while (indexOf != -1);
            if (i < str.length()) {
                stringBuffer2.append(str.substring(i, str.length()));
            }
            stringBuffer = stringBuffer2.toString();
        }
        return stringBuffer;
    }

    public static boolean startsWithIgnoreCase(String str, String str2) {
        if (str2 == null) {
            return true;
        }
        if (str == null || str.length() < str2.length()) {
            return false;
        }
        for (int i = 0; i < str2.length(); i++) {
            char charAt = str.charAt(i);
            char charAt2 = str2.charAt(i);
            if (charAt != charAt2) {
                if (charAt <= 127) {
                    charAt = f115366a[charAt];
                }
                if (charAt2 <= 127) {
                    charAt2 = f115366a[charAt2];
                }
                if (charAt != charAt2) {
                    return false;
                }
            }
        }
        return true;
    }

    public static String toString(byte[] bArr, int i, int i2, String str) {
        if (str == null || isUTF8(str)) {
            return toUTF8String(bArr, i, i2);
        }
        try {
            return new String(bArr, i, i2, str);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String toUTF8String(byte[] bArr, int i, int i2) {
        try {
            if (i2 >= 32) {
                return new String(bArr, i, i2, "UTF-8");
            }
            Utf8StringBuffer utf8StringBuffer = new Utf8StringBuffer(i2);
            utf8StringBuffer.append(bArr, i, i2);
            return utf8StringBuffer.toString();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String unquote(String str) {
        return QuotedStringTokenizer.unquote(str);
    }

    public static void append(StringBuffer stringBuffer, byte b, int i) {
        int i2 = b & 255;
        int i3 = ((i2 / i) % i) + 48;
        if (i3 > 57) {
            i3 = ((i3 - 48) - 10) + 97;
        }
        stringBuffer.append((char) i3);
        int i4 = (i2 % i) + 48;
        if (i4 > 57) {
            i4 = ((i4 - 48) - 10) + 97;
        }
        stringBuffer.append((char) i4);
    }
}
